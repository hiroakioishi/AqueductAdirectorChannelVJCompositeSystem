{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 3,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"rect" : [ 323.0, 1134.0, 578.0, 406.0 ],
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
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 45.0, 103.0, 20.0 ],
					"style" : "",
					"text" : "@author irishoak"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 45.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "@eventDate 2018/08/25"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 276.0, 45.0, 150.0, 20.0 ],
					"style" : "",
					"text" : "@update 2018/09/03"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 255.0, 150.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 494.5, 105.0, 60.0, 22.0 ],
					"style" : "",
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.5, 165.0, 61.0, 22.0 ],
					"style" : "",
					"text" : "127.0.0.1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 105.0, 75.0, 20.0 ],
					"style" : "",
					"text" : "Audio"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 494.5, 149.0, 37.0, 22.0 ],
					"style" : "",
					"text" : "60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 434.5, 150.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 373.5, 150.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.0, 150.0, 38.0, 22.0 ],
					"style" : "",
					"text" : "1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "number",
					"maximum" : 60,
					"minimum" : 15,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 494.5, 180.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-21",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 434.5, 180.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-20",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 374.5, 180.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-19",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 315.0, 180.0, 50.0, 22.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 255.0, 180.0, 30.0, 30.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "jit.pwindow",
					"name" : "u231013141",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 397.5, 255.0, 135.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "jit.pwindow",
					"name" : "u741013147",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 255.0, 255.0, 135.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 105.0, 75.0, 20.0 ],
					"style" : "",
					"text" : "Settings"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.97442, 0.0, 1.0 ],
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 360.0, 166.0, 22.0 ],
					"style" : "",
					"text" : "imageEffectController.maxpat"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 300.0, 75.0, 20.0 ],
					"style" : "",
					"text" : "Controller"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 300.0, 75.0, 20.0 ],
					"style" : "",
					"text" : "Manager"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 135.0, 94.0, 22.0 ],
					"style" : "",
					"text" : "192.168.200.20"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 255.0, 174.0, 22.0 ],
					"style" : "",
					"text" : "s osc_host_composite_system"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.615686, 0.552941, 0.827451, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 330.0, 198.0, 22.0 ],
					"style" : "",
					"text" : "compositeSystemController.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 255.0, 360.0, 170.0, 22.0 ],
					"style" : "",
					"text" : "nanoKontrol2Manager.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 255.0, 330.0, 118.0, 22.0 ],
					"style" : "",
					"text" : "oscManager.maxpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "jit_matrix", "jit_matrix" ],
					"patching_rect" : [ 255.0, 225.0, 126.0, 22.0 ],
					"style" : "",
					"text" : "audioDetector.maxpat"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"fontface" : 1,
					"fontsize" : 18.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 540.0, 27.0 ],
					"style" : "",
					"text" : "Aqueduct Adirector Channel VJ Composite System",
					"textcolor" : [ 1.0, 0.213769, 0.464832, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 3 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 4 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"order" : 3,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 2,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 1,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"order" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 4,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11::obj-24" : [ "live.slider[7]", "value", 0 ],
			"obj-11::obj-277" : [ "live.slider[53]", "saturation scale", 0 ],
			"obj-11::obj-96" : [ "live.tab[11]", "live.tab", 0 ],
			"obj-6::obj-68" : [ "live.tab[15]", "live.tab[1]", 0 ],
			"obj-11::obj-192" : [ "live.tab[12]", "live.tab", 0 ],
			"obj-11::obj-278" : [ "live.slider[57]", "hue offset", 0 ],
			"obj-11::obj-71" : [ "live.slider[52]", "random threshold", 0 ],
			"obj-11::obj-84" : [ "live.slider[8]", "speed", 0 ],
			"obj-11::obj-122" : [ "live.slider[22]", "speed", 0 ],
			"obj-11::obj-109" : [ "live.tab[2]", "live.tab", 0 ],
			"obj-11::obj-279" : [ "live.slider[72]", "hue scale", 0 ],
			"obj-11::obj-121" : [ "live.slider[21]", "frequency", 0 ],
			"obj-11::obj-75" : [ "live.tab[17]", "live.tab", 0 ],
			"obj-11::obj-70" : [ "live.slider[56]", "trigger threshold", 0 ],
			"obj-11::obj-291" : [ "live.slider[49]", "trigger threshold", 0 ],
			"obj-11::obj-29" : [ "live.tab[23]", "live.tab", 0 ],
			"obj-11::obj-297" : [ "live.slider[59]", "value scale", 0 ],
			"obj-11::obj-112" : [ "live.slider[18]", "random threshold", 0 ],
			"obj-11::obj-51" : [ "value[9]", "R", 0 ],
			"obj-11::obj-174" : [ "live.slider[27]", "trigger threshold", 0 ],
			"obj-11::obj-79" : [ "value[10]", "value", 0 ],
			"obj-11::obj-10" : [ "live.slider[3]", "linear scale", 0 ],
			"obj-11::obj-78" : [ "live.slider[51]", "random threshold", 0 ],
			"obj-11::obj-131" : [ "live.slider[26]", "cell size", 0 ],
			"obj-11::obj-100" : [ "live.slider[15]", "value", 0 ],
			"obj-11::obj-33" : [ "live.slider[71]", "random threshold", 0 ],
			"obj-11::obj-166" : [ "live.slider[41]", "trigger threshold", 0 ],
			"obj-11::obj-264" : [ "live.tab[26]", "live.tab", 0 ],
			"obj-11::obj-265" : [ "live.slider[29]", "offset", 0 ],
			"obj-11::obj-68" : [ "live.tab[25]", "live.tab", 0 ],
			"obj-11::obj-154" : [ "live.slider[37]", "fill rate", 0 ],
			"obj-11::obj-272" : [ "live.slider[45]", "rate", 0 ],
			"obj-11::obj-168" : [ "value[3]", "value", 0 ],
			"obj-11::obj-155" : [ "live.slider[38]", "trigger threshold", 0 ],
			"obj-11::obj-97" : [ "live.slider[12]", "linear scale", 0 ],
			"obj-11::obj-111" : [ "live.slider[17]", "trigger threshold", 0 ],
			"obj-11::obj-22" : [ "live.slider[5]", "trigger threshold", 0 ],
			"obj-11::obj-77" : [ "live.slider[69]", "trigger threshold", 0 ],
			"obj-11::obj-156" : [ "live.slider[39]", "random threshold", 0 ],
			"obj-11::obj-23" : [ "live.slider[6]", "random threshold", 0 ],
			"obj-11::obj-14" : [ "value[2]", "offset", 0 ],
			"obj-11::obj-113" : [ "live.slider[19]", "value", 0 ],
			"obj-11::obj-7" : [ "live.slider[1]", "random threshold", 0 ],
			"obj-11::obj-233" : [ "live.tab[13]", "live.tab", 0 ],
			"obj-11::obj-85" : [ "live.slider[9]", "offset", 0 ],
			"obj-11::obj-267" : [ "live.slider[31]", "random threshold", 0 ],
			"obj-11::obj-120" : [ "live.slider[20]", "amplitude", 0 ],
			"obj-11::obj-146" : [ "live.slider[36]", "value", 0 ],
			"obj-11::obj-32" : [ "live.slider[47]", "trigger threshold", 0 ],
			"obj-11::obj-50" : [ "value[8]", "A", 0 ],
			"obj-11::obj-292" : [ "live.slider[50]", "random threshold", 0 ],
			"obj-11::obj-21" : [ "live.slider[4]", "linear scale", 0 ],
			"obj-11::obj-19" : [ "live.tab", "live.tab", 0 ],
			"obj-11::obj-99" : [ "live.slider[14]", "random threshold", 0 ],
			"obj-11::obj-298" : [ "live.slider[60]", "saturation offset", 0 ],
			"obj-11::obj-165" : [ "live.slider[40]", "linear scale", 0 ],
			"obj-11::obj-49" : [ "value[11]", "value", 0 ],
			"obj-11::obj-153" : [ "live.tab[9]", "live.tab", 0 ],
			"obj-6::obj-67" : [ "live.tab[18]", "live.tab[1]", 0 ],
			"obj-11::obj-273" : [ "live.slider[46]", "rate linear scale", 0 ],
			"obj-11::obj-289" : [ "live.tab[14]", "live.tab", 0 ],
			"obj-11::obj-3" : [ "value[1]", "offset", 0 ],
			"obj-11::obj-20" : [ "live.tab[1]", "live.tab", 0 ],
			"obj-11::obj-110" : [ "live.slider[16]", "linear scale", 0 ],
			"obj-11::obj-296" : [ "live.slider[58]", "value offset", 0 ],
			"obj-11::obj-271" : [ "live.slider[44]", "frequency", 0 ],
			"obj-11::obj-130" : [ "live.slider[25]", "random threshold", 0 ],
			"obj-11::obj-8" : [ "live.slider[2]", "trigger threshold", 0 ],
			"obj-11::obj-230" : [ "live.slider[43]", "amp", 0 ],
			"obj-11::obj-38" : [ "value[5]", "step", 0 ],
			"obj-11::obj-175" : [ "live.slider[28]", "random threshold", 0 ],
			"obj-11::obj-37" : [ "value[4]", "inverse", 0 ],
			"obj-11::obj-6" : [ "value", "value", 0 ],
			"obj-11::obj-127" : [ "live.tab[6]", "live.tab", 0 ],
			"obj-11::obj-167" : [ "live.slider[42]", "random threshold", 0 ],
			"obj-6::obj-84" : [ "live.tab[3]", "live.tab[1]", 0 ],
			"obj-11::obj-128" : [ "live.slider[23]", "linear scale", 0 ],
			"obj-11::obj-266" : [ "live.slider[30]", "trigger threshold", 0 ],
			"obj-11::obj-129" : [ "live.slider[24]", "trigger threshold", 0 ],
			"obj-11::obj-98" : [ "live.slider[13]", "trigger threshold", 0 ],
			"obj-11::obj-69" : [ "live.slider[66]", "linear scale", 0 ],
			"obj-11::obj-164" : [ "live.tab[10]", "live.tab", 0 ],
			"obj-11::obj-72" : [ "live.slider[76]", "value", 0 ],
			"obj-11::obj-293" : [ "live.slider[54]", "value", 0 ]
		}
,
		"dependency_cache" : [ 			{
				"name" : "audioDetector.maxpat",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "oscManager.maxpat",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nanoKontrol2Manager.maxpat",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "compositeSystemController.maxpat",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "switchScene.js",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "imageEffectController.maxpat",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "frameOffset.js",
				"bootpath" : "~/Documents/teamLab/hoishi/github/AqueductAdirectorChannelVJCompositeSystem/Controller/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
