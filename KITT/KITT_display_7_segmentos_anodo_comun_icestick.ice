{
  "image": "",
  "state": {
    "pan": {
      "x": 161.67097459537058,
      "y": 109.5668225957099
    },
    "zoom": 0.8287808831671544
  },
  "board": "icestick",
  "graph": {
    "blocks": [
      {
        "id": "8d6dece9-e3b8-42d4-b8eb-386c90440923",
        "type": "basic.input",
        "data": {
          "label": "12MHz",
          "pin": {
            "name": "CLK",
            "value": "21"
          }
        },
        "position": {
          "x": -160,
          "y": 296
        }
      },
      {
        "id": "1c4278ff-0171-4e92-99c9-e34c58eae293",
        "type": "basic.output",
        "data": {
          "label": "a",
          "pin": {
            "name": "TR3",
            "value": "112"
          }
        },
        "position": {
          "x": 1240,
          "y": -40
        }
      },
      {
        "id": "19f9acea-94de-40be-bb64-701b1878b8f4",
        "type": "basic.output",
        "data": {
          "label": "b",
          "pin": {
            "name": "TR4",
            "value": "113"
          }
        },
        "position": {
          "x": 1240,
          "y": 24
        }
      },
      {
        "id": "5de49479-3202-41f7-99b7-e2b7af3ac1ad",
        "type": "basic.output",
        "data": {
          "label": "c",
          "pin": {
            "name": "TR5",
            "value": "114"
          }
        },
        "position": {
          "x": 1240,
          "y": 88
        }
      },
      {
        "id": "5e487012-89b2-4362-9c52-d212cf3fd3a5",
        "type": "basic.output",
        "data": {
          "label": "d",
          "pin": {
            "name": "TR6",
            "value": "115"
          }
        },
        "position": {
          "x": 1240,
          "y": 152
        }
      },
      {
        "id": "7f53101f-9731-4ab6-a6cf-baa16a5e4809",
        "type": "basic.output",
        "data": {
          "label": "e",
          "pin": {
            "name": "TR7",
            "value": "116"
          }
        },
        "position": {
          "x": 1240,
          "y": 216
        }
      },
      {
        "id": "64135dbc-ff54-4934-ac8b-dfcc11ffd8a9",
        "type": "bit.0",
        "data": {},
        "position": {
          "x": 24,
          "y": 168
        }
      },
      {
        "id": "d8ee920a-85ed-4e68-ad29-dadf3886772d",
        "type": "bit.1",
        "data": {},
        "position": {
          "x": 736,
          "y": 88
        }
      },
      {
        "id": "6f326a7d-3f7f-4c5d-b4e9-2c30e308388f",
        "type": "basic.output",
        "data": {
          "label": "f",
          "pin": {
            "name": "TR8",
            "value": "117"
          }
        },
        "position": {
          "x": 1240,
          "y": 280
        }
      },
      {
        "id": "203c0472-3cd5-4c2f-b3ba-28e644278124",
        "type": "basic.output",
        "data": {
          "label": "g",
          "pin": {
            "name": "TR9",
            "value": "118"
          }
        },
        "position": {
          "x": 1240,
          "y": 344
        }
      },
      {
        "id": "ddb8b5b6-daa1-4ff6-b5dc-505b6ba1a19c",
        "type": "basic.output",
        "data": {
          "label": "p",
          "pin": {
            "name": "TR10",
            "value": "119"
          }
        },
        "position": {
          "x": 1240,
          "y": 408
        }
      },
      {
        "id": "d057b192-853d-403f-a089-5a8fde9301da",
        "type": "basic.code",
        "data": {
          "code": "reg [3:0] q=0;\n\nalways @(posedge clk or posedge rst)\nbegin\n    if(rst)\n        q <= 0;\n    else\n        if (q==4'b0101)\n            q <= 4'b1011;\n        else\n            if (q==4'b1111)\n                q <= 4'b0001;\n            else    \n                q <= q + 1;\nend\n\nassign {q3, q2, q1, q0} = q;",
          "ports": {
            "in": [
              "rst",
              "clk"
            ],
            "out": [
              "q0",
              "q1",
              "q2",
              "q3"
            ]
          }
        },
        "position": {
          "x": 224,
          "y": 136
        }
      },
      {
        "id": "2b5a83b9-8884-49bb-a0de-11818426c7d2",
        "type": "logic.gate.xor",
        "data": {},
        "position": {
          "x": 736,
          "y": 152
        }
      },
      {
        "id": "346123b5-e5b6-44da-b9ab-729684b599b8",
        "type": "logic.gate.xor",
        "data": {},
        "position": {
          "x": 736,
          "y": 216
        }
      },
      {
        "id": "96552391-181e-41d5-b06e-2f374afa8e78",
        "type": "logic.gate.xor",
        "data": {},
        "position": {
          "x": 736,
          "y": 280
        }
      },
      {
        "id": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
        "type": "Decoder_inv",
        "data": {},
        "position": {
          "x": 912,
          "y": 88
        }
      },
      {
        "id": "fa0d0591-47ca-46d3-b274-29f4e16eaffe",
        "type": "250ms",
        "data": {},
        "position": {
          "x": 24,
          "y": 296
        }
      }
    ],
    "wires": [
      {
        "source": {
          "block": "64135dbc-ff54-4934-ac8b-dfcc11ffd8a9",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "rst"
        }
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q0"
        },
        "target": {
          "block": "2b5a83b9-8884-49bb-a0de-11818426c7d2",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q1"
        },
        "target": {
          "block": "346123b5-e5b6-44da-b9ab-729684b599b8",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q2"
        },
        "target": {
          "block": "96552391-181e-41d5-b06e-2f374afa8e78",
          "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q3"
        },
        "target": {
          "block": "96552391-181e-41d5-b06e-2f374afa8e78",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q3"
        },
        "target": {
          "block": "346123b5-e5b6-44da-b9ab-729684b599b8",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "q3"
        },
        "target": {
          "block": "2b5a83b9-8884-49bb-a0de-11818426c7d2",
          "port": "97b51945-d716-4b6c-9db9-970d08541249"
        }
      },
      {
        "source": {
          "block": "d8ee920a-85ed-4e68-ad29-dadf3886772d",
          "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
        },
        "target": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "58115770-e4fd-405b-ad0f-863dee5802fe"
        }
      },
      {
        "source": {
          "block": "2b5a83b9-8884-49bb-a0de-11818426c7d2",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "acf21081-9ca2-4b8e-9125-76b8120b68ff"
        }
      },
      {
        "source": {
          "block": "346123b5-e5b6-44da-b9ab-729684b599b8",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "c031c42f-2061-4828-976e-f90c211c3702"
        }
      },
      {
        "source": {
          "block": "96552391-181e-41d5-b06e-2f374afa8e78",
          "port": "664caf9e-5f40-4df4-800a-b626af702e62"
        },
        "target": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "70ac94eb-af9c-4e4b-a3e3-e42a12f751c9"
        }
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "fbc39c06-f9c1-4f58-a58b-96ef64e01daa"
        },
        "target": {
          "block": "1c4278ff-0171-4e92-99c9-e34c58eae293",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1128,
            "y": 80
          }
        ]
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "a5a61973-498e-4c88-b8ea-288a6feefe07"
        },
        "target": {
          "block": "19f9acea-94de-40be-bb64-701b1878b8f4",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1152,
            "y": 80
          }
        ]
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "608d8a66-684c-446f-869e-c69f0c82f2a2"
        },
        "target": {
          "block": "5de49479-3202-41f7-99b7-e2b7af3ac1ad",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1176,
            "y": 144
          }
        ]
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "a9998bc0-e0e1-47d7-99ef-f5533b4d4eef"
        },
        "target": {
          "block": "5e487012-89b2-4362-9c52-d212cf3fd3a5",
          "port": "in"
        }
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "a6d7cf0a-acac-4fab-a2b6-124100a24c5d"
        },
        "target": {
          "block": "7f53101f-9731-4ab6-a6cf-baa16a5e4809",
          "port": "in"
        },
        "vertices": []
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "02e0da4d-56c8-4182-83d0-e30ecf120a7e"
        },
        "target": {
          "block": "6f326a7d-3f7f-4c5d-b4e9-2c30e308388f",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1176,
            "y": 288
          }
        ]
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "4c718388-d311-40c3-aa91-3ef83df18e07"
        },
        "target": {
          "block": "203c0472-3cd5-4c2f-b3ba-28e644278124",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1152,
            "y": 344
          }
        ]
      },
      {
        "source": {
          "block": "63b880e0-337b-478a-87a4-ec0e23eef4ca",
          "port": "2f4068f3-5007-496f-a8cd-e3952031552e"
        },
        "target": {
          "block": "ddb8b5b6-daa1-4ff6-b5dc-505b6ba1a19c",
          "port": "in"
        },
        "vertices": [
          {
            "x": 1128,
            "y": 408
          }
        ]
      },
      {
        "source": {
          "block": "8d6dece9-e3b8-42d4-b8eb-386c90440923",
          "port": "out"
        },
        "target": {
          "block": "fa0d0591-47ca-46d3-b274-29f4e16eaffe",
          "port": "7967b348-34d1-48ed-a1ff-13ffa20be33e"
        }
      },
      {
        "source": {
          "block": "fa0d0591-47ca-46d3-b274-29f4e16eaffe",
          "port": "41449406-f581-4507-a0fa-f6a1acf6f65d"
        },
        "target": {
          "block": "d057b192-853d-403f-a089-5a8fde9301da",
          "port": "clk"
        }
      }
    ]
  },
  "deps": {
    "bit.0": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 0\n\nassign v = 1'b0;",
              "ports": {
                "in": [],
                "out": [
                  "v"
                ]
              }
            },
            "position": {
              "x": 96,
              "y": 96
            }
          },
          {
            "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
            "type": "basic.output",
            "data": {
              "label": ""
            },
            "position": {
              "x": 608,
              "y": 192
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "port": "v"
            },
            "target": {
              "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "port": "in"
            }
          }
        ]
      },
      "deps": {},
      "image": "resources/images/0.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "bit.1": {
      "graph": {
        "blocks": [
          {
            "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
            "type": "basic.code",
            "data": {
              "code": "// Bit 1\n\nassign v = 1'b1;",
              "ports": {
                "in": [],
                "out": [
                  "v"
                ]
              }
            },
            "position": {
              "x": 96,
              "y": 96
            }
          },
          {
            "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
            "type": "basic.output",
            "data": {
              "label": ""
            },
            "position": {
              "x": 608,
              "y": 192
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "port": "v"
            },
            "target": {
              "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "port": "in"
            }
          }
        ]
      },
      "deps": {},
      "image": "resources/images/1.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "logic.gate.xor": {
      "graph": {
        "blocks": [
          {
            "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
            "type": "basic.input",
            "data": {
              "label": ""
            },
            "position": {
              "x": 64,
              "y": 80
            }
          },
          {
            "id": "97b51945-d716-4b6c-9db9-970d08541249",
            "type": "basic.input",
            "data": {
              "label": ""
            },
            "position": {
              "x": 64,
              "y": 208
            }
          },
          {
            "id": "664caf9e-5f40-4df4-800a-b626af702e62",
            "type": "basic.output",
            "data": {
              "label": ""
            },
            "position": {
              "x": 752,
              "y": 144
            }
          },
          {
            "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
            "type": "basic.code",
            "data": {
              "code": "// XOR logic gate\n\nassign c = a ^ b;",
              "ports": {
                "in": [
                  "a",
                  "b"
                ],
                "out": [
                  "c"
                ]
              }
            },
            "position": {
              "x": 256,
              "y": 48
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "port": "out"
            },
            "target": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "a"
            }
          },
          {
            "source": {
              "block": "97b51945-d716-4b6c-9db9-970d08541249",
              "port": "out"
            },
            "target": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "b"
            }
          },
          {
            "source": {
              "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "port": "c"
            },
            "target": {
              "block": "664caf9e-5f40-4df4-800a-b626af702e62",
              "port": "in"
            }
          }
        ]
      },
      "deps": {},
      "image": "resources/images/xor.svg",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 1
      }
    },
    "Decoder_inv": {
      "image": "",
      "state": {
        "pan": {
          "x": 334.076765745167,
          "y": 105.27489555287508
        },
        "zoom": 0.7874141027816819
      },
      "graph": {
        "blocks": [
          {
            "id": "fbc39c06-f9c1-4f58-a58b-96ef64e01daa",
            "type": "basic.output",
            "data": {
              "label": "nout0"
            },
            "position": {
              "x": 784,
              "y": 0
            }
          },
          {
            "id": "a5a61973-498e-4c88-b8ea-288a6feefe07",
            "type": "basic.output",
            "data": {
              "label": "nout1"
            },
            "position": {
              "x": 784,
              "y": 64
            }
          },
          {
            "id": "608d8a66-684c-446f-869e-c69f0c82f2a2",
            "type": "basic.output",
            "data": {
              "label": "nout2"
            },
            "position": {
              "x": 784,
              "y": 128
            }
          },
          {
            "id": "a9998bc0-e0e1-47d7-99ef-f5533b4d4eef",
            "type": "basic.output",
            "data": {
              "label": "nout3"
            },
            "position": {
              "x": 784,
              "y": 192
            }
          },
          {
            "id": "a6d7cf0a-acac-4fab-a2b6-124100a24c5d",
            "type": "basic.output",
            "data": {
              "label": "nout4"
            },
            "position": {
              "x": 784,
              "y": 256
            }
          },
          {
            "id": "02e0da4d-56c8-4182-83d0-e30ecf120a7e",
            "type": "basic.output",
            "data": {
              "label": "nout5"
            },
            "position": {
              "x": 784,
              "y": 320
            }
          },
          {
            "id": "4c718388-d311-40c3-aa91-3ef83df18e07",
            "type": "basic.output",
            "data": {
              "label": "nout6"
            },
            "position": {
              "x": 784,
              "y": 384
            }
          },
          {
            "id": "2f4068f3-5007-496f-a8cd-e3952031552e",
            "type": "basic.output",
            "data": {
              "label": "nout7"
            },
            "position": {
              "x": 784,
              "y": 448
            }
          },
          {
            "id": "58115770-e4fd-405b-ad0f-863dee5802fe",
            "type": "basic.input",
            "data": {
              "label": "in"
            },
            "position": {
              "x": 32,
              "y": 128
            }
          },
          {
            "id": "acf21081-9ca2-4b8e-9125-76b8120b68ff",
            "type": "basic.input",
            "data": {
              "label": "sel0"
            },
            "position": {
              "x": 32,
              "y": 192
            }
          },
          {
            "id": "c031c42f-2061-4828-976e-f90c211c3702",
            "type": "basic.input",
            "data": {
              "label": "sel1"
            },
            "position": {
              "x": 32,
              "y": 256
            }
          },
          {
            "id": "70ac94eb-af9c-4e4b-a3e3-e42a12f751c9",
            "type": "basic.input",
            "data": {
              "label": "sel2"
            },
            "position": {
              "x": 32,
              "y": 320
            }
          },
          {
            "id": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
            "type": "logic.comb.demux_1_8",
            "data": {},
            "position": {
              "x": 240,
              "y": 128
            }
          },
          {
            "id": "9113f8ff-34d0-463a-958f-6e343b868465",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 0
            }
          },
          {
            "id": "5187ccbd-f4f2-467c-9de2-72f0dc9600fa",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 64
            }
          },
          {
            "id": "f02d6b6d-2cb2-4afc-ab5f-3022eba651b3",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 128
            }
          },
          {
            "id": "8cecc311-0b9a-4177-98da-355661120a31",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 192
            }
          },
          {
            "id": "7296199a-d5c5-4ac2-b1f0-37fff26a802f",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 384
            }
          },
          {
            "id": "c0b30200-b4a9-4fc3-9727-3b298e1de4e0",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 448
            }
          },
          {
            "id": "1d2bcc40-6bfc-4b6e-9adc-8cb1ed9aa486",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 320
            }
          },
          {
            "id": "9f26019b-f77f-41e9-a1f5-84d164f9474a",
            "type": "logic.gate.not",
            "data": {},
            "position": {
              "x": 608,
              "y": 256
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "58115770-e4fd-405b-ad0f-863dee5802fe",
              "port": "out"
            },
            "target": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406"
            }
          },
          {
            "source": {
              "block": "acf21081-9ca2-4b8e-9125-76b8120b68ff",
              "port": "out"
            },
            "target": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f"
            }
          },
          {
            "source": {
              "block": "c031c42f-2061-4828-976e-f90c211c3702",
              "port": "out"
            },
            "target": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "657dab9e-6580-4f02-b54f-66477863f26a"
            }
          },
          {
            "source": {
              "block": "70ac94eb-af9c-4e4b-a3e3-e42a12f751c9",
              "port": "out"
            },
            "target": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "e1a156c8-5813-46f6-a4d4-c672857f3396"
            }
          },
          {
            "source": {
              "block": "9113f8ff-34d0-463a-958f-6e343b868465",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "fbc39c06-f9c1-4f58-a58b-96ef64e01daa",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "5187ccbd-f4f2-467c-9de2-72f0dc9600fa",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "a5a61973-498e-4c88-b8ea-288a6feefe07",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "f02d6b6d-2cb2-4afc-ab5f-3022eba651b3",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "608d8a66-684c-446f-869e-c69f0c82f2a2",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "8cecc311-0b9a-4177-98da-355661120a31",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "a9998bc0-e0e1-47d7-99ef-f5533b4d4eef",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "9f26019b-f77f-41e9-a1f5-84d164f9474a",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "a6d7cf0a-acac-4fab-a2b6-124100a24c5d",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "1d2bcc40-6bfc-4b6e-9adc-8cb1ed9aa486",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "02e0da4d-56c8-4182-83d0-e30ecf120a7e",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "7296199a-d5c5-4ac2-b1f0-37fff26a802f",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "4c718388-d311-40c3-aa91-3ef83df18e07",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "c0b30200-b4a9-4fc3-9727-3b298e1de4e0",
              "port": "664caf9e-5f40-4df4-800a-b626af702e62"
            },
            "target": {
              "block": "2f4068f3-5007-496f-a8cd-e3952031552e",
              "port": "in"
            }
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa"
            },
            "target": {
              "block": "9113f8ff-34d0-463a-958f-6e343b868465",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 520,
                "y": 72
              }
            ]
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2"
            },
            "target": {
              "block": "5187ccbd-f4f2-467c-9de2-72f0dc9600fa",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 536,
                "y": 152
              }
            ]
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3"
            },
            "target": {
              "block": "f02d6b6d-2cb2-4afc-ab5f-3022eba651b3",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 552,
                "y": 176
              }
            ]
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "b9d764ea-538a-420f-a8d3-45af7a8e30a2"
            },
            "target": {
              "block": "8cecc311-0b9a-4177-98da-355661120a31",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 456,
                "y": 240
              }
            ]
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "1b8510ac-d723-4226-bf28-c7329d0f73fb"
            },
            "target": {
              "block": "9f26019b-f77f-41e9-a1f5-84d164f9474a",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            }
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "65f31fca-d607-4d5c-82cc-878a93b8e580"
            },
            "target": {
              "block": "1d2bcc40-6bfc-4b6e-9adc-8cb1ed9aa486",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            }
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "c8fadd68-77e1-47be-a262-b076e878e6fd"
            },
            "target": {
              "block": "7296199a-d5c5-4ac2-b1f0-37fff26a802f",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 552,
                "y": 384
              }
            ]
          },
          {
            "source": {
              "block": "470b8358-6466-48f8-a3d4-e58d3a92c5aa",
              "port": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633"
            },
            "target": {
              "block": "c0b30200-b4a9-4fc3-9727-3b298e1de4e0",
              "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
            },
            "vertices": [
              {
                "x": 536,
                "y": 448
              }
            ]
          }
        ]
      },
      "deps": {
        "logic.comb.demux_1_8": {
          "image": "resources/images/demux.svg",
          "state": {
            "pan": {
              "x": 75.69774669071234,
              "y": 148.91048230054443
            },
            "zoom": 0.63316672636209
          },
          "graph": {
            "blocks": [
              {
                "id": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                "type": "basic.output",
                "data": {
                  "label": "o0"
                },
                "position": {
                  "x": 784,
                  "y": -128
                }
              },
              {
                "id": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                "type": "basic.output",
                "data": {
                  "label": "o1"
                },
                "position": {
                  "x": 784,
                  "y": -48
                }
              },
              {
                "id": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
                "type": "basic.output",
                "data": {
                  "label": "o2"
                },
                "position": {
                  "x": 784,
                  "y": 32
                }
              },
              {
                "id": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
                "type": "basic.output",
                "data": {
                  "label": "o3"
                },
                "position": {
                  "x": 784,
                  "y": 112
                }
              },
              {
                "id": "1b8510ac-d723-4226-bf28-c7329d0f73fb",
                "type": "basic.output",
                "data": {
                  "label": "o4"
                },
                "position": {
                  "x": 784,
                  "y": 208
                }
              },
              {
                "id": "65f31fca-d607-4d5c-82cc-878a93b8e580",
                "type": "basic.output",
                "data": {
                  "label": "o5"
                },
                "position": {
                  "x": 784,
                  "y": 304
                }
              },
              {
                "id": "c8fadd68-77e1-47be-a262-b076e878e6fd",
                "type": "basic.output",
                "data": {
                  "label": "o6"
                },
                "position": {
                  "x": 784,
                  "y": 384
                }
              },
              {
                "id": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633",
                "type": "basic.output",
                "data": {
                  "label": "o7"
                },
                "position": {
                  "x": 784,
                  "y": 464
                }
              },
              {
                "id": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                "type": "basic.input",
                "data": {
                  "label": "i"
                },
                "position": {
                  "x": 16,
                  "y": 40
                }
              },
              {
                "id": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                "type": "basic.input",
                "data": {
                  "label": "sel0"
                },
                "position": {
                  "x": 16,
                  "y": 120
                }
              },
              {
                "id": "657dab9e-6580-4f02-b54f-66477863f26a",
                "type": "basic.input",
                "data": {
                  "label": "sel1"
                },
                "position": {
                  "x": 16,
                  "y": 200
                }
              },
              {
                "id": "e1a156c8-5813-46f6-a4d4-c672857f3396",
                "type": "basic.input",
                "data": {
                  "label": "sel2"
                },
                "position": {
                  "x": 16,
                  "y": 280
                }
              },
              {
                "id": "1ea41d18-7010-42c0-932f-99d135efdb73",
                "type": "basic.code",
                "data": {
                  "code": "assign {out7,out6,out5,out4,out3,out2,out1,out0} = in0 << {sel2,sel1,sel0};",
                  "ports": {
                    "in": [
                      "in0",
                      "sel0",
                      "sel1",
                      "sel2"
                    ],
                    "out": [
                      "out0",
                      "out1",
                      "out2",
                      "out3",
                      "out4",
                      "out5",
                      "out6",
                      "out7"
                    ]
                  }
                },
                "position": {
                  "x": 208,
                  "y": 64
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "5fc9a8e9-d463-4c1f-b6a3-185d5cabb406",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "in0"
                }
              },
              {
                "source": {
                  "block": "75cafe5a-1968-49ed-9e05-70d1bc3fbd0f",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel0"
                }
              },
              {
                "source": {
                  "block": "657dab9e-6580-4f02-b54f-66477863f26a",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel1"
                }
              },
              {
                "source": {
                  "block": "e1a156c8-5813-46f6-a4d4-c672857f3396",
                  "port": "out"
                },
                "target": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "sel2"
                }
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out0"
                },
                "target": {
                  "block": "91e2ff2d-2430-41e5-9d21-bc9ec4082aaa",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 664,
                    "y": -24
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out7"
                },
                "target": {
                  "block": "99ca2a23-7e0d-4c34-9ab1-988c6bf69633",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 664,
                    "y": 416
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out1"
                },
                "target": {
                  "block": "c6dc7002-dfc0-45fd-88e2-b5e5a75231f2",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 680,
                    "y": 32
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out2"
                },
                "target": {
                  "block": "5e246f93-51ad-4d6f-83f1-4fcce69c5ae3",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 696,
                    "y": 112
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out3"
                },
                "target": {
                  "block": "b9d764ea-538a-420f-a8d3-45af7a8e30a2",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 712,
                    "y": 176
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out4"
                },
                "target": {
                  "block": "1b8510ac-d723-4226-bf28-c7329d0f73fb",
                  "port": "in"
                }
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out5"
                },
                "target": {
                  "block": "65f31fca-d607-4d5c-82cc-878a93b8e580",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 696,
                    "y": 288
                  }
                ]
              },
              {
                "source": {
                  "block": "1ea41d18-7010-42c0-932f-99d135efdb73",
                  "port": "out6"
                },
                "target": {
                  "block": "c8fadd68-77e1-47be-a262-b076e878e6fd",
                  "port": "in"
                },
                "vertices": [
                  {
                    "x": 680,
                    "y": 320
                  },
                  {
                    "x": 680,
                    "y": 360
                  },
                  {
                    "x": 680,
                    "y": 376
                  },
                  {
                    "x": 688,
                    "y": 416
                  }
                ]
              }
            ]
          },
          "deps": {}
        },
        "logic.gate.not": {
          "graph": {
            "blocks": [
              {
                "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "type": "basic.input",
                "data": {
                  "label": ""
                },
                "position": {
                  "x": 64,
                  "y": 144
                }
              },
              {
                "id": "664caf9e-5f40-4df4-800a-b626af702e62",
                "type": "basic.output",
                "data": {
                  "label": ""
                },
                "position": {
                  "x": 752,
                  "y": 144
                }
              },
              {
                "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "type": "basic.code",
                "data": {
                  "code": "// NOT logic gate\n\nassign c = ~ a;",
                  "ports": {
                    "in": [
                      "a"
                    ],
                    "out": [
                      "c"
                    ]
                  }
                },
                "position": {
                  "x": 256,
                  "y": 48
                }
              }
            ],
            "wires": [
              {
                "source": {
                  "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                  "port": "out"
                },
                "target": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "a"
                }
              },
              {
                "source": {
                  "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                  "port": "c"
                },
                "target": {
                  "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                  "port": "in"
                }
              }
            ]
          },
          "deps": {},
          "image": "resources/images/not.svg",
          "state": {
            "pan": {
              "x": 0,
              "y": 0
            },
            "zoom": 1
          }
        }
      }
    },
    "250ms": {
      "image": "",
      "state": {
        "pan": {
          "x": 0,
          "y": 0
        },
        "zoom": 0.9999999891834782
      },
      "graph": {
        "blocks": [
          {
            "id": "a9736169-04fe-4fc8-a886-b218650bca6f",
            "type": "basic.code",
            "data": {
              "code": "parameter M = 3_000_000;\nlocalparam N = $clog2(M);\n\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk_in)\n    if (divcounter == M - 1)\n        divcounter <= 0;\n    else\n        divcounter <= divcounter + 1;\n\nassign clk_out = divcounter[N - 1];",
              "ports": {
                "in": [
                  "clk_in"
                ],
                "out": [
                  "clk_out"
                ]
              }
            },
            "position": {
              "x": 416,
              "y": 112
            }
          },
          {
            "id": "7967b348-34d1-48ed-a1ff-13ffa20be33e",
            "type": "basic.input",
            "data": {
              "label": "12MHz"
            },
            "position": {
              "x": 216,
              "y": 208
            }
          },
          {
            "id": "41449406-f581-4507-a0fa-f6a1acf6f65d",
            "type": "basic.output",
            "data": {
              "label": "250ms"
            },
            "position": {
              "x": 896,
              "y": 208
            }
          }
        ],
        "wires": [
          {
            "source": {
              "block": "7967b348-34d1-48ed-a1ff-13ffa20be33e",
              "port": "out"
            },
            "target": {
              "block": "a9736169-04fe-4fc8-a886-b218650bca6f",
              "port": "clk_in"
            }
          },
          {
            "source": {
              "block": "a9736169-04fe-4fc8-a886-b218650bca6f",
              "port": "clk_out"
            },
            "target": {
              "block": "41449406-f581-4507-a0fa-f6a1acf6f65d",
              "port": "in"
            }
          }
        ]
      },
      "deps": {}
    }
  }
}