{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 211.0, 202.0, 1205.0, 519.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-14",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 57.0, 462.0, 313.0, 34.0 ],
                    "text": "Outputs a list of integers, both postive and negative unless the @positive_only flag is raised (1)."
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 264.0, 434.0, 88.0, 22.0 ],
                    "text": "positive_only 1"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 431.0, 448.0, 44.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 264.0, 399.0, 88.0, 22.0 ],
                    "text": "positive_only 0"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 264.0, 357.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 431.0, 421.0, 109.0, 22.0 ],
                    "text": "route positive_only"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 396.0, 387.0, 54.0, 22.0 ],
                    "text": "sel done"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 343.0, 357.0, 72.0, 22.0 ],
                    "text": "patcherargs"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 13.0, 150.0, 20.0 ],
                    "text": "getPartition"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 864.0, 13.0, 150.0, 20.0 ],
                    "text": "getOffsets"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 437.0, 13.0, 150.0, 20.0 ],
                    "text": "getDist"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 437.0, 41.0, 421.0, 144.0 ],
                    "text": "Get a distribution of offset values (#1) where consecutive values are within a minGap and maxGap range (#2 and #3) from each other. The values are unique every time and can are both positive and negative, in miliseconds, deviating from a starting point at zero.\n\n Arguments:\n#1 - parts - (int) amount of offset values\n#2 - minGap - (ms) minimum gap between consecutive offset values\n#3 - maxGap - (ms) maximim gap between consecutive offset values\n#4 - offsetCeiling- (ms) the max amount the offset values can deviate from 0."
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "linecount": 17,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 41.0, 409.0, 241.0 ],
                    "text": "Get a restricted partition of offset values where the sum of all the values always is equal a specified offset sum. The values are unique every time and are both positive and negative, in miliseconds deviating from a starting point at zero.\n\nIt's also possible to specify the minimum and maximum variance between the offset values, i.e the gap between the numbers, that make up the result. F.ex with the message \"getPartition 4 10 150 200\", you get 4 invididual offset values that together add up to 200ms, whose consecutive values are a minimum of 10ms apart and a of maximum 150ms apart.\n\n Arguments:\n#1 - parts - (int) amount of offset values\n#2 - minGap - (ms) minimum gap between consecutive offset values\n#3 - maxGap - (ms) maximim gap between consecutive offset values\n#4 - offsetSum - (ms) the sum total of offsets, a.k.a the number being partitioned."
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "linecount": 9,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 864.0, 41.0, 321.0, 131.0 ],
                    "text": "Get a list of random offset values (#1) where each value is within a specified range (#2 and #3). The values are unique every time and can are both positive and negative, in miliseconds, deviating from a starting point at zero.\n\nArguments:\n#1 - amount of offsets\n#2 - minimum range\n#3 - maximum range"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 20.0, 357.0, 224.0, 22.0 ],
                    "text": "routepass getPartition getDist getOffsets"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-3",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 462.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-2",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 20.0, 297.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.945098039215686, 0.909803921568627, 0.403921568627451, 1.0 ],
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 20.0, 407.0, 75.0, 22.0 ],
                    "saved_object_attributes": {
                        "filename": "partition.js",
                        "parameter_enable": 0
                    },
                    "text": "js partition.js"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-12", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-13", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            }
        ]
    }
}