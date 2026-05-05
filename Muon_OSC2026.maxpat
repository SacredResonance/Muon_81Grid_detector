{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 2,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 77.0, 258.0, 1120.0, 820.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1062.0, 1105.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1011.0, 1084.0, 32.0, 22.0 ],
                    "text": "+ 20"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 712.0, 1047.0, 130.0, 22.0 ],
                    "text": "route /totalactivity"
                }
            },
            {
                "box": {
                    "id": "clip-small",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 712.0, 1087.0, 90.0, 22.0 ],
                    "text": "clip 0. 0.06"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "raw-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 712.0, 1127.0, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "divide",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 712.0, 1187.0, 60.0, 22.0 ],
                    "text": "/ 0.06"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "norm-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 792.0, 1187.0, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "sqrt",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 712.0, 1242.0, 45.0, 22.0 ],
                    "text": "sqrt"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "curve-num",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 792.0, 1242.0, 90.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "c1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 897.0, 1187.0, 520.0, 20.0 ],
                    "text": "Sensitivity: 0.06 = full energy. Change both clip and / value together."
                }
            },
            {
                "box": {
                    "id": "scale255",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 712.0, 1302.0, 145.0, 22.0 ],
                    "text": "scale 0. 1. 20 255"
                }
            },
            {
                "box": {
                    "id": "clip255",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 877.0, 1302.0, 80.0, 22.0 ],
                    "text": "clip 0 255"
                }
            },
            {
                "box": {
                    "id": "num255",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 977.0, 1302.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "c255",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1062.0, 1305.0, 260.0, 20.0 ],
                    "text": "Internal wide control range: 20–255"
                }
            },
            {
                "box": {
                    "id": "div2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 712.0, 1357.0, 45.0, 22.0 ],
                    "text": "/ 2"
                }
            },
            {
                "box": {
                    "id": "clip127",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 777.0, 1357.0, 80.0, 22.0 ],
                    "text": "clip 0 127"
                }
            },
            {
                "box": {
                    "id": "midi-target",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 877.0, 1357.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "c-midi",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 962.0, 1360.0, 300.0, 20.0 ],
                    "text": "Converted to valid MIDI CC range 0–127"
                }
            },
            {
                "box": {
                    "id": "smooth-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712.0, 1417.0, 120.0, 20.0 ],
                    "text": "Glide time ms"
                }
            },
            {
                "box": {
                    "id": "smooth-num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 712.0, 1442.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "smooth-msg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 807.0, 1442.0, 60.0, 22.0 ],
                    "text": "7000"
                }
            },
            {
                "box": {
                    "id": "pack",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 712.0, 1497.0, 105.0, 22.0 ],
                    "text": "pack 0 7000"
                }
            },
            {
                "box": {
                    "id": "line",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 847.0, 1497.0, 60.0, 22.0 ],
                    "text": "line 0."
                }
            },
            {
                "box": {
                    "id": "int",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 927.0, 1432.0, 35.0, 22.0 ],
                    "text": "i"
                }
            },
            {
                "box": {
                    "id": "out-num",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 997.0, 1497.0, 70.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "cc-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 712.0, 1562.0, 310.0, 20.0 ],
                    "text": "CC number: 7 = volume, 11 = expression"
                }
            },
            {
                "box": {
                    "id": "ccnum",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 712.0, 1587.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "ccmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 782.0, 1587.0, 35.0, 22.0 ],
                    "text": "7"
                }
            },
            {
                "box": {
                    "id": "chan-c",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 862.0, 1562.0, 120.0, 20.0 ],
                    "text": "MIDI channel"
                }
            },
            {
                "box": {
                    "id": "chan",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 862.0, 1587.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "chanmsg",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 932.0, 1587.0, 35.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "ctlout",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 712.0, 1637.0, 60.0, 22.0 ],
                    "text": "ctlout"
                }
            },
            {
                "box": {
                    "id": "obj-122",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1302.0, 1417.0, 70.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "tinit",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 1302.0, 1452.0, 70.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1152.0, 1677.0, 520.0, 20.0 ],
                    "text": "If you still want more movement: use clip 0. 0.04 and / 0.04. If too much: use 0.08."
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-115",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 629.0, 982.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 674.0, 987.0, 360.0, 20.0 ],
                    "text": "Connect JS outlet 4 here: /totalactivity value"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "in",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 644.0, 815.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "c-in",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 689.0, 820.0, 360.0, 20.0 ],
                    "text": "Connect JS outlet 4 here: /totalactivity value"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 980.5, 551.0, 95.0, 22.0 ],
                    "text": "print totalactivity"
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 977.0, 487.0, 102.0, 22.0 ],
                    "text": "route /totalactivity"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 406.0, 735.0, 71.0, 22.0 ],
                    "text": "total energy"
                }
            },
            {
                "box": {
                    "id": "route-total",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 1308.0, 250.0, 130.0, 22.0 ],
                    "text": "route /totalactivity"
                }
            },
            {
                "box": {
                    "id": "clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1308.0, 290.0, 75.0, 22.0 ],
                    "text": "clip 0. 1."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "value",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1308.0, 330.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "smooth-label",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1536.0, 201.0, 160.0, 20.0 ],
                    "text": "Smoothing time in ms"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "smooth",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1588.0, 235.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "smooth-init",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1678.0, 235.0, 50.0, 22.0 ],
                    "text": "100."
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1678.0, 200.0, 70.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "c-master",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1308.0, 390.0, 520.0, 20.0 ],
                    "text": "1) Master intensity: keeps a minimum level, then opens with total activity"
                }
            },
            {
                "box": {
                    "id": "c-reverb",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1308.0, 495.0, 460.0, 20.0 ],
                    "text": "2) Reverb send: more activity = more wet/reverb amount"
                }
            },
            {
                "box": {
                    "id": "c-shimmer",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1308.0, 600.0, 460.0, 20.0 ],
                    "text": "3) Shimmer amount: more activity = more high sparkling layer"
                }
            },
            {
                "box": {
                    "id": "scale-master",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1308.0, 420.0, 130.0, 22.0 ],
                    "text": "scale 0. 1. 0.25 1."
                }
            },
            {
                "box": {
                    "id": "pack-master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1468.0, 420.0, 100.0, 22.0 ],
                    "text": "pack 0. 100."
                }
            },
            {
                "box": {
                    "id": "line-master",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1598.0, 420.0, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "num-master",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1678.0, 420.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "send-master",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1780.5, 450.0, 130.0, 22.0 ],
                    "text": "s master_intensity"
                }
            },
            {
                "box": {
                    "id": "scale-reverb",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1308.0, 525.0, 145.0, 22.0 ],
                    "text": "scale 0. 1. 0.05 0.85"
                }
            },
            {
                "box": {
                    "id": "pack-reverb",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1468.0, 525.0, 100.0, 22.0 ],
                    "text": "pack 0. 100."
                }
            },
            {
                "box": {
                    "id": "line-reverb",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1598.0, 525.0, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "num-reverb",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1678.0, 525.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "send-reverb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1788.0, 565.0, 115.0, 22.0 ],
                    "text": "s reverb_send"
                }
            },
            {
                "box": {
                    "id": "scale-shimmer",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1308.0, 630.0, 130.0, 22.0 ],
                    "text": "scale 0. 1. 0. 1."
                }
            },
            {
                "box": {
                    "id": "pack-shimmer",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1468.0, 630.0, 100.0, 22.0 ],
                    "text": "pack 0. 100."
                }
            },
            {
                "box": {
                    "id": "line-shimmer",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 1598.0, 630.0, 50.0, 22.0 ],
                    "text": "line"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "num-shimmer",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1678.0, 630.0, 80.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "send-shimmer",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1784.0, 675.0, 130.0, 22.0 ],
                    "text": "s shimmer_amount"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.0, 932.0, 80.0, 22.0 ],
                    "text": "speedlim 200"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 419.0, 1329.0, 37.0, 22.0 ],
                    "text": "bang"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 510.0, 1359.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 510.0, 1329.0, 75.0, 22.0 ],
                    "text": "random 128"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 414.0, 1252.0, 34.0, 22.0 ],
                    "text": "+ 12"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 346.0, 1084.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 259.31518600000004, 104.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 376.0, 1143.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 401.0, 1183.0, 44.0, 22.0 ],
                    "text": "gate 2"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 333.0, 890.0, 98.0, 98.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 259.31518600000004, 143.571442, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 469.0, 1260.0, 34.0, 22.0 ],
                    "text": "+ 36"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 469.0, 1228.0, 38.0, 22.0 ],
                    "text": "% 40"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 469.0, 1199.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 499.0, 1117.0, 29.5, 22.0 ],
                    "text": "+ 1"
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 456.0, 1117.0, 29.5, 22.0 ],
                    "text": "* 9"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 456.0, 1084.0, 69.0, 22.0 ],
                    "text": "unpack 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 469.0, 1153.0, 29.5, 22.0 ],
                    "text": "+"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 346.0, 1271.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 346.0, 1299.0, 34.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 0,
                    "patching_rect": [ 412.0, 1449.0, 51.0, 22.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 167.25, 67.57144199999999, 51.0, 22.0 ],
                    "text": "noteout"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outlettype": [ "float", "float", "float" ],
                    "patching_rect": [ 363.0, 1382.0, 113.0, 22.0 ],
                    "text": "makenote 64 250 1"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 406.0, 630.0, 96.0, 22.0 ],
                    "text": "quadrent energy"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 74.0, 547.0, 150.0, 60.0 ],
                    "text": "0   = no activity / fully decayed\n0.5 = medium activity\n1   = maximum activity"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 844.0, 355.0, 96.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "8 0 0 34096"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 28.0, 695.0, 422.0, 74.0 ],
                    "text": "/totalactivity       → master intensity, reverb send, shimmer amount\n/quadrantactivity    → spatial zones / speaker zones / lighting zones\n/locationactivity    → grid visual particles\n/rowactivity         → pitch banks, filter banks, vertical movement\n/columnactivity      → rhythm, pan, horizontal movement"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 402.0, 685.0, 96.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "quadrent energy"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 427.0, 575.0, 81.0, 22.0 ],
                    "presentation_linecount": 2,
                    "text": "colum energy"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 441.0, 520.0, 68.0, 22.0 ],
                    "text": "row energy"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 780.0, 355.0, 50.0, 22.0 ],
                    "text": "8 6"
                }
            },
            {
                "box": {
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 25.0, 760.0, 20.0 ],
                    "text": "Muon receiver — fixed hit/state formatting for rayactivity_fixed_named.js"
                }
            },
            {
                "box": {
                    "id": "note",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 50.0, 860.0, 20.0 ],
                    "text": "Route strips the OSC address. We add 'hit' or 'state' before sending to JS. Do not send route state directly into JS."
                }
            },
            {
                "box": {
                    "id": "recv",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 90.0, 130.0, 22.0 ],
                    "text": "udpreceive 24024"
                }
            },
            {
                "box": {
                    "id": "b-recv",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 665.0, 89.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "route",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 520.0, 170.0, 433.0, 22.0 ],
                    "text": "route /hodoscope/scope1/hit /hodoscope/scope1/state /hodoscope/scope1/clear"
                }
            },
            {
                "box": {
                    "id": "route-comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 145.0, 480.0, 20.0 ],
                    "text": "If incoming data is already decoded into OSC-style messages, this route is correct."
                }
            },
            {
                "box": {
                    "id": "pre-hit",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 225.0, 80.0, 22.0 ],
                    "text": "prepend hit"
                }
            },
            {
                "box": {
                    "id": "pre-state",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 635.0, 225.0, 95.0, 22.0 ],
                    "text": "prepend state"
                }
            },
            {
                "box": {
                    "id": "clear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 760.0, 225.0, 50.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "js",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "", "", "", "", "" ],
                    "patching_rect": [ 520.0, 330.0, 190.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "rayactivity_fixed_named.js",
                        "parameter_enable": 0
                    },
                    "text": "js rayactivity_fixed_named.js"
                }
            },
            {
                "box": {
                    "id": "lb",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 260.0, 181.0, 70.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "trig",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 260.0, 216.0, 70.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "reset",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 225.0, 256.0, 50.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "one40",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 256.0, 35.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "one200",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 256.0, 35.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "id": "metro40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 300.0, 296.0, 75.0, 22.0 ],
                    "text": "metro 40"
                }
            },
            {
                "box": {
                    "id": "metro200",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 380.0, 296.0, 85.0, 22.0 ],
                    "text": "metro 200"
                }
            },
            {
                "box": {
                    "id": "update",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 300.0, 336.0, 60.0, 22.0 ],
                    "text": "update"
                }
            },
            {
                "box": {
                    "id": "output",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 380.0, 336.0, 60.0, 22.0 ],
                    "text": "output"
                }
            },
            {
                "box": {
                    "id": "test-comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 420.0, 440.0, 20.0 ],
                    "text": "Manual tests: these bypass UDP and prove the JS format works."
                }
            },
            {
                "box": {
                    "id": "testhit",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 40.0, 450.0, 65.0, 22.0 ],
                    "text": "hit 2 3"
                }
            },
            {
                "box": {
                    "id": "teststate",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 120.0, 450.0, 130.0, 22.0 ],
                    "text": "state 4 1 0 12345"
                }
            },
            {
                "box": {
                    "id": "testclear",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 270.0, 450.0, 50.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "id": "describe",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 450.0, 70.0, 22.0 ],
                    "text": "describe"
                }
            },
            {
                "box": {
                    "id": "route-test-comment",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 520.0, 420.0, 420.0, 20.0 ],
                    "text": "Route tests: these simulate what route should receive."
                }
            },
            {
                "box": {
                    "id": "m-row",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 520.0, 355.0, 22.0 ],
                    "text": "/rowactivity 0.99 0.9 0.7 0 0.82 0.84 0.91 0 0.97"
                }
            },
            {
                "box": {
                    "id": "m-col",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 575.0, 355.0, 22.0 ],
                    "text": "/columnactivity 0.91 0.95 0.55 0.87 0.94 0.91 0.97 0.68 0.74"
                }
            },
            {
                "box": {
                    "id": "m-loc",
                    "linecount": 3,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 525.5, 617.0, 469.0, 49.0 ],
                    "text": "/locationactivity 0 0 0 0 0 0 0 0 0 0.14 0 0 0 0 0.14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.11 0 0"
                }
            },
            {
                "box": {
                    "id": "m-quad",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 685.0, 474.0, 22.0 ],
                    "text": "/quadrantactivity 0.122222 0.427778 0 0 0 0 0.021111 0.034444 0.081111"
                }
            },
            {
                "box": {
                    "id": "m-total",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 520.0, 735.0, 474.0, 22.0 ],
                    "text": "/totalactivity 0"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "ccnum", 0 ],
                    "source": [ "ccmsg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ctlout", 1 ],
                    "source": [ "ccnum", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ctlout", 2 ],
                    "source": [ "chan", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "chan", 0 ],
                    "source": [ "chanmsg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "clear", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "value", 0 ],
                    "source": [ "clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "raw-num", 0 ],
                    "source": [ "clip-small", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "midi-target", 0 ],
                    "source": [ "clip127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "div2", 0 ],
                    "order": 1,
                    "source": [ "clip255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "num255", 0 ],
                    "order": 0,
                    "source": [ "clip255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "describe", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip127", 0 ],
                    "source": [ "div2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "norm-num", 0 ],
                    "order": 0,
                    "source": [ "divide", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sqrt", 0 ],
                    "order": 1,
                    "source": [ "divide", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-125", 0 ],
                    "order": 0,
                    "source": [ "int", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "out-num", 0 ],
                    "order": 1,
                    "source": [ "int", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m-col", 1 ],
                    "source": [ "js", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m-loc", 1 ],
                    "source": [ "js", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m-quad", 1 ],
                    "source": [ "js", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m-row", 1 ],
                    "source": [ "js", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "m-total", 1 ],
                    "order": 1,
                    "source": [ "js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "order": 2,
                    "source": [ "js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "order": 3,
                    "source": [ "js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route-total", 0 ],
                    "order": 0,
                    "source": [ "js", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "trig", 0 ],
                    "source": [ "lb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "int", 0 ],
                    "source": [ "line", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "num-master", 0 ],
                    "order": 1,
                    "source": [ "line-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-master", 0 ],
                    "order": 0,
                    "source": [ "line-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "num-reverb", 0 ],
                    "order": 1,
                    "source": [ "line-reverb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-reverb", 0 ],
                    "order": 0,
                    "source": [ "line-reverb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "num-shimmer", 0 ],
                    "order": 1,
                    "source": [ "line-shimmer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "send-shimmer", 0 ],
                    "order": 0,
                    "source": [ "line-shimmer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "output", 0 ],
                    "source": [ "metro200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "update", 0 ],
                    "source": [ "metro40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 0 ],
                    "source": [ "midi-target", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip-small", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "tinit", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ctlout", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 1 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-18", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-20", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 1 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 1 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-36", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 0 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-31", 1 ],
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 1 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth-init", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 2 ],
                    "source": [ "obj-9", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 1 ],
                    "source": [ "obj-9", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro200", 0 ],
                    "source": [ "one200", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "metro40", 0 ],
                    "source": [ "one40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "output", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line", 0 ],
                    "source": [ "pack", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line-master", 0 ],
                    "source": [ "pack-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line-reverb", 0 ],
                    "source": [ "pack-reverb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "line-shimmer", 0 ],
                    "source": [ "pack-shimmer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "pre-hit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "pre-state", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "divide", 0 ],
                    "source": [ "raw-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "b-recv", 0 ],
                    "order": 0,
                    "source": [ "recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "route", 0 ],
                    "order": 1,
                    "source": [ "recv", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "reset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clear", 0 ],
                    "source": [ "route", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 1 ],
                    "order": 0,
                    "source": [ "route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 1 ],
                    "order": 0,
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "order": 2,
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre-hit", 0 ],
                    "order": 1,
                    "source": [ "route", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pre-state", 0 ],
                    "order": 1,
                    "source": [ "route", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip", 0 ],
                    "source": [ "route-total", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-master", 0 ],
                    "source": [ "scale-master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-reverb", 0 ],
                    "source": [ "scale-reverb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-shimmer", 0 ],
                    "source": [ "scale-shimmer", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip255", 0 ],
                    "source": [ "scale255", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-master", 1 ],
                    "order": 2,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-reverb", 1 ],
                    "order": 1,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack-shimmer", 1 ],
                    "order": 0,
                    "source": [ "smooth", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth", 0 ],
                    "source": [ "smooth-init", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth-num", 0 ],
                    "source": [ "smooth-msg", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "pack", 1 ],
                    "source": [ "smooth-num", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "curve-num", 0 ],
                    "order": 0,
                    "source": [ "sqrt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "scale255", 0 ],
                    "order": 1,
                    "source": [ "sqrt", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "testclear", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "testhit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "teststate", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "ccmsg", 0 ],
                    "source": [ "tinit", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "chanmsg", 0 ],
                    "source": [ "tinit", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "smooth-msg", 0 ],
                    "source": [ "tinit", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "one200", 0 ],
                    "source": [ "trig", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "one40", 0 ],
                    "source": [ "trig", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "reset", 0 ],
                    "source": [ "trig", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "js", 0 ],
                    "source": [ "update", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "scale-master", 0 ],
                    "order": 2,
                    "source": [ "value", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "scale-reverb", 0 ],
                    "order": 1,
                    "source": [ "value", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "scale-shimmer", 0 ],
                    "order": 0,
                    "source": [ "value", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}