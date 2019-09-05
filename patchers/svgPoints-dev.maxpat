{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1169.0, 937.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1612.0, 937.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 106,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 136.0, 37.0, 824.0, 1459.0 ],
									"text" : "\n\n/~/getPointsFromCircle = quote( lambda( [obj],\n    /cx = getbundlemember(obj, \"/cx\"),\n    /cy = getbundlemember(obj, \"/cy\"),\n    /r = getbundlemember(obj, \"/r\"),\n\n    /p1./x = /cx, \n    /p1./y = /cy - /r,\n    /p1./moveTo = 1,\n\n    /p2./x = /cx, \n    /p2./y = /cy + /r,\n    /curve./type = \"arc\",\n    /curve./rx = /r,\n    /curve./ry = /r,\n    /curve./sweepFlag = 1,\n    /p2./curve = /curve,\n\n    /p3./x = /cx, \n    /p3./y = /cy - /r,\n    /p3./curve = /curve,\n\n    prog1(\n        [/p1, /p2, /p3],\n        delete(/p1), delete(/p2), delete(/p3), delete(/cx), delete(/cy), delete(/r), delete(/curve)\n    )\n)),\n\n/~/getPointsFromEllipse = quote( lambda( [obj],\n    /cx = getbundlemember(obj, \"/cx\"),\n    /cy = getbundlemember(obj, \"/cy\"),\n    /rx = getbundlemember(obj, \"/rx\"),\n    /ry = getbundlemember(obj, \"/ry\"),\n\n    /p1./x = /cx, \n    /p1./y = /cy - /ry,\n    /p1./moveTo = 1,\n\n    /p2./x = /cx, \n    /p2./y = /cy + /ry,\n    /curve./type = \"arc\",\n    /curve./rx = /rx,\n    /curve./ry = /ry,\n    /curve./sweepFlag = 1,\n    /p2./curve = /curve,\n\n    /p3./x = /cx, \n    /p3./y = /cy - /ry,\n    /p3./curve = /curve,\n\n    prog1(\n        [/p1, /p2, /p3],\n        delete(/p1), delete(/p2), delete(/p3), delete(/cx), delete(/cy), delete(/rx), delete(/ry), delete(/curve)\n    )\n)),\n\n\n/getPointsFromLine = quote( lambda([obj],\n\n    /x1 = getbundlemember(obj, \"/x1\"),\n    /x2 = getbundlemember(obj, \"/x2\"),\n    /y1 = getbundlemember(obj, \"/y1\"),\n    /y2 = getbundlemember(obj, \"/y2\"),\n\n    /p1./x = /x1, \n    /p1./y = /y1\n    /p1./moveTo = 1,\n\n    /p2./x = /x2, \n    /p2./y = /y2,\n  \n     prog1(\n        [/p1, /p2],\n        delete(/p1), delete(/p2), delete(/x1), delete(/x2), delete(/y1), delete(/y2)\n    )\n)),\n\n/validCommands = ['M','m','L','l','H','h','V','v','C','c','S','s','Q','q','T','t','A','a','Z','z'],\n\n/commandLengths./A = 7,\n/commandLengths./C = 6,\n/commandLengths./H = 1,\n/commandLengths./L = 2,\n/commandLengths./M = 2,\n/commandLengths./Q = 4,\n/commandLengths./S = 4,\n/commandLengths./T = 2,\n/commandLengths./V = 1,\n/commandLengths./Z = 0,\n\n/relativeCommands = ['a', 'c', 'h', 'l', 'm', 'q', 's', 't', 'v'],\n\n\n/~/toPoints = quote(lambda( [obj],\n    /type = getbundlemember(obj, \"/type\"),\n    if( /type == \"circle\", /~/getPointsFromCircle(obj),\n    if( /type == \"ellipse\", /~/getPointsFromEllipse(obj),\n    if( /type == \"line\", /~/getPointsFromLine(obj),\n    if( /type == \"path\", /~/getPointsFromPath(obj),\n    if( /type == \"polygon\", /~/getPointsFromPolygon(obj),\n    if( /type == \"polyline\", /~/getPointsFromPolyline(obj),\n    if( /type == \"rect\", /~/getPointsFromRect(obj),\n    if( /type == \"g\", /~/getPointsFromG(obj),\n    ))))))))\n))"
								}

							}
 ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 663.0, 98.271928000000003, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p svgPoints"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 171.0, 257.0, 22.0 ],
					"text" : "url http://localhost:3002/test"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.0, 205.0, 320.0, 240.0 ],
					"rendermode" : 0,
					"url" : "http://localhost:3002/test"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.0, 115.0, 257.0, 35.0 ],
					"presentation_linecount" : 2,
					"text" : ";\rmax launchbrowser http://localhost:3002/test"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 14,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 89.0, 150.0, 201.0 ],
					"presentation_linecount" : 14,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -20, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -60, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 104, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 116, 45, 116, 101, 115, 116, 0, 0, 0, 0, 116, 47, 112, 111, 105, 110, 116, 115, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
					"saved_bundle_length" : 268,
					"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"path\",\n\t\t/id : \"pt-test\",\n\t\t/points : [{\n\t\t\t/x : 0,\n\t\t\t/y : 0\n\t\t}, {\n\t\t\t/x : 100,\n\t\t\t/y : 100\n\t\t}]\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.0, 178.5, 64.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 249.0, 178.5, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 22,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 404.512324690818787, 331.771927833557129, 313.0, 320.0 ],
					"presentation_linecount" : 22,
					"text" : "/url : \"/test\",\n/key : \"mouse\",\n/val : {\n\t/target : {\n\t\t/xmlns:xlink : \"http://www.w3.org/1999/xlink\",\n\t\t/baseProfile : \"full\",\n\t\t/version : \"1.1\",\n\t\t/id : \"svg\",\n\t\t/type : \"svg\",\n\t\t/xmlns : \"http://www.w3.org/2000/svg\"\n\t},\n\t/action : \"mousemove\",\n\t/xy : [9, 30],\n\t/mods : {\n\t\t/meta : 1,\n\t\t/alt : 0,\n\t\t/shift : 0,\n\t\t/ctrl : 0\n\t},\n\t/button : 0\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 291.701751232147217, 270.0, 313.0, 48.0 ],
					"presentation_linecount" : 2,
					"text" : "/port/localhost : \"http://localhost:3002\",\n/port/ip : \"http://172.18.89.22:3002\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 238.0, 323.771927833557129, 82.0, 22.0 ],
					"text" : "o.route /event"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "", "" ],
					"patching_rect" : [ 242.0, 228.0, 96.0, 22.0 ],
					"text" : "hfmt.drawsocket"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "hfmt.drawsocket.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/patchers",
				"patcherrelativepath" : "../../../Max 8/Packages/drawsocket/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drawsocket-server.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code/node",
				"patcherrelativepath" : "../../../Max 8/Packages/drawsocket/code/node",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "startscript.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code",
				"patcherrelativepath" : "../../../Max 8/Packages/drawsocket/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "black on white",
				"number" : 				{
					"fontname" : [ "Arial" ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"fontsize" : [ 12.0 ]
				}
,
				"umenu" : 				{
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "caption text",
				"default" : 				{
					"fontface" : [ 2 ],
					"fontsize" : [ 11.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section dividers",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontface" : [ 3 ],
					"fontsize" : [ 15.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section info reg",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "titles",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontface" : [ 1 ],
					"fontsize" : [ 20.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
