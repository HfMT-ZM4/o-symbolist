{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1282.0, 937.0 ],
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
					"id" : "obj-10",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 564.0, 56.000000000000057, 270.0, 100.0 ],
					"presentation_linecount" : 6,
					"text" : "to do: \nget \"context\" object (parent)\n  the parent should have a time2pix etc.\nor the object could also have time functions, maybe check self first, or if not use parent? or I guess you'd know if your object has the function... "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 625.031553983688354, 793.0, 152.0, 87.0 ],
					"text" : "new version: format action and everything from the client, scripts should respond directly to this format rather than preformatting it."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 421.140776991844177, 766.5, 82.0, 22.0 ],
					"text" : "o.route /val"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 624.781553983688354, 905.0, 90.0, 32.0 ],
					"text" : "/gui = /val"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 421.140776991844177, 800.5, 176.0, 22.0 ],
					"text" : "o.cond bound(/symbolistAction)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 199.0, 275.0, 954.0, 871.0 ],
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
									"id" : "obj-1",
									"linecount" : 21,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 336.0, 622.0, 673.0, 304.0 ],
									"text" : "\n/target = /val./target,\n\nif( /key == \"mouse\" && /url == \"/view\",\n  if( /target./id != \"svg\" && /val./action == \"mouseup\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /val./class,\n      /gui./target = /target\n    ),\n    if( /target./id == \"svg\" && /val./action == \"mousedown\",\n       progn(\n        /gui./mouse/xy = /val./xy,\n        /gui./class = /val./selectedClass,\n        /gui./id = /gui./class + \"-\" + string(/time),\n        /gui./target = /target\n      )\n    )\n  )\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 96.0, 100.0, 22.0 ],
									"text" : "o.timetag /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 30.0, 453.0, 47.0 ],
									"text" : "maybe better is to send the message from the script formatted based on the action, the difference is that the view then would have some of the controller ... or maybe the script is the interface between the controller and view... "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 22,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 129.0, 673.0, 318.0 ],
									"text" : "\n/target = /val./target,\n/mods = /val./mods,\n\nif( /key == \"mouse\" && /url == \"/view\",\n  if( /target./id != \"svg\" && /val./action == \"mouseup\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /target./class,\n      /gui./target = /target\n    ),\n    if( /target./id == \"svg\" && /val./action == \"mousedown\" && /mods./meta == 1,\n       progn(\n        /gui./mouse/xy = /val./xy,\n        /gui./class = /val./selectedClass,\n        /gui./id = /val./id,\n        /gui./target = /target\n      )\n    )\n  )\n)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 769.0, 330.0, 673.0, 168.0 ],
									"text" : "\n/target = /val./target,\n\nif( /key == \"mouse\" && /url == \"/view\" && /val./action == \"mouseup\" && /target./id != \"svg\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /target./class,\n      /gui./target = /target\n    )\n)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 507.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 357.0, 910.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p select"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 199.0, 275.0, 954.0, 871.0 ],
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
									"id" : "obj-1",
									"linecount" : 21,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 336.0, 622.0, 673.0, 304.0 ],
									"text" : "\n/target = /val./target,\n\nif( /key == \"mouse\" && /url == \"/view\",\n  if( /target./id != \"svg\" && /val./action == \"mouseup\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /val./class,\n      /gui./target = /target\n    ),\n    if( /target./id == \"svg\" && /val./action == \"mousedown\",\n       progn(\n        /gui./mouse/xy = /val./xy,\n        /gui./class = /val./selectedClass,\n        /gui./id = /gui./class + \"-\" + string(/time),\n        /gui./target = /target\n      )\n    )\n  )\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 96.0, 100.0, 22.0 ],
									"text" : "o.timetag /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.0, 30.0, 453.0, 47.0 ],
									"text" : "maybe better is to send the message from the script formatted based on the action, the difference is that the view then would have some of the controller ... or maybe the script is the interface between the controller and view... "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 22,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 129.0, 673.0, 318.0 ],
									"text" : "\n/target = /val./target,\n/mods = /val./mods,\n\nif( /key == \"mouse\" && /url == \"/view\",\n  if( /target./id != \"svg\" && /val./action == \"mouseup\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /target./class,\n      /gui./target = /target\n    ),\n    if( /target./id == \"svg\" && /val./action == \"mousedown\" && /mods./meta == 1,\n       progn(\n        /gui./mouse/xy = /val./xy,\n        /gui./class = /val./selectedClass,\n        /gui./id = /val./id,\n        /gui./target = /target\n      )\n    )\n  )\n)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 11,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 769.0, 330.0, 673.0, 168.0 ],
									"text" : "\n/target = /val./target,\n\nif( /key == \"mouse\" && /url == \"/view\" && /val./action == \"mouseup\" && /target./id != \"svg\",\n    progn(\n      /gui./mouse/xy = /val./xy,\n      /gui./id = /target./id,\n      /gui./class = /target./class,\n      /gui./target = /target\n    )\n)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-47",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 507.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 525.0, 922.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p select"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 420.0, 732.5, 135.0, 22.0 ],
					"text" : "o.cond /key == mouse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 485.281553983688354, 219.009707999999989, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
					"patching_rect" : [ 485.281553983688354, 256.999999999999943, 99.0, 49.0 ],
					"text" : "o.expr.file defs.odot"
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
					"patching_rect" : [ 1146.0, 141.024273455142975, 150.0, 201.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -4, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -20, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -60, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 104, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 116, 45, 116, 101, 115, 116, 0, 0, 0, 0, 116, 47, 112, 111, 105, 110, 116, 115, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
					"saved_bundle_length" : 272,
					"text" : "/view : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"path\",\n\t\t/id : \"pt-test\",\n\t\t/points : [{\n\t\t\t/x : 0,\n\t\t\t/y : 0\n\t\t}, {\n\t\t\t/x : 100,\n\t\t\t/y : 100\n\t\t}]\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 123.0, 13.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-69",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 296.999999999999943, 172.0, 92.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 80, -11, -62, -113, 92, 40, -10, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0 ],
					"saved_bundle_length" : 148,
					"text" : "/class : \"/noteline\",\n/pitch : 67.84,\n/amp : 1,\n/time : 12,\n/dur : 100,\n/id : \"foo-3\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 379.0, 154.5, 132.0, 22.0 ],
									"text" : "o.cond bound(/noteOff)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.5, 343.0, 150.0, 38.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 111, 116, 101, 79, 102, 102, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 105, 110, 101, 47, 48, 47, 97, 109, 112, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 64,
									"text" : "/noteOff : 0,\n/sine/0/amp : 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-61",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 379.0, 184.5, 241.0, 86.0 ],
									"text" : "map( \n  lambda(i, \n    assign(\"/sine/\"+i+\"/amp\", 0)\n  ),/noteOff\n)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 54.0, 154.5, 115.0, 22.0 ],
									"text" : "o.cond /length > 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"linecount" : 5,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 184.5, 313.0, 86.0 ],
									"text" : "/obj = /value./obj,\n/eval = /value./eval,\n/obj./phase = /eval./relTime,\n/obj./noteOn = bound(/value./noteOn),\nassign( \"/sine/\"+/value./idx, /obj)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 54.0, 126.0, 119.0, 22.0 ],
									"text" : "o.listenumerate /play"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 54.0, 100.0, 69.0, 22.0 ],
									"text" : "o.route /out"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-65",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 54.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-66",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.5, 441.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"order" : 0,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"order" : 1,
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 969.5, 644.0, 233.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p reformatting (this should be elsewhere?)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 969.5, 756.728072166442871, 35.0, 22.0 ],
					"text" : "dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 969.5, 723.228072166442871, 132.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 1019.0, 476.0 ],
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
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 378.0, 112.0, 100.0, 22.0 ],
									"text" : "o.route /sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 806.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 759.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 707.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 660.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 613.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 566.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 519.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 472.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 311.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 278.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 425.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "FullPacket" ],
									"patching_rect" : [ 378.0, 141.0, 183.0, 22.0 ],
									"text" : "o.route /0 /1 /2 /3 /4 /5 /6 /7 /8 /9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 8,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 344.0, 146.0, 172.0, 119.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
													"saved_bundle_length" : 36,
													"text" : "/class : \"/noteline\",\n/id : \"foo-2\",\n/pitch : 62.78,\n/time : 30.5,\n/amp : 1,\n/dur : 100,\n/phase : 0.035,\n/noteOn : false"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 55.0, 321.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.0, 212.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 103.0, 245.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 184.0, 42.0, 22.0 ],
													"text" : "+ 0.75"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 103.0, 153.0, 33.0, 22.0 ],
													"text" : "* 0.5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 79.0, 276.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 225.0, 202.0, 50.0, 22.0 ],
													"text" : "$1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 140.0, 35.0, 22.0 ],
													"text" : "mtof"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 147.0, 22.0 ],
													"text" : "o.route /pitch /phase /amp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "bang" ],
													"patching_rect" : [ 225.0, 235.0, 43.0, 22.0 ],
													"text" : "line~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 364.0, 43.0, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 183.0, 43.0, 22.0 ],
													"text" : "cycle~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 446.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-23", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"order" : 0,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 1,
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 378.0, 182.0, 41.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sine"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 378.0, 253.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 378.0, 68.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-32", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-32", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-32", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-32", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-32", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-32", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-32", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-32", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-32", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 969.5, 682.5, 47.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sines"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 554.890216588973999, 111.499999582767487, 319.0, 20.0 ],
									"text" : "basic note circles (duration not really defined very well yet)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 208.307692050933838, 100.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-23",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 533.307692050933838, 136.115383684635162, 150.0, 78.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 14, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 52, 0, 0, 0 ],
									"saved_bundle_length" : 120,
									"text" : "/class : \"/note\",\n/pitch : 14,\n/amp : 1,\n/time : 100,\n/id : \"foo-4\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 367.307692050933838, 136.115383684635162, 150.0, 78.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 66, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0 ],
									"saved_bundle_length" : 120,
									"text" : "/class : \"/note\",\n/pitch : 66,\n/amp : 1,\n/time : 50,\n/id : \"foo-3\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 136.115383684635162, 150.0, 78.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 34, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0 ],
									"saved_bundle_length" : 120,
									"text" : "/class : \"/note\",\n/pitch : 34,\n/amp : 1,\n/time : 0,\n/id : \"foo-1\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 208.307692050933838, 136.115383684635162, 150.0, 78.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 64, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0 ],
									"saved_bundle_length" : 120,
									"text" : "/class : \"/note\",\n/pitch : 64,\n/amp : 1,\n/time : 10,\n/id : \"foo-2\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 283.730753758064282, 274.115386582767485, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 3,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 1,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 2,
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 396.701751232147217, 50.000000000000057, 158.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dev notehead\\, no duration"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 871.0, 52.024273455142975, 322.0, 87.0 ],
					"text" : "1. turn on drawsocket server\n2. initialize the Defs\n3. make some notes, you can drag them and alt-drag copy to make more\n4. do a lookup and see the output based on the defined scripts in the Defs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 771.0, 168.009707999999989, 319.0, 60.0 ],
					"text" : "known bugs (among many!)\n- mouse click drag in the View resets the object to the left edge since that's the object's start time, but should just offset when dragging."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.230770707130432, 50.000000000000057, 319.0, 20.0 ],
					"text" : "\"noteline\" (better duration definition)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.092220461959869, 217.999999714668263, 71.0, 20.0 ],
					"text" : "<< clear/init"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-68",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 190.009707999999989, 172.0, 92.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 66, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0 ],
					"saved_bundle_length" : 144,
					"text" : "/class : \"/noteline\",\n/pitch : 66,\n/amp : 1,\n/time : 10,\n/dur : 100,\n/id : \"foo-2\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 884.5, 506.0, 104.0, 22.0 ],
					"text" : "o.select /view"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-56",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 884.5, 335.024273455142975, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 884.5, 364.0, 54.0, 22.0 ],
					"text" : "o.pack /t"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 377.0, 124.0, 463.0, 561.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 276.0, 79.0, 1238.0, 937.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"linecount" : 7,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 158.0, 326.0, 431.0, 106.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 116, 114, 97, 115, 110, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 93, 44, 10, 32, 32, 105, 102, 40, 32, 115, 116, 114, 102, 105, 110, 100, 40, 34, 109, 97, 116, 114, 105, 120, 34, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 33, 61, 32, 45, 49, 44, 10, 32, 32, 32, 32, 102, 108, 111, 97, 116, 51, 50, 40, 115, 112, 108, 105, 116, 40, 34, 32, 34, 44, 32, 115, 116, 114, 99, 104, 97, 114, 40, 32, 97, 115, 101, 113, 40, 55, 44, 32, 115, 116, 114, 108, 101, 110, 40, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 45, 32, 50, 41, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 41, 41, 10, 32, 32, 41, 10, 41, 0, 0, 0, 0, 0, 0, 0, 28, 47, 102, 111, 111, 0, 0, 0, 0, 44, 102, 102, 102, 0, 0, 0, 0, 63, -128, 0, 0, 64, 0, 0, 0, 64, 64, 0, 0 ],
																	"saved_bundle_length" : 232,
																	"text" : "/trasnform/getMatrix : \"lambda([matrix_str],\n  if( strfind(\\\"matrix\\\", matrix_str) != -1,\n    float32(split(\\\" \\\", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)\",\n/foo : [1., 2., 3.]"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"linecount" : 8,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 100.0, 507.0, 127.0 ],
																	"text" : "/trasnform/getMatrix = quote(lambda([matrix_str],\n  if( strfind(\"matrix\", matrix_str) != -1,\n    float32(split(\" \", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)),\n\n/foo = /trasnform/getMatrix( \"matrix(1 2 3)\" )"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"linecount" : 5,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 59.000006540748586, 414.0, 111.0, 87.0 ],
																	"text" : "if the object has a transform it makes it harder to map to the note\n\n"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1182.0, 307.0, 38.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p dev"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 791.0, 29.0, 196.0, 33.0 ],
													"text" : "parent should be a graphic object? i.e. in the view somewhere?"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 24.000006540748586, 1572.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 101,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.000006540748586, 92.0, 1062.0, 1405.0 ],
													"text" : "/path./r = 1,\n/path./dur = 100,\n/path./amp = 1,\n\n/path./get/icon = quote(\n  lambda([xy],\n    /d = \"M0,0 S Z\"\n  )\n),\n\n/path./set/fromData = quote(\n  lambda([obj],\n    /points = getbundlemember(obj, \"/points\"),\n    /time = getbundlemember(obj, \"/time\"),\n    /dur = getbundlemember(obj, \"/dur\"),\n    /id = getbundlemember(obj, \"/id\"),\n\n    /time2pix = /parent./time2pix,\n\n    /n./new = \"path\",\n    /n./class = \"/path\",\n    /n./id = /id,\n\n    # path point array to SVG string\n\n    /n./points = /points,\n\n\n\n    /n1./cy = /parent./y + scale(/pitch, 0., 127., /parent./height, 0.),\n    /n1./cx = /parent./x + /time2pix( /time ) + /n1./r,\n\n    /n2./new = \"line\",\n    /n2./class = \"durationLine\",\n    /n2./x1 = /n1./cx - /n1./r,\n    /n2./y1 = /n1./cy,\n    /n2./x2 = /n2./x1 + /time2pix( /dur ),\n    /n2./y2 = /n1./cy,\n\n    /n./children = [/n1, /n2],\n\n    prog1(\n      /n,\n      delete(/n), delete(/n1), delete(/n2), delete(/pitch), delete(/amp), delete(/time), delete(/id), delete(/time2pix)\n    )\n  )\n),\n\n\n/path./set/fromGUI = quote(\n  lambda([obj],\n  # apply transform\n    /obj = obj,\n    /src = /obj./target,\n\n    if( bound(/src./children), map(\n      lambda([c],\n        /c_obj = c,\n        if( /c_obj./class == \"notehead\",\n          /notehead = /c_obj,\n          /durationLine = /c_obj\n        )\n      ), /src./children\n    )),\n \n\n    /xy = if( /src./id != \"svg\" && bound(/src./transform) && bound(/notehead),\n      /transform/applyTransform( /transform/getMatrix(/src./transform), [/notehead./cx, /notehead./cy ] ),\n      /obj./mouse/xy\n    ),\n    /id = /obj./id,\n\n    /r = bound(/obj./r) ? /obj./r : /note./r, # set default radius\n\n    /pix2time = /parent./pix2time,\n\n    /n./class = \"/path\",\n    /n./id = /id,\n    /n./pitch = scale( /xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n    /n./time = /pix2time( /xy[[0]] - /parent./x + /r),\n    /n./amp = /path./amp , #scale(/r, 1., 20., 0., 100. ),\n    /n./dur = bound(/durationLine) ? /pix2time( /durationLine./x2 - /durationLine./x1 ) : /path./dur,\n\n    prog1(\n      /n,\n      delete(/n), delete(/xy), delete(/id), delete(/pix2time), delete(/r), delete(/obj), delete(/c_obj), delete(/durationLine), delete(/notehead) \n    )\n  )\n),\n\n/path./get/fromTime = quote(\n  lambda([obj, t],\n    /_obj = obj,\n    /_out./relTime = (t - /_obj./time) / /_obj./dur,\n    if( /_out./relTime >= 0 && /_out./relTime <= 1,\n      prog1( /_out, delete(/_out), delete(/_obj) ),\n      progn( delete(/_out), delete(/_obj) )\n    )\n  )\n)\n\n"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-71",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.000006540748586, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"fontname" : [ "Arial" ],
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontface" : [ 2 ],
													"fontsize" : [ 11.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ],
													"fontsize" : [ 15.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
,
									"patching_rect" : [ 148.0, 291.330096781253815, 61.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 716.0, 160.0, 840.0, 531.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-4",
													"linecount" : 18,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 335.0, 263.0 ],
													"text" : "/playhead./set/fromTime = quote(\n  lambda([t],\n    /time2pix = /parent./time2pix,\n    /line./new = \"line\",\n    /line./id = \"playhead\",\n    /line./class = \"playhead\",\n    /line./x1 = /parent./x + /time2pix( /t ),\n    /line./x2 = /line./x1,\n    /line./y1 = /parent./y,\n    /line./y2 = /parent./y + /parent./height,\n\n    /view./key = \"svg\",\n    /view./val = /line,\n\n    \n    delete(/line), delete(/time2pix)\n  )\n)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 396.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 148.0, 368.0, 67.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p playhead"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1207.0, 793.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-3",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 193.0, 606.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 164.0, 93.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-2",
													"linecount" : 28,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 164.0, 149.0, 572.0, 399.0 ],
													"text" : "/parent./x = 10.,\n/parent./y = 10.,\n/parent./width = 600.,\n/parent./height = 800.,\n\n/parent./time/start = 0.,\n/parent./time/dur = 1000.,\n\n/parent./time2pix = quote(lambda([t],\n  (t / /parent./time/dur) * /parent./width\n)),\n\n/parent./pix2time = quote(lambda([x],\n  x * (/parent./time/dur / /parent./width)\n)),\n\n/transform/getMatrix = quote(lambda([matrix_str],\n  if( strfind(\"matrix\", matrix_str) != -1,\n    float32(split(\" \", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)),\n\n\n/transform/applyTransform = quote(lambda([matrix, xy ],\n  [  matrix[[0]] * xy[[0]] + matrix[[2]] * xy[[1]] + matrix[[4]], \n     matrix[[1]] * xy[[0]] + matrix[[3]] * xy[[1]] + matrix[[5]]\n  ]\n))"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"fontname" : [ "Arial" ],
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontface" : [ 2 ],
													"fontsize" : [ 11.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ],
													"fontsize" : [ 15.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
,
									"patching_rect" : [ 148.0, 163.0, 53.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p parent"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 14.0, 79.0, 902.0, 937.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"linecount" : 7,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 158.0, 326.0, 431.0, 106.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 116, 114, 97, 115, 110, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 93, 44, 10, 32, 32, 105, 102, 40, 32, 115, 116, 114, 102, 105, 110, 100, 40, 34, 109, 97, 116, 114, 105, 120, 34, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 33, 61, 32, 45, 49, 44, 10, 32, 32, 32, 32, 102, 108, 111, 97, 116, 51, 50, 40, 115, 112, 108, 105, 116, 40, 34, 32, 34, 44, 32, 115, 116, 114, 99, 104, 97, 114, 40, 32, 97, 115, 101, 113, 40, 55, 44, 32, 115, 116, 114, 108, 101, 110, 40, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 45, 32, 50, 41, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 41, 41, 10, 32, 32, 41, 10, 41, 0, 0, 0, 0, 0, 0, 0, 28, 47, 102, 111, 111, 0, 0, 0, 0, 44, 102, 102, 102, 0, 0, 0, 0, 63, -128, 0, 0, 64, 0, 0, 0, 64, 64, 0, 0 ],
																	"saved_bundle_length" : 232,
																	"text" : "/trasnform/getMatrix : \"lambda([matrix_str],\n  if( strfind(\\\"matrix\\\", matrix_str) != -1,\n    float32(split(\\\" \\\", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)\",\n/foo : [1., 2., 3.]"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"linecount" : 8,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 100.0, 507.0, 127.0 ],
																	"text" : "/trasnform/getMatrix = quote(lambda([matrix_str],\n  if( strfind(\"matrix\", matrix_str) != -1,\n    float32(split(\" \", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)),\n\n/foo = /trasnform/getMatrix( \"matrix(1 2 3)\" )"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"linecount" : 5,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 59.000006540748586, 414.0, 111.0, 87.0 ],
																	"text" : "if the object has a transform it makes it harder to map to the note\n\n"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1182.0, 307.0, 38.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p dev"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 798.0, 1.0, 196.0, 33.0 ],
													"text" : "parent should be a graphic object? i.e. in the view somewhere?"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 24.000006540748586, 1572.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 99,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 93.000006540748586, 116.0, 1062.0, 1378.0 ],
													"text" : "/noteline./r = 1,\n/noteline./dur = 100,\n/noteline./amp = 1,\n\n/noteline./get/icon = quote(\n  lambda([xy],\n    /cx = 1\n  )\n),\n\n/noteline./set/fromData = quote(\n  lambda([obj],\n    /pitch = getbundlemember(obj, \"/pitch\"),\n    /amp = getbundlemember(obj, \"/amp\"),\n    /time = getbundlemember(obj, \"/time\"),\n    /dur = getbundlemember(obj, \"/dur\"),\n    /id = getbundlemember(obj, \"/id\"),\n\n    /time2pix = /parent./time2pix,\n\n    /n./new = \"g\",\n    /n./class = \"/noteline\",\n    /n./id = /id,\n\n    /n1./new = \"circle\",\n    /n1./class = \"notehead\",\n    /n1./r = scale(/amp, 0., 100, 5., 20.),\n\n    /n1./cy = /parent./y + scale(/pitch, 0., 127., /parent./height, 0.),\n    /n1./cx = /parent./x + /time2pix( /time ) + /n1./r,\n\n    /n2./new = \"line\",\n    /n2./class = \"durationLine\",\n    /n2./x1 = /n1./cx - /n1./r,\n    /n2./y1 = /n1./cy,\n    /n2./x2 = /n2./x1 + /time2pix( /dur ),\n    /n2./y2 = /n1./cy,\n\n    /n./children = [/n1, /n2],\n\n    prog1(\n      /n,\n      delete(/n), delete(/n1), delete(/n2), delete(/pitch), delete(/amp), delete(/time), delete(/id), delete(/time2pix)\n    )\n  )\n),\n\n\n/noteline./set/fromGUI = quote(\n  lambda([obj],\n    /obj = obj,\n    /src = /obj./target,\n\n    if( bound(/src./children), map(\n      lambda([c],\n        /c_obj = c,\n        if( /c_obj./class == \"notehead\",\n          /notehead = /c_obj,\n          /durationLine = /c_obj\n        )\n      ), /src./children\n    )),\n \n\n    /xy = if( /src./id != \"svg\" && bound(/src./transform) && bound(/notehead),\n      /transform/applyTransform( /transform/getMatrix(/src./transform), [/notehead./cx, /notehead./cy ] ),\n      /obj./mouse/xy\n    ),\n    /id = /obj./id,\n\n    /r = bound(/obj./r) ? /obj./r : /note./r, # set default radius\n\n    /pix2time = /parent./pix2time,\n\n    /n./class = \"/noteline\",\n    /n./id = /id,\n    /n./pitch = scale( /xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n    /n./time = /pix2time( /xy[[0]] - /parent./x + /r),\n    /n./amp = /noteline./amp , #scale(/r, 1., 20., 0., 100. ),\n    /n./dur = bound(/durationLine) ? /pix2time( /durationLine./x2 - /durationLine./x1 ) : /noteline./dur,\n\n    prog1(\n      /n,\n      delete(/n), delete(/xy), delete(/id), delete(/pix2time), delete(/r), delete(/obj), delete(/c_obj), delete(/durationLine), delete(/notehead) \n    )\n  )\n),\n\n/noteline./get/fromTime = quote(\n  lambda([obj, t],\n    /_obj = obj,\n    /_out./relTime = (t - /_obj./time) / /_obj./dur,\n    if( /_out./relTime >= 0 && /_out./relTime <= 1,\n      prog1( /_out, delete(/_out), delete(/_obj) ),\n      progn( delete(/_out), delete(/_obj) )\n    )\n  )\n)\n\n"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-71",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.000006540748586, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"fontname" : [ "Arial" ],
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontface" : [ 2 ],
													"fontsize" : [ 11.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ],
													"fontsize" : [ 15.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
,
									"patching_rect" : [ 148.0, 235.330096781253815, 61.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p noteline"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 448.0, 79.0, 1198.0, 927.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-10",
																	"linecount" : 29,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 335.0, 100.0, 311.0, 409.0 ],
																	"text" : "/parent./x = 10.,\n/parent./y = 10.,\n/parent./width = 600.,\n/parent./height = 100.,\n\n/parent./time/start = 0.,\n/parent./time/dur = 1000.,\n\n/parent./time2pix = quote(lambda([t],\n  (t / /parent./time/dur) * /parent./width\n)),\n\n/parent./pix2time = quote(lambda([x],\n  ((x - /parent./x) / /parent./width) * /parent./time/dur\n)),\n\n/transform/getMatrix = quote(lambda([matrix_str],\n  if( strfind(\"matrix\", matrix_str) != -1,\n    float32(split(\" \", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)),\n\n\n/transform/applyTransform = quote(lambda([matrix, xy ],\n  [  matrix[[0]] * xy[[0]] + matrix[[2]] * xy[[1]] + matrix[[4]], \n     matrix[[1]] * xy[[0]] + matrix[[3]] * xy[[1]] + matrix[[5]]\n  ]\n)),\n"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-5",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 128.0, 358.0, 196.0, 33.0 ],
																	"text" : "parent should be a graphic object? i.e. in the view somewhere?"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"linecount" : 7,
																	"maxclass" : "o.compose",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 158.0, 659.0, 431.0, 106.0 ],
																	"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 116, 114, 97, 115, 110, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 93, 44, 10, 32, 32, 105, 102, 40, 32, 115, 116, 114, 102, 105, 110, 100, 40, 34, 109, 97, 116, 114, 105, 120, 34, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 33, 61, 32, 45, 49, 44, 10, 32, 32, 32, 32, 102, 108, 111, 97, 116, 51, 50, 40, 115, 112, 108, 105, 116, 40, 34, 32, 34, 44, 32, 115, 116, 114, 99, 104, 97, 114, 40, 32, 97, 115, 101, 113, 40, 55, 44, 32, 115, 116, 114, 108, 101, 110, 40, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 45, 32, 50, 41, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 41, 41, 10, 32, 32, 41, 10, 41, 0, 0, 0, 0, 0, 0, 0, 28, 47, 102, 111, 111, 0, 0, 0, 0, 44, 102, 102, 102, 0, 0, 0, 0, 63, -128, 0, 0, 64, 0, 0, 0, 64, 64, 0, 0 ],
																	"saved_bundle_length" : 232,
																	"text" : "/trasnform/getMatrix : \"lambda([matrix_str],\n  if( strfind(\\\"matrix\\\", matrix_str) != -1,\n    float32(split(\\\" \\\", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)\",\n/foo : [1., 2., 3.]"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-7",
																	"linecount" : 8,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 433.0, 507.0, 127.0 ],
																	"text" : "/trasnform/getMatrix = quote(lambda([matrix_str],\n  if( strfind(\"matrix\", matrix_str) != -1,\n    float32(split(\" \", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)),\n\n/foo = /trasnform/getMatrix( \"matrix(1 2 3)\" )"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-6",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 145.0, 840.0, 479.0, 34.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-4",
																	"linecount" : 5,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 59.000006540748586, 747.0, 111.0, 87.0 ],
																	"text" : "if the object has a transform it makes it harder to map to the note\n\n"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 1 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 1074.0, 286.0, 38.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p dev"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 92.000006540748586, 964.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 67,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 92.000006540748586, 54.0, 817.0, 943.0 ],
													"text" : "/note./dur = 20,\n/note./r = 1,\n\n/note./set/fromData = quote(\n  lambda([obj],\n    /pitch = getbundlemember(obj, \"/pitch\"),\n    /amp = getbundlemember(obj, \"/amp\"),\n    /time = getbundlemember(obj, \"/time\"),\n    /id = getbundlemember(obj, \"/id\"),\n\n    /time2pix = /parent./time2pix,\n\n    /n./new = \"circle\",\n    /n./class = \"/note\",\n    /n./id = /id,\n    /n./r = scale(/amp, 0., 100, 5., 20.),\n    /n./cy = /parent./y + scale(/pitch, 0., 127., /parent./height, 0.),\n    /n./cx = /parent./x + /time2pix( /time ) + /n./r,\n\n\n    prog1(\n      /n,\n      delete(/n), delete(/pitch), delete(/amp), delete(/time), delete(/id), delete(/time2pix)\n    )\n  )\n),\n\n\n/note./set/fromGUI = quote(\n  lambda([obj],\n    /obj = obj,\n    /src = /obj./target,\n \n    /xy = if( /src./id != \"svg\" && bound(/src./transform),\n      /transform/applyTransform( /transform/getMatrix(/src./transform), [/src./cx, /src./cy ] ),\n      /obj./mouse/xy\n    ),\n    /id = /obj./id,\n\n    /r = bound(/obj./r) ? /obj./r : /note./r, # set default radius\n    \n    /pix2time = /parent./pix2time,\n\n    /n./class = \"/note\",\n    /n./id = /id,\n    /n./pitch = scale( /xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n    /n./time = /pix2time( /xy[[0]] - /parent./x - /r ),\n    /n./amp = scale(/r, 1., 20., 0., 100. ),\n\n    prog1(\n      /n,\n      delete(/n) #, delete(/xy), delete(/id), delete(/pix2time), delete(/r), delete(/obj)\n    )\n  )\n),\n\n/note./get/fromTime = quote(\n  lambda([obj, t],\n    /_obj = obj,\n    /_out./relTime = (t - /_obj./time) / /note./dur,\n    if( /_out./relTime >= 0 && /_out./relTime <= 1,\n      prog1( /_out, delete(/_out), delete(/_obj) ),\n      progn( delete(/_out), delete(/_obj) )\n    )\n  )\n)\n\n"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-71",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 92.000006540748586, 10.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"fontname" : [ "Arial" ],
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontface" : [ 2 ],
													"fontsize" : [ 11.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ],
													"fontsize" : [ 15.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
,
									"patching_rect" : [ 148.0, 198.990291714668274, 42.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p note"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 147.999992169090319, 109.000003285331729, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 148.0, 405.330082285331741, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 1154.5, 357.5, 74.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p defs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 651.769229292869568, 246.009707999999989, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 685.281553983688354, 424.0, 29.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.512324690818787, 461.0, 117.0, 33.0 ],
					"text" : "stores model, bang to set from storage"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.281553983688354, 433.75, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-5",
					"linecount" : 20,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 829.5, 788.5, 356.0, 292.0 ],
					"text" : "/mousedownPos,\n/selectedClass : \"/noteline\",\n/button : 0,\n/id : \"noteline_u_9dhtun030m0\",\n/target : {\n\t/version : 1.1,\n\t/xmlns:xlink : \"http://www.w3.org/1999/xlink\",\n\t/id : \"svg\",\n\t/baseProfile : \"full\",\n\t/type : \"svg\",\n\t/xmlns : \"http://www.w3.org/2000/svg\"\n},\n/mods : {\n\t/alt : 0,\n\t/ctrl : 0,\n\t/shift : 0,\n\t/meta : 1\n},\n/xy : [507, 428],\n/action : \"mousemove\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 105.0, 79.0, 640.0, 857.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"linecount" : 57,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 251.0, 785.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, -108, 47, 109, 111, 100, 101, 108, 0, 0, 44, 46, 46, 46, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 86, 61, 10, 68, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 87, 106, -86, -44, -86, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 53, 85, 85, 86, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 49, 57, 52, 106, 105, 53, 112, 109, 97, 113, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 89, 41, 112, -93, -41, 10, 62, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 84, 106, -86, 127, 85, 85, 86, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 84, -25, -62, -123, 71, -82, 20, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 106, -33, -1, -22, 85, 85, 86, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 53, 85, 85, 86, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 88, -71, -82, 20, 122, -31, 72, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -114, 66, -86, -65, -22, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 122, 110, 112, 56, 48, 105, 115, 109, 122, 98, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 83, -10, 122, -31, 71, -82, 20, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -112, 43, -1, -3, 74, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 114, 108, 115, 107, 57, 110, 108, 106, 53, 51, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 80, 28, -11, -62, -113, 92, 41, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -113, 24, 0, 21, 64, 0, 0, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 88, -1, -1, 42, -86, -86, -85, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 102, 55, 111, 114, 105, 101, 97, 119, 107, 121, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 81, 57, 112, -93, -41, 10, 62, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -120, 96, 0, 21, 64, 0, 0, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 104, 54, 117, 52, 98, 118, 122, 56, 97, 114, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 87, 55, -103, -103, -103, -103, -102, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -120, -54, -86, -91, 64, 0, 0, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96 ],
									"saved_bundle_length" : 1448,
									"text" : "/model : [{\n\t/class : \"/noteline\",\n\t/id : \"foo-3\",\n\t/pitch : 88.9538,\n\t/time : 93.6667,\n\t/dur : 100,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2194ji5pmaq\",\n\t/pitch : 100.648,\n\t/time : 81.6667,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"foo-2\",\n\t/pitch : 83.6212,\n\t/time : 215,\n\t/dur : 100,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2vledoam7t0\",\n\t/pitch : 98.9013,\n\t/time : 968.333,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_1znp80ismzb\",\n\t/pitch : 79.8512,\n\t/time : 1035,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_rlsk9nlj53\",\n\t/pitch : 64.4525,\n\t/time : 995,\n\t/dur : 99.9999,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2f7orieawky\",\n\t/pitch : 68.8975,\n\t/time : 780,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t/pitch : 92.8688,\n\t/time : 793.333,\n\t/dur : 100.,\n\t/amp : 1\n}]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.999998976749453, 755.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 610.281553983688354, 461.0, 94.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p model"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 165.0, 84.0, 405.0, 917.0 ],
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
									"id" : "obj-38",
									"linecount" : 184,
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 248.0, 2522.0 ],
									"text" : "/view : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2m7i8a7pea8\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 180.,\n\t\t\t/cx : 112.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 107,\n\t\t\t/y1 : 180.,\n\t\t\t/x2 : 167,\n\t\t\t/y2 : 180.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_25fz125l97a\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 181.,\n\t\t\t/cx : 224.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 219,\n\t\t\t/y1 : 181.,\n\t\t\t/x2 : 279.,\n\t\t\t/y2 : 181.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_5hcxgmlkakk\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 245.,\n\t\t\t/cx : 75.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 70,\n\t\t\t/y1 : 245.,\n\t\t\t/x2 : 130,\n\t\t\t/y2 : 245.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1d2uxlydzin\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 310.,\n\t\t\t/cx : 283.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 278.,\n\t\t\t/y1 : 310.,\n\t\t\t/x2 : 338.,\n\t\t\t/y2 : 310.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_cz4qtzw3dko\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 308.,\n\t\t\t/cx : 362.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 357.,\n\t\t\t/y1 : 308.,\n\t\t\t/x2 : 417.,\n\t\t\t/y2 : 308.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2oh6316vz0c\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 292.,\n\t\t\t/cx : 95.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 90,\n\t\t\t/y1 : 292.,\n\t\t\t/x2 : 150,\n\t\t\t/y2 : 292.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_apxcj09bay8\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 95.,\n\t\t\t/cx : 249.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 244.,\n\t\t\t/y1 : 95.,\n\t\t\t/x2 : 304.,\n\t\t\t/y2 : 95.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1sl7kl0rrtn\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 135.,\n\t\t\t/cx : 300.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 295.,\n\t\t\t/y1 : 135.,\n\t\t\t/x2 : 355.,\n\t\t\t/y2 : 135.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1ucwzo8ai26\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 222.,\n\t\t\t/cx : 341.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 336.,\n\t\t\t/y1 : 222.,\n\t\t\t/x2 : 396.,\n\t\t\t/y2 : 222.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2amelz12hg7\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 285.,\n\t\t\t/cx : 241.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 236,\n\t\t\t/y1 : 285.,\n\t\t\t/x2 : 296.,\n\t\t\t/y2 : 285.\n\t\t}]\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 455.701751232147217, 452.75, 77.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p view"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-47",
					"linecount" : 36,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 48.0, 583.5, 313.0, 510.0 ],
					"text" : "/gui : {\n\t/symbolistAction : \"edit\",\n\t/mousedownPos,\n\t/class : \"/noteline\",\n\t/selectedClass : \"/noteline\",\n\t/button : 0,\n\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t/target : {\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t\t/type : \"g\",\n\t\t/transform : \"matrix(1 0 0 1 75 -43)\",\n\t\t/children : [{\n\t\t\t/r : 5.15,\n\t\t\t/class : \"notehead\",\n\t\t\t/type : \"circle\",\n\t\t\t/cx : 416.15,\n\t\t\t/cy : 268\n\t\t}, {\n\t\t\t/x1 : 411,\n\t\t\t/class : \"durationLine\",\n\t\t\t/y2 : 268,\n\t\t\t/type : \"line\",\n\t\t\t/x2 : 471,\n\t\t\t/y1 : 268\n\t\t}]\n\t},\n\t/mods : {\n\t\t/alt : 0,\n\t\t/ctrl : 0,\n\t\t/shift : 0,\n\t\t/meta : 0\n\t},\n\t/xy : [494, 224],\n\t/action : \"mouseup\"\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"linecount" : 3,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 537.0, 656.5, 313.0, 61.0 ],
					"text" : "/port/ip : \"http://172.18.89.22,169.254.58.254:3002\",\n/port/localhost : \"http://localhost:3002\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 581.0, 267.0, 640.0, 480.0 ],
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
									"id" : "obj-11",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 140.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 100.0, 127.0, 22.0 ],
									"text" : "o.select /start/success"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 172.5, 191.0, 22.0 ],
									"text" : "html_template symbolist-view.html"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 254.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 537.0, 611.0, 84.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p set template"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 50.0, 131.0, 100.0, 22.0 ],
									"text" : "o.route /value"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 100.0, 140.0, 22.0 ],
									"text" : "o.listenumerate /model"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.000000707130432, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000000707130432, 213.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 610.281553983688354, 501.0, 92.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p iterate model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 420.0, 706.5, 82.0, 22.0 ],
					"text" : "o.route /event"
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
					"patching_rect" : [ 48.0, 539.024273455142975, 257.0, 35.0 ],
					"text" : ";\rmax launchbrowser http://localhost:3002/view"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 651.769229292869568, 191.009707999999989, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 41.0, 79.0, 1077.0, 937.0 ],
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
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 363.0, 153.0, 691.0, 886.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "FullPacket" ],
																	"patching_rect" : [ 50.0, 113.446612119537349, 100.0, 22.0 ],
																	"text" : "o.union"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "FullPacket" ],
																	"patching_rect" : [ 50.0, 447.5, 100.0, 22.0 ],
																	"text" : "o.select /prev"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"linecount" : 15,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 148.946603059768677, 284.0, 236.0 ],
																	"text" : "/prev/idx ??= [],\n\n/noteOn = map( \n  lambda(i, \n    if( max( i == /prev/idx ) == 0, i)\n  ), /out/idx\n),\n\n/noteOff = map(\n  lambda(i,\n    if( max( i == /out/idx ) == 0, i)\n  ), /prev/idx\n),\n\n/prev/idx = /out/idx\n"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-15",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-16",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 131.0, 482.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"midpoints" : [ 59.5, 543.5, 390.0, 543.5, 390.0, 102.446612119537349, 140.5, 102.446612119537349 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-9", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 479.0, 181.0, 70.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p noteState"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 668.0, 150.0, 691.0, 886.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "FullPacket" ],
																	"patching_rect" : [ 50.0, 113.446612119537349, 100.0, 22.0 ],
																	"text" : "o.union"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "FullPacket" ],
																	"patching_rect" : [ 50.0, 447.5, 100.0, 22.0 ],
																	"text" : "o.select /prev"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-8",
																	"linecount" : 16,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 148.946603059768677, 277.0, 250.0 ],
																	"text" : "/prev/idx ??= [],\n\n/noteOn = map( \n  lambda(i, \n   if( max( i == /prev/idx ) != 0, i)\n  ), /out/idx\n),\n\n/noteOff = map(\n  lambda(i,\n     if( max( i == /out/idx ) == 0, i)\n  ), /prev/idx\n),\n\n/prev/idx = /out/idx\n"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-15",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-16",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 131.0, 482.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-8", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 1 ],
																	"midpoints" : [ 59.5, 543.5, 390.0, 543.5, 390.0, 102.446612119537349, 140.5, 102.446612119537349 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-9", 1 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 473.0, 135.999990940231328, 58.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p noteOn"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 683.0, 79.0, 764.0, 780.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-10",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 492.0, 59.0, 234.0, 34.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-9",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "FullPacket" ],
																	"patching_rect" : [ 50.0, 53.0, 100.0, 22.0 ],
																	"text" : "o.route /mouse/*"
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-2",
																	"maxclass" : "o.display",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 108.0, 405.0, 522.0, 34.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontface" : 0,
																	"fontsize" : 12.0,
																	"id" : "obj-1",
																	"linecount" : 2,
																	"maxclass" : "o.expr.codebox",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "FullPacket", "FullPacket" ],
																	"patching_rect" : [ 50.0, 318.0, 349.0, 46.0 ],
																	"text" : "/idx = aseq(1,length(/ids)),\n/objIDX = max(/idx * (/target./id == /ids)) - 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-41",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "FullPacket" ],
																	"patching_rect" : [ 50.0, 290.0, 48.0, 22.0 ],
																	"text" : "o.union"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-49",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 6.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-50",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 400.0, 186.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-51",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 508.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-2", 0 ],
																	"order" : 0,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-51", 0 ],
																	"order" : 1,
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-41", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-9", 0 ],
																	"source" : [ "obj-49", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-41", 1 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"order" : 0,
																	"source" : [ "obj-9", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-41", 0 ],
																	"order" : 1,
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 473.0, 64.0, 73.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p get obj idx"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 113.393215179306026, 100.0, 22.0 ],
													"text" : "o.union"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 447.446603059768677, 100.0, 22.0 ],
													"text" : "o.select /prev"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-8",
													"linecount" : 15,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 148.893206119537354, 284.0, 236.0 ],
													"text" : "/prev/idx ??= [],\n\n/noteOn = map( \n  lambda(i, \n    if( max( i == /prev/idx ) == 0, i)\n  ), /out/idx\n),\n\n/noteOff = map(\n  lambda(i,\n    if( max( i == /out/idx ) == 0, i)\n  ), /prev/idx\n),\n\n/prev/idx = /out/idx\n"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"midpoints" : [ 59.5, 543.446603059768677, 390.000000000000227, 543.446603059768677, 390.000000000000227, 102.393215179306026, 140.5, 102.393215179306026 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 973.961537000000021, 160.5, 38.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p dev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 131.961536999999993, 821.946603059768677, 100.0, 22.0 ],
									"text" : "o.select /prev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 131.961536999999993, 270.893215179306026, 100.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 280.0, 107.0, 656.0, 626.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-7",
													"linecount" : 19,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 378.0, 277.0 ],
													"text" : "/times = [],\n/ids = [],\n/dur = [],\n\nmap(\n  lambda([o],\n    /times = [/times, getbundlemember(o, \"/time\")],\n    /ids = [/ids, getbundlemember(o, \"/id\")],\n    /dur = [/dur, getbundlemember(o, \"/dur\")]\n  ), /model\n),\n\n/end/times = /times + /dur,\n\n/sortedIdx = sortidx(/times),\n\n/times = /times[[ /sortedIdx ]],\n/ids = /ids[[ /sortedIdx ]],\n/end/times = /end/times[[ /sortedIdx ]]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.00000088046265, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-26",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 465.000012880462634, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 161.0, 124.946612000000002, 81.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p sort by time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 413.0, 496.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 10,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 450.0, 154.0 ],
													"text" : "/idx = map( \n  lambda([i, times, end_t], \n    if( times <= /t && /t <= end_t,\n      i\n    )\n  ), aseq(0, length(/times)), /times, /end/times\n),\n\n\n/obj = /model[[ /sortedIdx[[ /idx ]] ]]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-18",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 49.999995758064273, 40.000005940231318, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-19",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999995758064273, 313.999990940231328, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 131.961536999999993, 200.446602999999982, 151.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p idx & object array at time"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 212.961536999999993, 911.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.46153724193573, 12.500009059768672, 41.0, 20.0 ],
									"text" : "time /t"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-29",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 131.96153724193573, 28.500009059768672, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 424.0, 125.446594000000005, 41.0, 20.0 ],
									"text" : "defs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 155.5, 60.500009059768672, 41.0, 20.0 ],
									"text" : "model"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"linecount" : 36,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 131.961536999999993, 300.446603059768677, 455.0, 508.0 ],
									"text" : "/outObjs = [],\n/outIdx = [],\n/prev/idx ??= [],\n\nmap(\n  lambda([o, idx],\n    /o = o,\n    /def = value( /o./class ),\n\n    /timeFn = /def./get/fromTime,\n\n    /n./idx = idx,\n    if( max( idx == /prev/idx ) == 0, /n./noteOn = 1 ),\n\t   /n./obj = /o,\n    /n./eval = /timeFn( /o, /t),\n\n    if( bound(/n./eval),\n      progn(\n        /outObjs = [/outObjs, /n],\n        /outIdx = [/outIdx, idx]\n      )\n    )\n  ), /obj, /idx\n),\n\n/out./play = /outObjs,\n/out./noteOff = map(\n  lambda(i,\n    if( max( i == /outIdx ) == 0, i)\n  ), /prev/idx\n),\n\n/prev/idx = /outIdx,\n\n/playheadFn = /playhead./set/fromTime,\n/playheadFn( /t )"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 131.961536999999993, 230.446603059768677, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 424.0, 166.446603059768677, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 212.961536999999993, 875.5, 141.0, 22.0 ],
									"text" : "o.gather.select /out /view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 131.96153724193573, 159.446603059768677, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.961537000000021, 100.0, 248.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-4",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 67.96153724193573, 45.446612119537349, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 67.96153724193573, 79.446603059768677, 54.0, 22.0 ],
									"text" : "o.pack /t"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-53",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.0, 82.500009059768672, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 1 ],
									"midpoints" : [ 141.461536999999993, 853.946603059768677, 632.961537000000021, 853.946603059768677, 632.961537000000021, 259.893215179306026, 222.461536999999993, 259.893215179306026 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 884.5, 461.0, 99.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p lookup"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 732.0, 79.0, 873.0, 937.0 ],
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
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 568.0, 166.0, 640.0, 480.0 ],
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
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 188.0, 299.0, 176.0, 32.0 ],
													"text" : "/route = \"gui\""
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 188.0, 223.0, 198.0, 32.0 ],
													"text" : "/error = \"requires /class\""
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 163.0, 126.0, 176.0, 32.0 ],
													"text" : "/error = \"requires /id\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 171.0, 150.0, 22.0 ],
													"text" : "o.cond bound(/gui./class)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 132.0, 22.0 ],
													"text" : "o.cond bound(/gui./id)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 2.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 195.0, 356.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 240.5, 113.0, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p id/class check"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 345.0, 208.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 222.0, 208.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 645,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.0, 42.0, 914.0, 8778.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 56, 47, 103, 117, 105, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 3, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 0, 0, 0, 0, 44, 115, 0, 0, 101, 100, 105, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 111, 117, 115, 101, 100, 111, 119, 110, 80, 111, 115, 0, 0, 0, 44, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 115, 101, 108, 101, 99, 116, 101, 100, 67, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 98, 117, 116, 116, 111, 110, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 104, 54, 117, 52, 98, 118, 122, 56, 97, 114, 0, 0, 0, 0, 1, -64, 47, 116, 97, 114, 103, 101, 116, 0, 44, 46, 0, 0, 0, 0, 1, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 104, 54, 117, 52, 98, 118, 122, 56, 97, 114, 0, 0, 0, 0, 0, 16, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 40, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 0, 0, 44, 115, 0, 0, 109, 97, 116, 114, 105, 120, 40, 49, 32, 48, 32, 48, 32, 49, 32, 55, 53, 32, 45, 52, 51, 41, 0, 0, 0, 0, 1, 28, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 122, 2, 102, 96, 0, 0, 0, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 1, 12, 0, 0, 0, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 1, -101, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 1, 12, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 1, -41, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 1, 12, 0, 0, 0, 112, 47, 109, 111, 100, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 108, 116, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 116, 114, 108, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 104, 105, 102, 116, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 109, 101, 116, 97, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 121, 0, 44, 105, 105, 0, 0, 0, 1, -18, 0, 0, 0, -32, 0, 0, 0, 20, 47, 97, 99, 116, 105, 111, 110, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 117, 112, 0, 0, 0, 0, -76, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 93, 44, 10, 32, 32, 105, 102, 40, 32, 115, 116, 114, 102, 105, 110, 100, 40, 34, 109, 97, 116, 114, 105, 120, 34, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 33, 61, 32, 45, 49, 44, 10, 32, 32, 32, 32, 102, 108, 111, 97, 116, 51, 50, 40, 115, 112, 108, 105, 116, 40, 34, 32, 34, 44, 32, 115, 116, 114, 99, 104, 97, 114, 40, 32, 97, 115, 101, 113, 40, 55, 44, 32, 115, 116, 114, 108, 101, 110, 40, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 45, 32, 50, 41, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 41, 41, 10, 32, 32, 41, 10, 41, 0, 0, 0, 0, 0, 0, 0, -64, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 97, 112, 112, 108, 121, 84, 114, 97, 110, 115, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 44, 32, 120, 121, 32, 93, 44, 10, 32, 32, 91, 32, 32, 109, 97, 116, 114, 105, 120, 91, 91, 48, 93, 93, 32, 42, 32, 120, 121, 91, 91, 48, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 50, 93, 93, 32, 42, 32, 120, 121, 91, 91, 49, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 52, 93, 93, 44, 32, 10, 32, 32, 32, 32, 32, 109, 97, 116, 114, 105, 120, 91, 91, 49, 93, 93, 32, 42, 32, 120, 121, 91, 91, 48, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 51, 93, 93, 32, 42, 32, 120, 121, 91, 91, 49, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 53, 93, 93, 10, 32, 32, 93, 10, 41, 0, 0, 0, 1, -128, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 99, 108, 97, 115, 115, 110, 97, 109, 101, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 32, 61, 32, 123, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 98, 111, 117, 110, 100, 40, 111, 98, 106, 46, 47, 99, 104, 105, 108, 100, 114, 101, 110, 41, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 97, 112, 40, 32, 108, 97, 109, 98, 100, 97, 40, 91, 99, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 99, 46, 47, 99, 108, 97, 115, 115, 32, 61, 61, 32, 99, 108, 97, 115, 115, 110, 97, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 32, 61, 32, 99, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 44, 32, 111, 98, 106, 46, 47, 99, 104, 105, 108, 100, 114, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 103, 49, 40, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 108, 101, 116, 101, 40, 47, 102, 111, 117, 110, 100, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 41, 10, 0, 0, 0, 1, 96, 47, 112, 97, 114, 101, 110, 116, 0, 44, 46, 0, 0, 0, 0, 1, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 0, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 0, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 100, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 104, 101, 105, 103, 104, 116, 0, 44, 100, 0, 0, 64, -119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 105, 109, 101, 47, 115, 116, 97, 114, 116, 0, 44, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 105, 109, 101, 47, 100, 117, 114, 0, 0, 0, 44, 100, 0, 0, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 116, 105, 109, 101, 50, 112, 105, 120, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 40, 116, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 41, 32, 42, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 0, 84, 47, 112, 105, 120, 50, 116, 105, 109, 101, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 120, 32, 42, 32, 40, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 41, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 0, -92, 47, 114, 101, 99, 116, 97, 110, 103, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 100, 101, 102, 97, 117, 108, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 101, 116, 47, 102, 114, 111, 109, 68, 97, 116, 97, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 101, 116, 47, 102, 114, 111, 109, 71, 85, 73, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -128, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 44, 46, 0, 0, 0, 0, 15, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 47, 100, 101, 102, 97, 117, 108, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 76, 47, 103, 101, 116, 47, 105, 99, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 120, 121, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 49, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 5, 108, 47, 115, 101, 116, 47, 102, 114, 111, 109, 68, 97, 116, 97, 0, 0, 0, 44, 115, 0, 0, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 112, 97, 114, 101, 110, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 50, 112, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 32, 58, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 97, 109, 112, 44, 32, 48, 46, 44, 32, 49, 48, 48, 44, 32, 53, 46, 44, 32, 50, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 32, 43, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 112, 105, 116, 99, 104, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 101, 110, 100, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 100, 117, 114, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 35, 32, 114, 101, 116, 117, 114, 110, 32, 116, 104, 101, 32, 102, 111, 108, 108, 111, 119, 105, 110, 103, 32, 111, 98, 106, 101, 99, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 103, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 32, 58, 32, 91, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 99, 105, 114, 99, 108, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 114, 32, 58, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 121, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 43, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 49, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 49, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 50, 32, 58, 32, 112, 105, 120, 95, 101, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 50, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 9, 56, 47, 115, 101, 116, 47, 102, 114, 111, 109, 71, 85, 73, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 112, 97, 114, 101, 110, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 108, 97, 116, 101, 114, 58, 32, 112, 117, 116, 32, 116, 104, 101, 115, 101, 32, 105, 110, 32, 97, 32, 108, 101, 116, 32, 102, 117, 110, 99, 116, 105, 111, 110, 44, 32, 104, 101, 114, 101, 32, 110, 111, 119, 32, 115, 105, 110, 99, 101, 32, 47, 112, 97, 114, 101, 110, 116, 46, 112, 105, 120, 50, 116, 105, 109, 101, 40, 41, 32, 100, 111, 101, 115, 110, 39, 116, 32, 119, 111, 114, 107, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 97, 108, 115, 111, 32, 108, 97, 116, 101, 114, 44, 32, 112, 97, 114, 101, 110, 116, 32, 112, 114, 111, 98, 97, 98, 108, 121, 32, 115, 104, 111, 117, 108, 100, 32, 98, 101, 32, 112, 97, 115, 115, 101, 100, 32, 105, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 116, 111, 32, 100, 111, 32, 110, 101, 119, 32, 102, 114, 111, 109, 32, 99, 108, 105, 99, 107, 44, 32, 115, 101, 108, 101, 99, 116, 32, 97, 32, 114, 101, 102, 101, 114, 101, 110, 99, 101, 32, 111, 98, 106, 101, 99, 116, 44, 32, 105, 102, 32, 110, 111, 110, 101, 32, 97, 114, 101, 32, 102, 111, 117, 110, 100, 44, 32, 116, 104, 101, 110, 32, 116, 104, 101, 32, 83, 86, 71, 32, 105, 115, 32, 116, 104, 101, 32, 112, 97, 114, 101, 110, 116, 63, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 100, 111, 32, 116, 104, 97, 116, 32, 105, 110, 32, 116, 104, 101, 32, 85, 73, 32, 115, 99, 114, 105, 112, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 112, 105, 120, 50, 116, 105, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 32, 58, 32, 111, 98, 106, 46, 47, 116, 97, 114, 103, 101, 116, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 102, 97, 117, 108, 116, 32, 58, 32, 47, 110, 111, 116, 101, 108, 105, 110, 101, 46, 47, 100, 101, 102, 97, 117, 108, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 100, 40, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 98, 106, 46, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 32, 61, 61, 32, 34, 110, 101, 119, 70, 114, 111, 109, 67, 108, 105, 99, 107, 95, 100, 111, 119, 110, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 105, 116, 99, 104, 32, 58, 32, 115, 99, 97, 108, 101, 40, 32, 111, 98, 106, 46, 47, 120, 121, 91, 91, 49, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 105, 109, 101, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 111, 98, 106, 46, 47, 120, 121, 91, 91, 48, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 114, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 100, 117, 114, 32, 58, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 100, 117, 114, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 97, 109, 112, 32, 58, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 97, 109, 112, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 98, 106, 46, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 32, 61, 61, 32, 34, 101, 100, 105, 116, 34, 44, 32, 35, 38, 38, 32, 47, 110, 111, 116, 101, 108, 105, 110, 101, 46, 47, 105, 115, 86, 97, 108, 105, 100, 40, 111, 98, 106, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 32, 58, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 32, 58, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 121, 32, 58, 32, 105, 102, 32, 40, 32, 98, 111, 117, 110, 100, 40, 116, 97, 114, 103, 101, 116, 46, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 97, 112, 112, 108, 121, 84, 114, 97, 110, 115, 102, 111, 114, 109, 40, 32, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 40, 116, 97, 114, 103, 101, 116, 46, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 41, 44, 32, 91, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 120, 44, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 121, 93, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 91, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 120, 44, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 121, 93, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 116, 97, 114, 103, 101, 116, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 105, 116, 99, 104, 32, 58, 32, 115, 99, 97, 108, 101, 40, 32, 120, 121, 91, 91, 49, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 105, 109, 101, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 120, 121, 91, 91, 48, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 45, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 114, 32, 41, 44, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 100, 117, 114, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 46, 47, 120, 50, 32, 45, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 46, 47, 120, 49, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 97, 109, 112, 32, 58, 32, 115, 99, 97, 108, 101, 40, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 114, 44, 32, 53, 46, 44, 32, 50, 48, 46, 44, 32, 48, 46, 44, 32, 49, 48, 48, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 15, 124, 47, 111, 98, 106, 82, 101, 102, 0, 44, 46, 0, 0, 0, 0, 15, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 47, 100, 101, 102, 97, 117, 108, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 76, 47, 103, 101, 116, 47, 105, 99, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 120, 121, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 49, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 5, 108, 47, 115, 101, 116, 47, 102, 114, 111, 109, 68, 97, 116, 97, 0, 0, 0, 44, 115, 0, 0, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 112, 97, 114, 101, 110, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 50, 112, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 32, 58, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 97, 109, 112, 44, 32, 48, 46, 44, 32, 49, 48, 48, 44, 32, 53, 46, 44, 32, 50, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 32, 43, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 112, 105, 116, 99, 104, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 101, 110, 100, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 100, 117, 114, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 35, 32, 114, 101, 116, 117, 114, 110, 32, 116, 104, 101, 32, 102, 111, 108, 108, 111, 119, 105, 110, 103, 32, 111, 98, 106, 101, 99, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 103, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 32, 58, 32, 91, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 99, 105, 114, 99, 108, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 114, 32, 58, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 121, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 43, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 49, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 49, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 50, 32, 58, 32, 112, 105, 120, 95, 101, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 50, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 9, 56, 47, 115, 101, 116, 47, 102, 114, 111, 109, 71, 85, 73, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 112, 97, 114, 101, 110, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 108, 97, 116, 101, 114, 58, 32, 112, 117, 116, 32, 116, 104, 101, 115, 101, 32, 105, 110, 32, 97, 32, 108, 101, 116, 32, 102, 117, 110, 99, 116, 105, 111, 110, 44, 32, 104, 101, 114, 101, 32, 110, 111, 119, 32, 115, 105, 110, 99, 101, 32, 47, 112, 97, 114, 101, 110, 116, 46, 112, 105, 120, 50, 116, 105, 109, 101, 40, 41, 32, 100, 111, 101, 115, 110, 39, 116, 32, 119, 111, 114, 107, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 97, 108, 115, 111, 32, 108, 97, 116, 101, 114, 44, 32, 112, 97, 114, 101, 110, 116, 32, 112, 114, 111, 98, 97, 98, 108, 121, 32, 115, 104, 111, 117, 108, 100, 32, 98, 101, 32, 112, 97, 115, 115, 101, 100, 32, 105, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 116, 111, 32, 100, 111, 32, 110, 101, 119, 32, 102, 114, 111, 109, 32, 99, 108, 105, 99, 107, 44, 32, 115, 101, 108, 101, 99, 116, 32, 97, 32, 114, 101, 102, 101, 114, 101, 110, 99, 101, 32, 111, 98, 106, 101, 99, 116, 44, 32, 105, 102, 32, 110, 111, 110, 101, 32, 97, 114, 101, 32, 102, 111, 117, 110, 100, 44, 32, 116, 104, 101, 110, 32, 116, 104, 101, 32, 83, 86, 71, 32, 105, 115, 32, 116, 104, 101, 32, 112, 97, 114, 101, 110, 116, 63, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 100, 111, 32, 116, 104, 97, 116, 32, 105, 110, 32, 116, 104, 101, 32, 85, 73, 32, 115, 99, 114, 105, 112, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 112, 105, 120, 50, 116, 105, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 32, 58, 32, 111, 98, 106, 46, 47, 116, 97, 114, 103, 101, 116, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 102, 97, 117, 108, 116, 32, 58, 32, 47, 110, 111, 116, 101, 108, 105, 110, 101, 46, 47, 100, 101, 102, 97, 117, 108, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 100, 40, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 98, 106, 46, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 32, 61, 61, 32, 34, 110, 101, 119, 70, 114, 111, 109, 67, 108, 105, 99, 107, 95, 100, 111, 119, 110, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 105, 116, 99, 104, 32, 58, 32, 115, 99, 97, 108, 101, 40, 32, 111, 98, 106, 46, 47, 120, 121, 91, 91, 49, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 105, 109, 101, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 111, 98, 106, 46, 47, 120, 121, 91, 91, 48, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 114, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 100, 117, 114, 32, 58, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 100, 117, 114, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 97, 109, 112, 32, 58, 32, 100, 101, 102, 97, 117, 108, 116, 46, 47, 97, 109, 112, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 111, 98, 106, 46, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 32, 61, 61, 32, 34, 101, 100, 105, 116, 34, 44, 32, 35, 38, 38, 32, 47, 110, 111, 116, 101, 108, 105, 110, 101, 46, 47, 105, 115, 86, 97, 108, 105, 100, 40, 111, 98, 106, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 32, 58, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 32, 58, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 121, 32, 58, 32, 105, 102, 32, 40, 32, 98, 111, 117, 110, 100, 40, 116, 97, 114, 103, 101, 116, 46, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 97, 112, 112, 108, 121, 84, 114, 97, 110, 115, 102, 111, 114, 109, 40, 32, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 40, 116, 97, 114, 103, 101, 116, 46, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 41, 44, 32, 91, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 120, 44, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 121, 93, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 91, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 120, 44, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 99, 121, 93, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 116, 97, 114, 103, 101, 116, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 105, 116, 99, 104, 32, 58, 32, 115, 99, 97, 108, 101, 40, 32, 120, 121, 91, 91, 49, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 105, 109, 101, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 120, 121, 91, 91, 48, 93, 93, 32, 45, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 45, 32, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 114, 32, 41, 44, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 100, 117, 114, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 40, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 46, 47, 120, 50, 32, 45, 32, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 46, 47, 120, 49, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 97, 109, 112, 32, 58, 32, 115, 99, 97, 108, 101, 40, 110, 111, 116, 101, 104, 101, 97, 100, 46, 47, 114, 44, 32, 53, 46, 44, 32, 50, 48, 46, 44, 32, 48, 46, 44, 32, 49, 48, 48, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 5, 100, 47, 115, 101, 116, 70, 110, 0, 0, 44, 115, 0, 0, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 112, 97, 114, 101, 110, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 50, 112, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 32, 58, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 97, 109, 112, 44, 32, 48, 46, 44, 32, 49, 48, 48, 44, 32, 53, 46, 44, 32, 50, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 32, 43, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 112, 105, 116, 99, 104, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 101, 110, 100, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 100, 117, 114, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 35, 32, 114, 101, 116, 117, 114, 110, 32, 116, 104, 101, 32, 102, 111, 108, 108, 111, 119, 105, 110, 103, 32, 111, 98, 106, 101, 99, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 103, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 32, 58, 32, 91, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 99, 105, 114, 99, 108, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 114, 32, 58, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 121, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 43, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 49, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 49, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 50, 32, 58, 32, 112, 105, 120, 95, 101, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 50, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 92, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 40, 116, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 41, 32, 42, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 1, -84, 47, 110, 101, 119, 86, 105, 101, 119, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -126, -95, 51, 64, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -126, 120, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -124, 88, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 12, 47, 116, 105, 109, 101, 115, 0, 0, 44, 0, 0, 0, 0, 0, 0, -100, 47, 105, 100, 115, 0, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 49, 57, 52, 106, 105, 53, 112, 109, 97, 113, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 122, 110, 112, 56, 48, 105, 115, 109, 122, 98, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 114, 108, 115, 107, 57, 110, 108, 106, 53, 51, 0, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 102, 55, 111, 114, 105, 101, 97, 119, 107, 121, 0, 0, 0, 0, 11, 56, 47, 118, 105, 101, 119, 65, 114, 0, 44, 46, 46, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 81, -42, 102, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 80, -116, -52, -26, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 95, -116, -51, 6, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 49, 57, 52, 106, 105, 53, 112, 109, 97, 113, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 80, 9, -103, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 77, 127, -1, -52, 0, 0, 1, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 93, -65, -1, -26, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 98, 4, -52, -64, 0, 0, 1, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 97, 95, -1, -13, 0, 0, 1, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 104, -32, 0, 3, 0, 0, 1, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -126, -95, 51, 64, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -126, 120, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -124, 88, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 122, 110, 112, 56, 48, 105, 115, 109, 122, 98, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -125, -31, 51, 48, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -125, -73, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -123, -105, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 114, 108, 115, 107, 57, 110, 108, 106, 53, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -125, 33, 51, 64, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -126, -8, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -124, -41, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 102, 55, 111, 114, 105, 101, 97, 119, 107, 121, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 126, 50, 102, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 125, -32, 0, 25, -128, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -128, -48, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 4, -32, 47, 109, 111, 100, 101, 108, 0, 0, 44, 46, 46, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 86, 61, 10, 68, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 87, 106, -86, -44, -86, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 53, 85, 85, 86, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 49, 57, 52, 106, 105, 53, 112, 109, 97, 113, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 89, 41, 112, -93, -41, 10, 62, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 84, 106, -86, 127, 85, 85, 86, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 84, -25, -62, -123, 71, -82, 20, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, 106, -33, -1, -22, 85, 85, 86, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 53, 85, 85, 86, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 88, -71, -82, 20, 122, -31, 72, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -114, 66, -86, -65, -22, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 122, 110, 112, 56, 48, 105, 115, 109, 122, 98, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 83, -10, 122, -31, 71, -82, 20, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -112, 43, -1, -3, 74, -86, -85, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 114, 108, 115, 107, 57, 110, 108, 106, 53, 51, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 80, 28, -11, -62, -113, 92, 41, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -113, 24, 0, 21, 64, 0, 0, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 88, -1, -1, 42, -86, -86, -85, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 102, 55, 111, 114, 105, 101, 97, 119, 107, 121, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 81, 57, 112, -93, -41, 10, 62, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 64, -120, 96, 0, 21, 64, 0, 0, 0, 0, 0, 20, 47, 100, 117, 114, 0, 0, 0, 0, 44, 100, 0, 0, 64, 89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 109, 112, 0, 0, 0, 0, 44, 100, 0, 0, 63, -16, 0, 0, -86, -86, -86, -96, 0, 0, 11, 112, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 11, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 11, 56, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 81, -42, 102, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 80, -116, -52, -26, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 95, -116, -51, 6, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 111, 53, 42, 64, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 49, 57, 52, 106, 105, 53, 112, 109, 97, 113, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 80, 9, -103, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 77, 127, -1, -52, 0, 0, 1, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 93, -65, -1, -26, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 101, -1, -1, -1, -1, -1, -4, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 98, 4, -52, -64, 0, 0, 1, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 97, 95, -1, -13, 0, 0, 1, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 104, -32, 0, 3, 0, 0, 1, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 113, -76, 8, 32, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 118, 108, 101, 100, 111, 97, 109, 55, 116, 48, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -126, -95, 51, 64, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -126, 120, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -124, 88, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 103, 95, -1, -1, -1, -1, -4, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 49, 122, 110, 112, 56, 48, 105, 115, 109, 122, 98, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -125, -31, 51, 48, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -125, -73, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -123, -105, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 115, 48, 0, 0, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 114, 108, 115, 107, 57, 110, 108, 106, 53, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, -125, 33, 51, 64, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, -126, -8, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -124, -41, -1, -4, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 121, 64, 0, 0, 0, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 32, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 95, 117, 95, 50, 102, 55, 111, 114, 105, 101, 97, 119, 107, 121, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 126, 50, 102, -128, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 125, -32, 0, 25, -128, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, -128, -48, 0, 12, -64, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 119, 127, -1, -1, -1, -1, -1, 0, 0, 0, 16, 47, 111, 98, 106, 73, 68, 88, 0, 44, 105, 0, 0, 0, 0, 0, 3 ],
									"saved_bundle_length" : 19244,
									"text" : "/gui : {\n\t/symbolistAction : \"edit\",\n\t/mousedownPos,\n\t/class : \"/noteline\",\n\t/selectedClass : \"/noteline\",\n\t/button : 0,\n\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t/target : {\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t\t/type : \"g\",\n\t\t/transform : \"matrix(1 0 0 1 75 -43)\",\n\t\t/children : [{\n\t\t\t/r : 5.15,\n\t\t\t/class : \"notehead\",\n\t\t\t/type : \"circle\",\n\t\t\t/cx : 416.15,\n\t\t\t/cy : 268\n\t\t}, {\n\t\t\t/x1 : 411,\n\t\t\t/class : \"durationLine\",\n\t\t\t/y2 : 268,\n\t\t\t/type : \"line\",\n\t\t\t/x2 : 471,\n\t\t\t/y1 : 268\n\t\t}]\n\t},\n\t/mods : {\n\t\t/alt : 0,\n\t\t/ctrl : 0,\n\t\t/shift : 0,\n\t\t/meta : 0\n\t},\n\t/xy : [494, 224],\n\t/action : \"mouseup\"\n},\n/transform/getMatrix : \"lambda([matrix_str],\n  if( strfind(\\\"matrix\\\", matrix_str) != -1,\n    float32(split(\\\" \\\", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)\",\n/transform/applyTransform : \"lambda([matrix, xy ],\n  [  matrix[[0]] * xy[[0]] + matrix[[2]] * xy[[1]] + matrix[[4]], \n     matrix[[1]] * xy[[0]] + matrix[[3]] * xy[[1]] + matrix[[5]]\n  ]\n)\",\n/helper/getChildByClass : \"\n    lambda([obj, classname],\n        /found = {},\n        if( bound(obj./children) ,\n            map( lambda([c],\n                    if( c./class == classname,\n                        /found = c\n                    )\n                ), obj./children\n            )\n        ),\n        prog1(\n            /found,\n            delete(/found)\n        )\n    )\n\",\n/parent : {\n\t/x : 10.,\n\t/y : 10.,\n\t/width : 600.,\n\t/height : 800.,\n\t/time/start : 0.,\n\t/time/dur : 1000.,\n\t/time2pix : \"lambda([t],\n        (t / /parent./time/dur) * /parent./width\n    )\",\n\t/pix2time : \"lambda([x],\n        x * (/parent./time/dur / /parent./width)\n    )\"\n},\n/rectangle : {\n\t/default : {\n\n\t},\n\t/set/fromData : {\n\n\t},\n\t/set/fromGUI : {\n\n\t}\n},\n/noteline : {\n\t/default : {\n\t\t/r : 1,\n\t\t/dur : 100,\n\t\t/amp : 1\n\t},\n\t/get/icon : \"\n        lambda([xy],\n            /cx : 1\n        )\n    \",\n\t/set/fromData : \" \n        lambda([obj, parent],\n            /parent_time2pix = /parent./time2pix,\n            let({   notehead_radius : scale(obj./amp, 0., 100, 5., 20.),\n                    pix_pitch_pos : /parent./y + scale(obj./pitch, 0., 127., /parent./height, 0.),\n                    pix_start : /parent./x + /parent_time2pix( obj./time ),\n                    pix_end : /parent./x + /parent_time2pix( obj./time ) + /parent_time2pix( obj./dur )\n                }, # return the following object\n                {\n                    /new : \\\"g\\\",\n                    /class : \\\"/noteline\\\",\n                    /id : obj./id,\n                    /children : [\n                        {\n                            /new : \\\"circle\\\",\n                            /class : \\\"notehead\\\",\n                            /r : notehead_radius,\n                            /cy : pix_pitch_pos,\n                            /cx : pix_start + notehead_radius\n                        },\n                        {\n                            /new : \\\"line\\\",\n                            /class : \\\"durationLine\\\",\n                            /x1 : pix_start ,\n                            /y1 : pix_pitch_pos,\n                            /x2 : pix_end,\n                            /y2 : pix_pitch_pos\n                        }\n                    ]\n                }\n            )\n            \n        )\n    \",\n\t/set/fromGUI : \"\n        lambda([obj, parent],\n            # later: put these in a let function, here now since /parent.pix2time() doesn't work\n            # also later, parent probably should be passed in\n            # to do new from click, select a reference object, if none are found, then the SVG is the parent?\n            # do that in the UI script\n            /parent_pix2time = /parent./pix2time,\n            let({\n                    target : obj./target,\n                    default : /noteline./default\n                },\n                cond(                 \n                    obj./symbolistAction == \\\"newFromClick_down\\\",\n                    {\n                        /class : \\\"/noteline\\\",\n                        /id : obj./id,\n                        /pitch : scale( obj./xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n                        /time : /parent_pix2time( obj./xy[[0]] - /parent./x + default./r ),\n                        /dur : default./dur,\n                        /amp : default./amp\n                    },\n                    obj./symbolistAction == \\\"edit\\\", #&& /noteline./isValid(obj),\n                    let({\n                            notehead : /helper/getChildByClass( target, \\\"notehead\\\" ),\n                            durationLine : /helper/getChildByClass( target, \\\"durationLine\\\" )\n                        },\n                        let({\n                                xy : if ( bound(target./transform),\n                                            /transform/applyTransform( /transform/getMatrix(target./transform), [notehead./cx, notehead./cy] ),\n                                            [notehead./cx, notehead./cy] )\n                            },\n                            {\n                                /class : \\\"/noteline\\\",\n                                /id : target./id,\n                                /pitch : scale( xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n                                /time : /parent_pix2time( xy[[0]] - /parent./x - notehead./r ),  \n                                /dur : /parent_pix2time( durationLine./x2 - durationLine./x1 ),\n                                /amp : scale(notehead./r, 5., 20., 0., 100)\n                            }\n                        )\n\n                    )\n\n                )\n            )\n            \n        )\n    \"\n},\n/objRef : {\n\t/default : {\n\t\t/r : 1,\n\t\t/dur : 100,\n\t\t/amp : 1\n\t},\n\t/get/icon : \"\n        lambda([xy],\n            /cx : 1\n        )\n    \",\n\t/set/fromData : \" \n        lambda([obj, parent],\n            /parent_time2pix = /parent./time2pix,\n            let({   notehead_radius : scale(obj./amp, 0., 100, 5., 20.),\n                    pix_pitch_pos : /parent./y + scale(obj./pitch, 0., 127., /parent./height, 0.),\n                    pix_start : /parent./x + /parent_time2pix( obj./time ),\n                    pix_end : /parent./x + /parent_time2pix( obj./time ) + /parent_time2pix( obj./dur )\n                }, # return the following object\n                {\n                    /new : \\\"g\\\",\n                    /class : \\\"/noteline\\\",\n                    /id : obj./id,\n                    /children : [\n                        {\n                            /new : \\\"circle\\\",\n                            /class : \\\"notehead\\\",\n                            /r : notehead_radius,\n                            /cy : pix_pitch_pos,\n                            /cx : pix_start + notehead_radius\n                        },\n                        {\n                            /new : \\\"line\\\",\n                            /class : \\\"durationLine\\\",\n                            /x1 : pix_start ,\n                            /y1 : pix_pitch_pos,\n                            /x2 : pix_end,\n                            /y2 : pix_pitch_pos\n                        }\n                    ]\n                }\n            )\n            \n        )\n    \",\n\t/set/fromGUI : \"\n        lambda([obj, parent],\n            # later: put these in a let function, here now since /parent.pix2time() doesn't work\n            # also later, parent probably should be passed in\n            # to do new from click, select a reference object, if none are found, then the SVG is the parent?\n            # do that in the UI script\n            /parent_pix2time = /parent./pix2time,\n            let({\n                    target : obj./target,\n                    default : /noteline./default\n                },\n                cond(                 \n                    obj./symbolistAction == \\\"newFromClick_down\\\",\n                    {\n                        /class : \\\"/noteline\\\",\n                        /id : obj./id,\n                        /pitch : scale( obj./xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n                        /time : /parent_pix2time( obj./xy[[0]] - /parent./x + default./r ),\n                        /dur : default./dur,\n                        /amp : default./amp\n                    },\n                    obj./symbolistAction == \\\"edit\\\", #&& /noteline./isValid(obj),\n                    let({\n                            notehead : /helper/getChildByClass( target, \\\"notehead\\\" ),\n                            durationLine : /helper/getChildByClass( target, \\\"durationLine\\\" )\n                        },\n                        let({\n                                xy : if ( bound(target./transform),\n                                            /transform/applyTransform( /transform/getMatrix(target./transform), [notehead./cx, notehead./cy] ),\n                                            [notehead./cx, notehead./cy] )\n                            },\n                            {\n                                /class : \\\"/noteline\\\",\n                                /id : target./id,\n                                /pitch : scale( xy[[1]] - /parent./y, /parent./height, 0., 0., 127.),\n                                /time : /parent_pix2time( xy[[0]] - /parent./x - notehead./r ),  \n                                /dur : /parent_pix2time( durationLine./x2 - durationLine./x1 ),\n                                /amp : scale(notehead./r, 5., 20., 0., 100)\n                            }\n                        )\n\n                    )\n\n                )\n            )\n            \n        )\n    \"\n},\n/setFn : \" \n        lambda([obj, parent],\n            /parent_time2pix = /parent./time2pix,\n            let({   notehead_radius : scale(obj./amp, 0., 100, 5., 20.),\n                    pix_pitch_pos : /parent./y + scale(obj./pitch, 0., 127., /parent./height, 0.),\n                    pix_start : /parent./x + /parent_time2pix( obj./time ),\n                    pix_end : /parent./x + /parent_time2pix( obj./time ) + /parent_time2pix( obj./dur )\n                }, # return the following object\n                {\n                    /new : \\\"g\\\",\n                    /class : \\\"/noteline\\\",\n                    /id : obj./id,\n                    /children : [\n                        {\n                            /new : \\\"circle\\\",\n                            /class : \\\"notehead\\\",\n                            /r : notehead_radius,\n                            /cy : pix_pitch_pos,\n                            /cx : pix_start + notehead_radius\n                        },\n                        {\n                            /new : \\\"line\\\",\n                            /class : \\\"durationLine\\\",\n                            /x1 : pix_start ,\n                            /y1 : pix_pitch_pos,\n                            /x2 : pix_end,\n                            /y2 : pix_pitch_pos\n                        }\n                    ]\n                }\n            )\n            \n        )\n    \",\n/parent_time2pix : \"lambda([t],\n        (t / /parent./time/dur) * /parent./width\n    )\",\n/newView : {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2vledoam7t0\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 187,\n\t\t/cx : 596.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 591,\n\t\t/y1 : 187,\n\t\t/x2 : 651,\n\t\t/y2 : 187\n\t}]\n},\n/times,\n/ids : [\"foo-3\", \"noteline_u_2194ji5pmaq\", \"foo-2\", \"noteline_u_2vledoam7t0\", \"noteline_u_1znp80ismzb\", \"noteline_u_rlsk9nlj53\", \"noteline_u_2f7orieawky\"],\n/viewAr : [{\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-3\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 249.661,\n\t\t/cx : 71.35\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 66.2,\n\t\t/y1 : 249.661,\n\t\t/x2 : 126.2,\n\t\t/y2 : 249.661\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2194ji5pmaq\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 176,\n\t\t/cx : 64.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 59,\n\t\t/y1 : 176,\n\t\t/x2 : 119,\n\t\t/y2 : 176\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-2\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 283.252,\n\t\t/cx : 144.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 139,\n\t\t/y1 : 283.252,\n\t\t/x2 : 199,\n\t\t/y2 : 283.252\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2vledoam7t0\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 187,\n\t\t/cx : 596.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 591,\n\t\t/y1 : 187,\n\t\t/x2 : 651,\n\t\t/y2 : 187\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_1znp80ismzb\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 307.,\n\t\t/cx : 636.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 631,\n\t\t/y1 : 307.,\n\t\t/x2 : 691,\n\t\t/y2 : 307.\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_rlsk9nlj53\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 404.,\n\t\t/cx : 612.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 607,\n\t\t/y1 : 404.,\n\t\t/x2 : 667,\n\t\t/y2 : 404.\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2f7orieawky\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 376,\n\t\t/cx : 483.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 478,\n\t\t/y1 : 376,\n\t\t/x2 : 538,\n\t\t/y2 : 376\n\t}]\n}],\n/model : [{\n\t/class : \"/noteline\",\n\t/id : \"foo-3\",\n\t/pitch : 88.9538,\n\t/time : 93.6667,\n\t/dur : 100,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2194ji5pmaq\",\n\t/pitch : 100.648,\n\t/time : 81.6667,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"foo-2\",\n\t/pitch : 83.6212,\n\t/time : 215,\n\t/dur : 100,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2vledoam7t0\",\n\t/pitch : 98.9013,\n\t/time : 968.333,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_1znp80ismzb\",\n\t/pitch : 79.8512,\n\t/time : 1035,\n\t/dur : 100.,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_rlsk9nlj53\",\n\t/pitch : 64.4525,\n\t/time : 995,\n\t/dur : 99.9999,\n\t/amp : 1\n}, {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_2f7orieawky\",\n\t/pitch : 68.8975,\n\t/time : 780,\n\t/dur : 100.,\n\t/amp : 1\n}],\n/view : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-3\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 249.661,\n\t\t\t/cx : 71.35\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 66.2,\n\t\t\t/y1 : 249.661,\n\t\t\t/x2 : 126.2,\n\t\t\t/y2 : 249.661\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2194ji5pmaq\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 176,\n\t\t\t/cx : 64.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 59,\n\t\t\t/y1 : 176,\n\t\t\t/x2 : 119,\n\t\t\t/y2 : 176\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-2\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 283.252,\n\t\t\t/cx : 144.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 139,\n\t\t\t/y1 : 283.252,\n\t\t\t/x2 : 199,\n\t\t\t/y2 : 283.252\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2vledoam7t0\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 187,\n\t\t\t/cx : 596.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 591,\n\t\t\t/y1 : 187,\n\t\t\t/x2 : 651,\n\t\t\t/y2 : 187\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_1znp80ismzb\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 307.,\n\t\t\t/cx : 636.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 631,\n\t\t\t/y1 : 307.,\n\t\t\t/x2 : 691,\n\t\t\t/y2 : 307.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_rlsk9nlj53\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 404.,\n\t\t\t/cx : 612.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 607,\n\t\t\t/y1 : 404.,\n\t\t\t/x2 : 667,\n\t\t\t/y2 : 404.\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"noteline_u_2f7orieawky\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 376,\n\t\t\t/cx : 483.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 478,\n\t\t\t/y1 : 376,\n\t\t\t/x2 : 538,\n\t\t\t/y2 : 376\n\t\t}]\n\t}]\n},\n/objIDX : 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 48.0, 573.024273455142975, 100.0, 35.0 ],
									"text" : "o.gather.select /model /view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 248.5, 71.0, 22.0 ],
									"text" : "o.print error"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 106.0, 287.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "FullPacket" ],
									"patching_rect" : [ 66.0, 479.0, 103.0, 22.0 ],
									"text" : "o.select /gui /data"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 129.0, 17.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 41.0, 79.0, 1279.0, 937.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 554.0, 925.0, 155.0, 24.0 ],
													"saved_bundle_data" : [  ],
													"saved_bundle_length" : 0
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-18",
													"linecount" : 60,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 986.0, 299.0, 836.0 ],
													"text" : "/gui : {\n\t/action : \"mouseup\",\n\t/target : {\n\t\t/type : \"g\",\n\t\t/transform : \"matrix(1 0 0 1 64 32)\",\n\t\t/children : [{\n\t\t\t/type : \"circle\",\n\t\t\t/cy : 394.252,\n\t\t\t/r : 5.15,\n\t\t\t/class : \"notehead\",\n\t\t\t/cx : 21.15\n\t\t}, {\n\t\t\t/type : \"line\",\n\t\t\t/y1 : 394.252,\n\t\t\t/class : \"durationLine\",\n\t\t\t/y2 : 394.252,\n\t\t\t/x1 : 16,\n\t\t\t/x2 : 76\n\t\t}],\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-2\"\n\t},\n\t/selectedClass : \"/noteline\",\n\t/class : \"/noteline\",\n\t/button : 0,\n\t/symbolistAction : \"edit\",\n\t/mods : {\n\t\t/meta : 0,\n\t\t/shift : 0,\n\t\t/alt : 0,\n\t\t/ctrl : 0\n\t},\n\t/id : \"foo-2\",\n\t/xy : [85, 424]\n},\n/helper/getChildByClass : \"\n    lambda([obj, classname],\n        /found = {},\n        if( bound(obj./children) ,\n            map( lambda([c],\n                    if( c./class == classname,\n                        /found = c\n                    )\n                ), obj./children\n            )\n        ),\n        prog1(\n            /found,\n            delete(/found)\n        )\n    )\n\",\n/foo : {\n\t/type : \"circle\",\n\t/cy : 394.252,\n\t/r : 5.15,\n\t/class : \"notehead\",\n\t/cx : 21.15\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-16",
													"linecount" : 35,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 666.0, 463.0, 301.0, 486.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 47, 103, 117, 105, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 99, 116, 105, 111, 110, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 117, 112, 0, 0, 0, 1, -68, 47, 116, 97, 114, 103, 101, 116, 0, 44, 46, 0, 0, 0, 0, 1, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 40, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 0, 0, 44, 115, 0, 0, 109, 97, 116, 114, 105, 120, 40, 49, 32, 48, 32, 48, 32, 49, 32, 54, 52, 32, 51, 50, 41, 0, 0, 0, 0, 0, 1, 40, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 120, -92, 8, 49, 38, -23, 121, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 53, 38, 102, 102, 102, 102, 102, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 120, -92, 8, 49, 38, -23, 121, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 120, -92, 8, 49, 38, -23, 121, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 16, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 76, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 32, 47, 115, 101, 108, 101, 99, 116, 101, 100, 67, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 98, 117, 116, 116, 111, 110, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 0, 0, 0, 0, 44, 115, 0, 0, 101, 100, 105, 116, 0, 0, 0, 0, 0, 0, 0, 112, 47, 109, 111, 100, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 109, 101, 116, 97, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 104, 105, 102, 116, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 108, 116, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 116, 114, 108, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 16, 47, 120, 121, 0, 44, 105, 105, 0, 0, 0, 0, 85, 0, 0, 1, -88 ],
													"saved_bundle_length" : 800,
													"text" : "/gui : {\n\t/action : \"mouseup\",\n\t/target : {\n\t\t/type : \"g\",\n\t\t/transform : \"matrix(1 0 0 1 64 32)\",\n\t\t/children : [{\n\t\t\t/type : \"circle\",\n\t\t\t/cy : 394.252,\n\t\t\t/r : 5.15,\n\t\t\t/class : \"notehead\",\n\t\t\t/cx : 21.15\n\t\t}, {\n\t\t\t/type : \"line\",\n\t\t\t/y1 : 394.252,\n\t\t\t/class : \"durationLine\",\n\t\t\t/y2 : 394.252,\n\t\t\t/x1 : 16,\n\t\t\t/x2 : 76\n\t\t}],\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-2\"\n\t},\n\t/selectedClass : \"/noteline\",\n\t/class : \"/noteline\",\n\t/button : 0,\n\t/symbolistAction : \"edit\",\n\t/mods : {\n\t\t/meta : 0,\n\t\t/shift : 0,\n\t\t/alt : 0,\n\t\t/ctrl : 0\n\t},\n\t/id : \"foo-2\",\n\t/xy : [85, 424]\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-13",
													"linecount" : 9,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 131.5, 496.0, 219.0, 143.0 ],
													"text" : "/data : {\n\t/class : \"/noteline\",\n\t/id : \"noteline_u_1h6u4bvz8ar\",\n\t/pitch : 92.8688,\n\t/time : 793.333,\n\t/dur : 100.,\n\t/amp : 1\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 130.0, 5400.0, 198.0, 34.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-10",
													"linecount" : 8,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 130.0, 5191.0, 198.0, 127.0 ],
													"text" : "/set/fromGUI = quote(\n    lambda([obj],\n       /test = obj./target\n)),\n\n/set/fromGUI({\n    /target : \"hi\"\n})"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "button",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 293.0, 350.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 239.0, 241.0, 32.0 ],
													"text" : "/data = /setFn( /gui, /context )"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-4",
													"linecount" : 19,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 433.0, 630.0, 428.0, 277.0 ],
													"text" : "/helper/getChildByClass = \"\n    lambda([obj, classname],\n        /found = {},\n        if( bound(obj./children) ,\n            map( lambda([c],\n                    if( c./class == classname,\n                        /found = c\n                    )\n                ), obj./children\n            )\n        ),\n        prog1(\n            /found,\n            delete(/found)\n        )\n    )\n\",\n\n/foo = /helper/getChildByClass( /gui./target, \"notehead\" )"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 310.0, 213.0, 87.0, 22.0 ],
													"text" : "o.select /setFn"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-2",
													"linecount" : 369,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 896.0, 94.0, 762.0, 5027.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 47, 103, 117, 105, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 97, 99, 116, 105, 111, 110, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 117, 112, 0, 0, 0, 1, -68, 47, 116, 97, 114, 103, 101, 116, 0, 44, 46, 0, 0, 0, 0, 1, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 40, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 0, 0, 44, 115, 0, 0, 109, 97, 116, 114, 105, 120, 40, 49, 32, 48, 32, 48, 32, 49, 32, 54, 52, 32, 51, 50, 41, 0, 0, 0, 0, 0, 1, 40, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 120, -92, 8, 32, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -96, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 53, 38, 102, 96, 0, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 120, -92, 8, 32, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 120, -92, 8, 32, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 16, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 76, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 32, 47, 115, 101, 108, 101, 99, 116, 101, 100, 67, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 98, 117, 116, 116, 111, 110, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 115, 121, 109, 98, 111, 108, 105, 115, 116, 65, 99, 116, 105, 111, 110, 0, 0, 0, 0, 44, 115, 0, 0, 101, 100, 105, 116, 0, 0, 0, 0, 0, 0, 0, 112, 47, 109, 111, 100, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 109, 101, 116, 97, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 104, 105, 102, 116, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 97, 108, 116, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 116, 114, 108, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, 16, 47, 120, 121, 0, 44, 105, 105, 0, 0, 0, 0, 85, 0, 0, 1, -88, 0, 0, 0, -76, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 103, 101, 116, 77, 97, 116, 114, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 93, 44, 10, 32, 32, 105, 102, 40, 32, 115, 116, 114, 102, 105, 110, 100, 40, 34, 109, 97, 116, 114, 105, 120, 34, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 33, 61, 32, 45, 49, 44, 10, 32, 32, 32, 32, 102, 108, 111, 97, 116, 51, 50, 40, 115, 112, 108, 105, 116, 40, 34, 32, 34, 44, 32, 115, 116, 114, 99, 104, 97, 114, 40, 32, 97, 115, 101, 113, 40, 55, 44, 32, 115, 116, 114, 108, 101, 110, 40, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 32, 45, 32, 50, 41, 44, 32, 109, 97, 116, 114, 105, 120, 95, 115, 116, 114, 41, 41, 41, 10, 32, 32, 41, 10, 41, 0, 0, 0, 0, 0, 0, 0, -64, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 97, 112, 112, 108, 121, 84, 114, 97, 110, 115, 102, 111, 114, 109, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 109, 97, 116, 114, 105, 120, 44, 32, 120, 121, 32, 93, 44, 10, 32, 32, 91, 32, 32, 109, 97, 116, 114, 105, 120, 91, 91, 48, 93, 93, 32, 42, 32, 120, 121, 91, 91, 48, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 50, 93, 93, 32, 42, 32, 120, 121, 91, 91, 49, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 52, 93, 93, 44, 32, 10, 32, 32, 32, 32, 32, 109, 97, 116, 114, 105, 120, 91, 91, 49, 93, 93, 32, 42, 32, 120, 121, 91, 91, 48, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 51, 93, 93, 32, 42, 32, 120, 121, 91, 91, 49, 93, 93, 32, 43, 32, 109, 97, 116, 114, 105, 120, 91, 91, 53, 93, 93, 10, 32, 32, 93, 10, 41, 0, 0, 0, 1, -128, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 44, 32, 99, 108, 97, 115, 115, 110, 97, 109, 101, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 32, 61, 32, 123, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 98, 111, 117, 110, 100, 40, 111, 98, 106, 46, 47, 99, 104, 105, 108, 100, 114, 101, 110, 41, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 97, 112, 40, 32, 108, 97, 109, 98, 100, 97, 40, 91, 99, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 99, 46, 47, 99, 108, 97, 115, 115, 32, 61, 61, 32, 99, 108, 97, 115, 115, 110, 97, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 32, 61, 32, 99, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 44, 32, 111, 98, 106, 46, 47, 99, 104, 105, 108, 100, 114, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 112, 114, 111, 103, 49, 40, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 102, 111, 117, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 100, 101, 108, 101, 116, 101, 40, 47, 102, 111, 117, 110, 100, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 41, 10, 0, 0, 0, 1, 96, 47, 112, 97, 114, 101, 110, 116, 0, 44, 46, 0, 0, 0, 0, 1, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 0, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 0, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 100, 0, 0, 64, -126, -64, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 104, 101, 105, 103, 104, 116, 0, 44, 100, 0, 0, 64, -119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 105, 109, 101, 47, 115, 116, 97, 114, 116, 0, 44, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 105, 109, 101, 47, 100, 117, 114, 0, 0, 0, 44, 100, 0, 0, 64, -113, 64, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 116, 105, 109, 101, 50, 112, 105, 120, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 40, 116, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 41, 32, 42, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 0, 84, 47, 112, 105, 120, 50, 116, 105, 109, 101, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 120, 32, 42, 32, 40, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 41, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 7, 100, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 44, 46, 0, 0, 0, 0, 7, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 76, 47, 103, 101, 116, 47, 105, 99, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 120, 121, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 49, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 5, 100, 47, 115, 101, 116, 47, 102, 114, 111, 109, 68, 97, 116, 97, 0, 0, 0, 44, 115, 0, 0, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 50, 112, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 32, 58, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 97, 109, 112, 44, 32, 48, 46, 44, 32, 49, 48, 48, 44, 32, 53, 46, 44, 32, 50, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 32, 43, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 112, 105, 116, 99, 104, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 101, 110, 100, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 100, 117, 114, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 35, 32, 114, 101, 116, 117, 114, 110, 32, 116, 104, 101, 32, 102, 111, 108, 108, 111, 119, 105, 110, 103, 32, 111, 98, 106, 101, 99, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 103, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 32, 58, 32, 91, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 99, 105, 114, 99, 108, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 114, 32, 58, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 121, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 43, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 49, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 49, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 50, 32, 58, 32, 112, 105, 120, 95, 101, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 50, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 1, 76, 47, 115, 101, 116, 47, 102, 114, 111, 109, 71, 85, 73, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 108, 97, 116, 101, 114, 58, 32, 112, 117, 116, 32, 116, 104, 101, 115, 101, 32, 105, 110, 32, 97, 32, 108, 101, 116, 32, 102, 117, 110, 99, 116, 105, 111, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 112, 105, 120, 50, 116, 105, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 32, 58, 32, 111, 98, 106, 46, 47, 116, 97, 114, 103, 101, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 101, 115, 116, 32, 61, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 7, 96, 47, 111, 98, 106, 82, 101, 102, 0, 44, 46, 0, 0, 0, 0, 7, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 76, 47, 103, 101, 116, 47, 105, 99, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 120, 121, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 49, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 0, 0, 5, 100, 47, 115, 101, 116, 47, 102, 114, 111, 109, 68, 97, 116, 97, 0, 0, 0, 44, 115, 0, 0, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 50, 112, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 32, 32, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 32, 58, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 97, 109, 112, 44, 32, 48, 46, 44, 32, 49, 48, 48, 44, 32, 53, 46, 44, 32, 50, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 121, 32, 43, 32, 115, 99, 97, 108, 101, 40, 111, 98, 106, 46, 47, 112, 105, 116, 99, 104, 44, 32, 48, 46, 44, 32, 49, 50, 55, 46, 44, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 104, 101, 105, 103, 104, 116, 44, 32, 48, 46, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 112, 105, 120, 95, 101, 110, 100, 32, 58, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 120, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 116, 105, 109, 101, 32, 41, 32, 43, 32, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 40, 32, 111, 98, 106, 46, 47, 100, 117, 114, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 35, 32, 114, 101, 116, 117, 114, 110, 32, 116, 104, 101, 32, 102, 111, 108, 108, 111, 119, 105, 110, 103, 32, 111, 98, 106, 101, 99, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 103, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 47, 110, 111, 116, 101, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 105, 100, 32, 58, 32, 111, 98, 106, 46, 47, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 32, 58, 32, 91, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 99, 105, 114, 99, 108, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 114, 32, 58, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 121, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 120, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 43, 32, 110, 111, 116, 101, 104, 101, 97, 100, 95, 114, 97, 100, 105, 117, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 110, 101, 119, 32, 58, 32, 34, 108, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 99, 108, 97, 115, 115, 32, 58, 32, 34, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 34, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 49, 32, 58, 32, 112, 105, 120, 95, 115, 116, 97, 114, 116, 32, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 49, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 120, 50, 32, 58, 32, 112, 105, 120, 95, 101, 110, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 121, 50, 32, 58, 32, 112, 105, 120, 95, 112, 105, 116, 99, 104, 95, 112, 111, 115, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 1, 76, 47, 115, 101, 116, 47, 102, 114, 111, 109, 71, 85, 73, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 108, 97, 116, 101, 114, 58, 32, 112, 117, 116, 32, 116, 104, 101, 115, 101, 32, 105, 110, 32, 97, 32, 108, 101, 116, 32, 102, 117, 110, 99, 116, 105, 111, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 112, 105, 120, 50, 116, 105, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 32, 58, 32, 111, 98, 106, 46, 47, 116, 97, 114, 103, 101, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 101, 115, 116, 32, 61, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 1, 68, 47, 115, 101, 116, 70, 110, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 32, 32, 108, 97, 109, 98, 100, 97, 40, 91, 111, 98, 106, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 35, 32, 108, 97, 116, 101, 114, 58, 32, 112, 117, 116, 32, 116, 104, 101, 115, 101, 32, 105, 110, 32, 97, 32, 108, 101, 116, 32, 102, 117, 110, 99, 116, 105, 111, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 32, 61, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 112, 105, 120, 50, 116, 105, 109, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 97, 114, 103, 101, 116, 32, 58, 32, 111, 98, 106, 46, 47, 116, 97, 114, 103, 101, 116, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 116, 101, 115, 116, 32, 61, 32, 47, 104, 101, 108, 112, 101, 114, 47, 103, 101, 116, 67, 104, 105, 108, 100, 66, 121, 67, 108, 97, 115, 115, 40, 32, 116, 97, 114, 103, 101, 116, 44, 32, 34, 110, 111, 116, 101, 104, 101, 97, 100, 34, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 41, 10, 32, 32, 32, 32, 0, 0, 0, 0, 92, 47, 112, 97, 114, 101, 110, 116, 95, 116, 105, 109, 101, 50, 112, 105, 120, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 116, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 40, 116, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 41, 32, 42, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 1, -100, 47, 110, 101, 119, 86, 105, 101, 119, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 46, 76, -52, -52, -52, -52, -51, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 96, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 12, 47, 116, 105, 109, 101, 115, 0, 0, 44, 0, 0, 0, 0, 0, 0, 40, 47, 105, 100, 115, 0, 0, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0, 0, 0, 4, -76, 47, 118, 105, 101, 119, 65, 114, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 54, 89, -103, -103, -103, -103, -102, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 49, 51, 51, 51, 51, 51, 51, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 83, 76, -52, -52, -52, -52, -51, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 53, 38, 102, 102, 102, 102, 102, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 46, 76, -52, -52, -52, -52, -51, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 96, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 1, -48, 47, 109, 111, 100, 101, 108, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 20, 47, 112, 105, 116, 99, 104, 0, 0, 44, 100, 0, 0, 64, 80, -11, -62, -113, 92, 40, -10, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 12, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 66, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 64, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0, 0, 0, 4, -20, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 4, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 4, -76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 51, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 54, 89, -103, -103, -103, -103, -102, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 49, 51, 51, 51, 51, 51, 51, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 83, 76, -52, -52, -52, -52, -51, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 119, -22, -107, 42, 84, -87, 82, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 50, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 53, 38, 102, 102, 102, 102, 102, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 120, -92, 8, 16, 32, 64, -127, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0, 0, 0, 1, 48, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 0, 0, 44, 100, 0, 0, 64, 20, -103, -103, -103, -103, -103, -102, 0, 0, 0, 16, 47, 99, 121, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 99, 120, 0, 44, 100, 0, 0, 64, 46, 76, -52, -52, -52, -52, -51, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 100, 117, 114, 97, 116, 105, 111, 110, 76, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 49, 0, 44, 100, 0, 0, 64, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 49, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 120, 50, 0, 44, 100, 0, 0, 64, 96, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 50, 0, 44, 100, 0, 0, 64, 121, 109, -101, 54, 108, -39, -77, 0, 0, 0, 16, 47, 111, 98, 106, 73, 68, 88, 0, 44, 105, 0, 0, -1, -1, -1, -1, 0, 0, 0, 92, 47, 112, 97, 114, 101, 110, 116, 95, 112, 105, 120, 50, 116, 105, 109, 101, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 109, 98, 100, 97, 40, 91, 120, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 120, 32, 42, 32, 40, 47, 112, 97, 114, 101, 110, 116, 46, 47, 116, 105, 109, 101, 47, 100, 117, 114, 32, 47, 32, 47, 112, 97, 114, 101, 110, 116, 46, 47, 119, 105, 100, 116, 104, 41, 10, 32, 32, 32, 32, 41, 0, 0, 0, 0, 0, 32, 47, 116, 101, 115, 116, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 100, 97, 116, 97, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
													"saved_bundle_length" : 9740,
													"text" : "/gui : {\n\t/action : \"mouseup\",\n\t/target : {\n\t\t/type : \"g\",\n\t\t/transform : \"matrix(1 0 0 1 64 32)\",\n\t\t/children : [{\n\t\t\t/type : \"circle\",\n\t\t\t/cy : 394.252,\n\t\t\t/r : 5.15,\n\t\t\t/class : \"notehead\",\n\t\t\t/cx : 21.15\n\t\t}, {\n\t\t\t/type : \"line\",\n\t\t\t/y1 : 394.252,\n\t\t\t/class : \"durationLine\",\n\t\t\t/y2 : 394.252,\n\t\t\t/x1 : 16,\n\t\t\t/x2 : 76\n\t\t}],\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-2\"\n\t},\n\t/selectedClass : \"/noteline\",\n\t/class : \"/noteline\",\n\t/button : 0,\n\t/symbolistAction : \"edit\",\n\t/mods : {\n\t\t/meta : 0,\n\t\t/shift : 0,\n\t\t/alt : 0,\n\t\t/ctrl : 0\n\t},\n\t/id : \"foo-2\",\n\t/xy : [85, 424]\n},\n/transform/getMatrix : \"lambda([matrix_str],\n  if( strfind(\\\"matrix\\\", matrix_str) != -1,\n    float32(split(\\\" \\\", strchar( aseq(7, strlen(matrix_str) - 2), matrix_str)))\n  )\n)\",\n/transform/applyTransform : \"lambda([matrix, xy ],\n  [  matrix[[0]] * xy[[0]] + matrix[[2]] * xy[[1]] + matrix[[4]], \n     matrix[[1]] * xy[[0]] + matrix[[3]] * xy[[1]] + matrix[[5]]\n  ]\n)\",\n/helper/getChildByClass : \"\n    lambda([obj, classname],\n        /found = {},\n        if( bound(obj./children) ,\n            map( lambda([c],\n                    if( c./class == classname,\n                        /found = c\n                    )\n                ), obj./children\n            )\n        ),\n        prog1(\n            /found,\n            delete(/found)\n        )\n    )\n\",\n/parent : {\n\t/x : 10.,\n\t/y : 10.,\n\t/width : 600.,\n\t/height : 800.,\n\t/time/start : 0.,\n\t/time/dur : 1000.,\n\t/time2pix : \"lambda([t],\n        (t / /parent./time/dur) * /parent./width\n    )\",\n\t/pix2time : \"lambda([x],\n        x * (/parent./time/dur / /parent./width)\n    )\"\n},\n/noteline : {\n\t/r : 1,\n\t/dur : 100,\n\t/amp : 1,\n\t/get/icon : \"\n        lambda([xy],\n            /cx : 1\n        )\n    \",\n\t/set/fromData : \" \n        lambda([obj],\n            /parent_time2pix = /parent./time2pix,\n            let({   notehead_radius : scale(obj./amp, 0., 100, 5., 20.),\n                    pix_pitch_pos : /parent./y + scale(obj./pitch, 0., 127., /parent./height, 0.),\n                    pix_start : /parent./x + /parent_time2pix( obj./time ),\n                    pix_end : /parent./x + /parent_time2pix( obj./time ) + /parent_time2pix( obj./dur )\n                }, # return the following object\n                {\n                    /new : \\\"g\\\",\n                    /class : \\\"/noteline\\\",\n                    /id : obj./id,\n                    /children : [\n                        {\n                            /new : \\\"circle\\\",\n                            /class : \\\"notehead\\\",\n                            /r : notehead_radius,\n                            /cy : pix_pitch_pos,\n                            /cx : pix_start + notehead_radius\n                        },\n                        {\n                            /new : \\\"line\\\",\n                            /class : \\\"durationLine\\\",\n                            /x1 : pix_start ,\n                            /y1 : pix_pitch_pos,\n                            /x2 : pix_end,\n                            /y2 : pix_pitch_pos\n                        }\n                    ]\n                }\n            )\n            \n        )\n    \",\n\t/set/fromGUI : \"\n        lambda([obj],\n            # later: put these in a let function\n            /parent_pix2time = /parent./pix2time,\n            let({\n                    target : obj./target\n                },\n                /test = /helper/getChildByClass( target, \\\"notehead\\\" )\n            )\n            \n        )\n    \"\n},\n/objRef : {\n\t/r : 1,\n\t/dur : 100,\n\t/amp : 1,\n\t/get/icon : \"\n        lambda([xy],\n            /cx : 1\n        )\n    \",\n\t/set/fromData : \" \n        lambda([obj],\n            /parent_time2pix = /parent./time2pix,\n            let({   notehead_radius : scale(obj./amp, 0., 100, 5., 20.),\n                    pix_pitch_pos : /parent./y + scale(obj./pitch, 0., 127., /parent./height, 0.),\n                    pix_start : /parent./x + /parent_time2pix( obj./time ),\n                    pix_end : /parent./x + /parent_time2pix( obj./time ) + /parent_time2pix( obj./dur )\n                }, # return the following object\n                {\n                    /new : \\\"g\\\",\n                    /class : \\\"/noteline\\\",\n                    /id : obj./id,\n                    /children : [\n                        {\n                            /new : \\\"circle\\\",\n                            /class : \\\"notehead\\\",\n                            /r : notehead_radius,\n                            /cy : pix_pitch_pos,\n                            /cx : pix_start + notehead_radius\n                        },\n                        {\n                            /new : \\\"line\\\",\n                            /class : \\\"durationLine\\\",\n                            /x1 : pix_start ,\n                            /y1 : pix_pitch_pos,\n                            /x2 : pix_end,\n                            /y2 : pix_pitch_pos\n                        }\n                    ]\n                }\n            )\n            \n        )\n    \",\n\t/set/fromGUI : \"\n        lambda([obj],\n            # later: put these in a let function\n            /parent_pix2time = /parent./pix2time,\n            let({\n                    target : obj./target\n                },\n                /test = /helper/getChildByClass( target, \\\"notehead\\\" )\n            )\n            \n        )\n    \"\n},\n/setFn : \"\n        lambda([obj],\n            # later: put these in a let function\n            /parent_pix2time = /parent./pix2time,\n            let({\n                    target : obj./target\n                },\n                /test = /helper/getChildByClass( target, \\\"notehead\\\" )\n            )\n            \n        )\n    \",\n/parent_time2pix : \"lambda([t],\n        (t / /parent./time/dur) * /parent./width\n    )\",\n/newView : {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-1\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 406.85,\n\t\t/cx : 15.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 10.,\n\t\t/y1 : 406.85,\n\t\t/x2 : 130.,\n\t\t/y2 : 406.85\n\t}]\n},\n/times,\n/ids : [\"foo-3\", \"foo-2\", \"foo-1\"],\n/viewAr : [{\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-3\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 382.661,\n\t\t/cx : 22.35\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 17.2,\n\t\t/y1 : 382.661,\n\t\t/x2 : 77.2,\n\t\t/y2 : 382.661\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-2\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 394.252,\n\t\t/cx : 21.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 16.,\n\t\t/y1 : 394.252,\n\t\t/x2 : 76.,\n\t\t/y2 : 394.252\n\t}]\n}, {\n\t/new : \"g\",\n\t/class : \"/noteline\",\n\t/id : \"foo-1\",\n\t/children : [{\n\t\t/new : \"circle\",\n\t\t/class : \"notehead\",\n\t\t/r : 5.15,\n\t\t/cy : 406.85,\n\t\t/cx : 15.15\n\t}, {\n\t\t/new : \"line\",\n\t\t/class : \"durationLine\",\n\t\t/x1 : 10.,\n\t\t/y1 : 406.85,\n\t\t/x2 : 130.,\n\t\t/y2 : 406.85\n\t}]\n}],\n/model : [{\n\t/class : \"/noteline\",\n\t/pitch : 67.84,\n\t/amp : 1,\n\t/time : 12,\n\t/dur : 100,\n\t/id : \"foo-3\"\n}, {\n\t/class : \"/noteline\",\n\t/pitch : 66,\n\t/amp : 1,\n\t/time : 10,\n\t/dur : 100,\n\t/id : \"foo-2\"\n}, {\n\t/class : \"/noteline\",\n\t/pitch : 64,\n\t/amp : 1,\n\t/time : 0,\n\t/dur : 200,\n\t/id : \"foo-1\"\n}],\n/view : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-3\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 382.661,\n\t\t\t/cx : 22.35\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 17.2,\n\t\t\t/y1 : 382.661,\n\t\t\t/x2 : 77.2,\n\t\t\t/y2 : 382.661\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-2\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 394.252,\n\t\t\t/cx : 21.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 16.,\n\t\t\t/y1 : 394.252,\n\t\t\t/x2 : 76.,\n\t\t\t/y2 : 394.252\n\t\t}]\n\t}, {\n\t\t/new : \"g\",\n\t\t/class : \"/noteline\",\n\t\t/id : \"foo-1\",\n\t\t/children : [{\n\t\t\t/new : \"circle\",\n\t\t\t/class : \"notehead\",\n\t\t\t/r : 5.15,\n\t\t\t/cy : 406.85,\n\t\t\t/cx : 15.15\n\t\t}, {\n\t\t\t/new : \"line\",\n\t\t\t/class : \"durationLine\",\n\t\t\t/x1 : 10.,\n\t\t\t/y1 : 406.85,\n\t\t\t/x2 : 130.,\n\t\t\t/y2 : 406.85\n\t\t}]\n\t}]\n},\n/objIDX : -1,\n/parent_pix2time : \"lambda([x],\n        x * (/parent./time/dur / /parent./width)\n    )\",\n/test : {\n\n},\n/data : {\n\n}"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 50.0, 345.0, 100.0, 22.0 ],
													"text" : "o.select /data"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 7,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 284.0, 114.0 ],
													"text" : "# get object by type\n/objRef = value(/gui./class),\n\n# get set from data function\n/setFn = /objRef./set/fromGUI,\n\n/context = /parent"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 427.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 0,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"fontname" : [ "Arial" ],
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontface" : [ 2 ],
													"fontsize" : [ 11.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ],
													"fontsize" : [ 15.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 12.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
,
									"patching_rect" : [ 192.0, 256.5, 190.0, 29.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p make data from view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 48.0, 447.5, 29.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 48.0, 141.0, 100.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 641.0, 123.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 189.0, 244.0, 176.0, 32.0 ],
													"text" : "/route = \"data\""
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-34",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 163.0, 195.0, 198.0, 32.0 ],
													"text" : "/error = \"requires /class\""
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 163.0, 126.0, 176.0, 32.0 ],
													"text" : "/error = \"requires /id\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 171.0, 150.0, 22.0 ],
													"text" : "o.cond bound(/data./class)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 132.0, 22.0 ],
													"text" : "o.cond bound(/data./id)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-35",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 287.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-37",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 202.0, 317.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-14", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 48.0, 208.0, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p id/class check"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 7,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 446.0, 131.0 ],
													"text" : "# get object by type\n/objRef = value(/data./class),\n\n# get set from data function\n/setFn = /objRef./set/fromData,\n\n/newView = /setFn( /data )"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-27",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-28",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 291.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 48.0, 360.0, 190.0, 29.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p make view from data"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 737.0, 662.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 202.0, 40.0, 290.0, 33.0 ],
													"text" : "problem maybe, that we don't separate out updates to the view to reduce draw messages to the client"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-23",
													"linecount" : 28,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 97.0, 516.0, 413.0 ],
													"text" : "/times ??= [],\n/ids ??= [],\n\n\nif( length(/ids) == 0,\n  progn(\n    /ids = /data./id,\n    /viewAr = /newView,\n    /model = /data\n  ),\n  progn(\n    /objIDX = max( aseq(1,length(/ids)) * (/data./id == /ids) ) - 1,\n    if( /objIDX == -1,\n      progn(\n        /ids = [/ids, /data./id],\n        /viewAr = [ /viewAr, /newView ],\n        /model = [/model, /data]\n      ),\n      progn(\n        /viewAr[[/objIDX]] = /newView,\n        /model[[/objIDX]] = /data\n      )\n    )\n  )\n),\n\n/view./key = \"svg\",\n/view./val = /viewAr\n"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-24",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 573.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 48.0, 408.0, 128.0, 29.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p add to model"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 48.0, 172.5, 307.0, 22.0 ],
									"text" : "o.cond bound(/data) \\, bound(/gui)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 48.0, 37.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 48.0, 678.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 201.5, 321.5, 441.5, 321.5, 441.5, 109.0, 57.5, 109.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"order" : 0,
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"midpoints" : [ 159.5, 533.5, 544.5, 533.5, 544.5, 66.0, 138.5, 66.0 ],
									"source" : [ "obj-6", 2 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 420.0, 327.024273455142975, 84.281553983688354, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p create model & view"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-7",
					"linecount" : 6,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 57.0, 77.990291714668331, 172.0, 92.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 47, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 112, 105, 116, 99, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 64, 0, 0, 0, 16, 47, 97, 109, 112, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 116, 105, 109, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 0, 0, 0 ],
					"saved_bundle_length" : 144,
					"text" : "/class : \"/noteline\",\n/pitch : 64,\n/amp : 1,\n/time : 0,\n/dur : 200,\n/id : \"foo-1\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 420.0, 183.999999714668263, 89.0, 22.0 ],
					"text" : "o.pack /data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 654.0, 153.0, 640.0, 480.0 ],
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
									"id" : "obj-35",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 83.000008649406425, 215.0, 174.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -16, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 112, 108, 97, 121, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 52, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
									"saved_bundle_length" : 260,
									"text" : "/view : [{\n\t/key : \"clear\",\n\t/val : \"*\"\n}, {\n\t/key : \"css\",\n\t/val : {\n\t\t/selector : \".playhead\",\n\t\t/props : {\n\t\t\t/stroke : \"red\"\n\t\t}\n\t}\n}]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.00000125169754, 40.000008649406425, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-90",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 303.000008649406425, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
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
,
					"patching_rect" : [ 664.769229292869568, 296.999999999999943, 91.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p clear/init view"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 421.140776991844177, 838.5, 73.0, 22.0 ],
					"text" : "o.pack /gui"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 651.769229292869568, 217.999999714668263, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 511.0, 528.5, 64.0, 22.0 ],
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
					"patching_rect" : [ 438.0, 528.5, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "", "" ],
					"patching_rect" : [ 420.0, 578.0, 136.0, 22.0 ],
					"text" : "hfmt.drawsocket ../node"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 420.0, 391.024273455142975, 120.0, 22.0 ],
					"text" : "o.select /view /model"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"order" : 1,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
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
					"destination" : [ "obj-43", 0 ],
					"order" : 0,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"order" : 1,
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
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
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 619.781553983688354, 553.0, 1111.640776991844177, 553.0, 1111.640776991844177, 157.0, 429.5, 157.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 1 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 546.5, 649.0, 643.754384517669678, 649.0, 643.754384517669678, 567.0, 429.5, 567.0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 1 ],
					"order" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"order" : 1,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"order" : 1,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 2,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 2 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"midpoints" : [ 430.640776991844177, 885.878642320632935, 394.5, 885.878642320632935, 394.5, 302.5, 429.5, 302.5 ],
					"order" : 0,
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 1,
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-91", 0 ]
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
				"name" : "o.gather.select.maxpat",
				"bootpath" : "~/Documents/dev-lib/CNMAT-odot/patchers/namespace",
				"patcherrelativepath" : "../../CNMAT-odot/patchers/namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
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
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.if.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.listenumerate.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.file.mxo",
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
