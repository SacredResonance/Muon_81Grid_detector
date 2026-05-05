/*
rayactivity_fixed_named.js
Works with direct OSC path messages from CNMAT OpenSoundControl:
  /hodoscope/scope1/hit row col
  /hodoscope/scope1/state num rowState columnState timestamp
  /hodoscope/scope1/clear
Also works with:
  hit row col
  state num rowState columnState timestamp
  clear
*/
autowatch = 1;
inlets = 1;
outlets = 5;

var N = 9;
var NUM_LOCATIONS = 81;
var locationState = [];
var rowActivity = [];
var columnActivity = [];
var locationActivity = [];
var quadrantActivity = [];
var totalActivity = 0.0;

var columnDeltaActivityUponHit = 0.5;
var rowDeltaActivityUponHit = 0.5;
var totalDeltaActivityUponHit = 1.0 / 81.0;
var quadrantDeltaActivityUponHit = 1.0 / 9.0;
var totalActivityDecay = 1.0 / 100.0;
var rowcolActivityDecay = 1.0 / 100.0;
var quadrantActivityDecay = 1.0 / 100.0;
var locationActivityDecay = 1.0 / 50.0;
var locationActivityAttackRatio = 7.5;

function loadbang(){ reset(); describe(); }
function reset(){
    locationState = [];
    rowActivity = [];
    columnActivity = [];
    locationActivity = [];
    quadrantActivity = [];
    for (var i=0; i<NUM_LOCATIONS; i++){ locationState[i]=false; locationActivity[i]=0.0; }
    for (var r=0; r<N; r++){ rowActivity[r]=0.0; columnActivity[r]=0.0; quadrantActivity[r]=0.0; }
    totalActivity = 0.0;
    post("rayactivity_fixed_named.js reset: ready for direct OSC or routed messages\n");
}
reset();

function describe(){
    post("rayactivity outlet 0=/rowactivity, 1=/columnactivity, 2=/locationactivity, 3=/quadrantactivity, 4=/totalactivity\n");
}

function hit(row, col){
    row = Math.floor(safeNumber(row));
    col = Math.floor(safeNumber(col));
    if (row < 0 || row >= N || col < 0 || col >= N){
        post("Invalid hit row/col: " + row + " " + col + "\n");
        return;
    }
    var index = row * N + col;
    locationState[index] = true;
    rowActivity[row] = clamp(rowActivity[row] + rowDeltaActivityUponHit, 0, 1);
    columnActivity[col] = clamp(columnActivity[col] + columnDeltaActivityUponHit, 0, 1);
}

function state(num, rowOn, columnOn, timestamp){
    num = Math.floor(safeNumber(num));
    rowOn = safeNumber(rowOn);
    columnOn = safeNumber(columnOn);
    if (num < 0 || num >= N){
        post("Invalid state number: " + num + "\n");
        return;
    }
    if (rowOn != 0) rowActivity[num] = clamp(rowActivity[num] + rowDeltaActivityUponHit, 0, 1);
    if (columnOn != 0) columnActivity[num] = clamp(columnActivity[num] + columnDeltaActivityUponHit, 0, 1);
}

function clear(){
    for (var i=0; i<NUM_LOCATIONS; i++) locationState[i]=false;
}

function list(){ parseList(arrayfromargs(arguments)); }
function anything(){ parseList(arrayfromargs(messagename, arguments)); }

function parseList(a){
    if (!a || a.length === 0) return;
    var cmd = String(a[0]);

    if (cmd === "hit" || cmd === "/hodoscope/scope1/hit"){
        hit(a[1], a[2]);
    } else if (cmd === "state" || cmd === "/hodoscope/scope1/state"){
        state(a[1], a[2], a[3], a[4]);
    } else if (cmd === "clear" || cmd === "/hodoscope/scope1/clear"){
        clear();
    } else if (cmd === "reset"){
        reset();
    } else if (cmd === "update"){
        update();
    } else if (cmd === "output"){
        output();
    } else if (cmd === "describe"){
        describe();
    } else {
        post("rayactivity ignored: " + a.join(" ") + "\n");
    }
}

function update(){
    ensureArrays();
    var delta = 0.0;
    for (var i=0; i<NUM_LOCATIONS; i++){
        if (locationState[i]) delta += totalDeltaActivityUponHit;
    }
    totalActivity = clamp(totalActivity + delta, 0, 1);

    addQuadrantActivity(0,0,0); addQuadrantActivity(1,0,3); addQuadrantActivity(2,0,6);
    addQuadrantActivity(3,3,0); addQuadrantActivity(4,3,3); addQuadrantActivity(5,3,6);
    addQuadrantActivity(6,6,0); addQuadrantActivity(7,6,3); addQuadrantActivity(8,6,6);

    totalActivity = clamp(totalActivity - totalActivityDecay, 0, 1);
    for (var j=0; j<NUM_LOCATIONS; j++){
        if (locationState[j]) locationActivity[j] = clamp(locationActivity[j] + locationActivityDecay * locationActivityAttackRatio, 0, 1);
        else locationActivity[j] = clamp(locationActivity[j] - locationActivityDecay, 0, 1);
    }
    for (var r=0; r<N; r++){
        rowActivity[r] = clamp(rowActivity[r] - rowcolActivityDecay, 0, 1);
        columnActivity[r] = clamp(columnActivity[r] - rowcolActivityDecay, 0, 1);
        quadrantActivity[r] = clamp(quadrantActivity[r] - quadrantActivityDecay, 0, 1);
    }
}

function addQuadrantActivity(qIndex,rowStart,colStart){
    var delta = 0.0;
    for (var r=0; r<3; r++){
        for (var c=0; c<3; c++){
            var idx = (rowStart+r) * N + (colStart+c);
            if (locationState[idx]) delta += quadrantDeltaActivityUponHit;
        }
    }
    quadrantActivity[qIndex] = clamp(quadrantActivity[qIndex] + delta, 0, 1);
}

function output(){
    ensureArrays();
    outlet(0, ["/rowactivity"].concat(safeArray(rowActivity, N)));
    outlet(1, ["/columnactivity"].concat(safeArray(columnActivity, N)));
    outlet(2, ["/locationactivity"].concat(safeArray(locationActivity, NUM_LOCATIONS)));
    outlet(3, ["/quadrantactivity"].concat(safeArray(quadrantActivity, N)));
    outlet(4, ["/totalactivity", safeNumber(totalActivity)]);
}

function ensureArrays(){
    if (rowActivity.length !== N || columnActivity.length !== N || locationActivity.length !== NUM_LOCATIONS || quadrantActivity.length !== N) reset();
}
function safeArray(arr, len){ var out=[]; for (var i=0; i<len; i++) out[i]=safeNumber(arr[i]); return out; }
function safeNumber(v){ v=Number(v); if (isNaN(v) || !isFinite(v)) return 0.0; return v; }
function clamp(v,lo,hi){ v=safeNumber(v); return Math.max(lo, Math.min(hi, v)); }
