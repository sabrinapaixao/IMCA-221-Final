{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 174.0, 94.0, 1407.0, 856.0 ],
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
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 608.0, 459.0, 127.0 ],
					"text" : "Set Designer is a video game that in theory allows a player to design and decorate rooms to their liking. Taking inspiration from interior design and makeover video games I used to play on desktops in elementary school, Set Designer shows the aftermath of what a hypothetical player's curated space has ended up looking like. This project is therefore the part where players can move their avatar around the world. This piece also has potential for being a functional tool for me as someone who is studying Studio Art as well as Film and Moving Image Studies, as production design is a part of my practice. I could use this max patch as a model for testing and analyzing future set creations."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 138.0, 144.0, 348.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 138.0, 144.0, 348.0, 20.0 ],
					"text" : "< anim_reset messgae= restes camera back to starting postion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 234.0, 176.0, 466.0, 47.0 ],
					"presentation" : 1,
					"presentation_linecount" : 3,
					"presentation_rect" : [ 234.0, 176.0, 466.0, 47.0 ],
					"text" : "<jit.anim.drive @ui_listen 1= move camera manually via keyboard through W (move forward), A (move left), S (move backwards), D (move right), Q (move up), Z (move down) keys + rotate around with mouse *must click on floating world for this to work"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.0, 252.0, 404.0, 74.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 48.0, 252.0, 404.0, 74.0 ],
					"text" : "^ -jit.gl.camera= camera used as the point of view of the 'avatar' walking through the world (linked through the setDesign name)\n-@position= 0 0 5 to have the camera/avatar be positioned farther away from shapes, so we can naviagte through the world\n-@tripod 1= camera stays stabalized without tilting when moving around"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 138.0, 403.0, 171.0, 100.0 ],
					"presentation" : 1,
					"presentation_linecount" : 7,
					"presentation_rect" : [ 138.0, 403.0, 171.0, 100.0 ],
					"text" : "patcher objects= create storage to store other subpatches within a patch (categorized them based on the seperate rooms in the world to prevent things from getting messy) "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 914.0, 500.0, 396.0, 74.0 ],
					"presentation" : 1,
					"presentation_linecount" : 5,
					"presentation_rect" : [ 1022.0, 535.0, 396.0, 74.0 ],
					"text" : "-playlist object= holds the video game music, and is set to play on a loop (is stretched out so you can see which part of the playlist is playing & can -adjust it play a different part if desired)\n-gain object= allows the volume of te music to be adjusted\n-ezdac object= when turned on, it allows the music to be heard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 751.0, 606.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 762.0, 456.0, 22.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"clipheight" : 34.0,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "audio4setDesigner.wav",
								"filename" : "audio4setDesigner.wav",
								"filekind" : "audiofile",
								"id" : "u214012266",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-6",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 757.0, 407.0, 654.0, 35.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 816.0, 225.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 87.0, 1260.0, 874.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 535.0, 325.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 93.0, 535.0, 325.0, 20.0 ],
									"text" : "through the matrix, it creates the geometric shapes/models "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-145",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 535.0, 78.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 12.0, 535.0, 78.0, 20.0 ],
									"text" : "jit.gl.mesh="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 170.0, 576.0, 210.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 170.0, 576.0, 210.0, 20.0 ],
									"text" : "renders the vertices of the geometry"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-136",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 576.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 576.0, 160.0, 20.0 ],
									"text" : "-@draw_mode triangles= "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 556.0, 392.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 93.0, 556.0, 392.0, 20.0 ],
									"text" : "allows the image and color of the 3D model to be visible instead of grey"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 556.0, 90.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 556.0, 90.0, 20.0 ],
									"text" : "-Matrixouput="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 513.0, 432.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 513.0, 432.0, 20.0 ],
									"text" : "-I also used the @texture attribute for the models to put an image on them"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 491.0, 422.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 12.0, 491.0, 422.5, 20.0 ],
									"text" : "            sends a bang each time jit.gl.model emits it's matrix (to get image)  "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 491.0, 45.0, 20.0 ],
									"text" : "-t l b="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 429.0, 676.5, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 9.0, 429.0, 676.5, 60.0 ],
									"text" : "                        used to import 3D model files (with the setDesign name to link model into that world, and attributes to change it's rotation, position, and scale)\n-read [file name], [file type], bang message= imports the model into max and the bang imports it into the jit.world\n      -I imported my 3D model files into Max's file browser so they can be easily found"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-102",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 429.0, 83.0, 20.0 ],
									"text" : "-jit.gl.model="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 157.0, 1633.0, 777.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 157.0, 1633.0, 777.0, 60.0 ],
									"text" : "^I created 2 small planes with images of a shower handle and shower head on them to place right next to the ceramic wall (so th epixles don't interfere with one another).  I added them seperately so I could have more control over their positions, where as if I edited them onto the image of ther ceramic, the texture attribute would have stretched the image out and made the shower head and handle stretch as well and their positions would be harder to control... as i continue to work on this project in the future I will replace them with 3D models"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 927.0, 1338.0, 338.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 927.0, 1338.0, 338.0, 47.0 ],
									"text" : "<-- I used poly_mode 1 1 to create a more interesting look for the shower's glass walls. the 1 1 setting shows the vertices of the shape, making the triangles visible"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 299.0, 1257.0, 362.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 299.0, 1257.0, 362.0, 20.0 ],
									"text" : "^planes the cover the brick wall with ceramic image for the texture"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 410.0, 1773.0, 284.0, 100.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 410.0, 1773.0, 284.0, 100.0 ],
									"text" : "for this I used a 3D model but didn't put a texture image over it since the ones that came with the models were individually in multiple files and ultimately the image files I was able to activate looked bad or too realisti and not on themes with te cartoon-ish visuals of the other objects, so I just left the color as white"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 899.0, 767.0, 352.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 899.0, 767.0, 352.0, 20.0 ],
									"text" : "placed a plane super close to the wall with an image of a mirror "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1011.0, 1044.0, 228.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 1011.0, 1044.0, 228.0, 60.0 ],
									"text" : "then to cover the image of the front view of the sink on the top part of the cube, I placed a plane on top with an image of a sink from above"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1026.0, 890.0, 216.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 1026.0, 890.0, 216.0, 47.0 ],
									"text" : "i stretched out a cube and wrapped an image of a sink cabinet from the front around it for the front view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 1123.0, 422.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.0, 1123.0, 422.0, 20.0 ],
									"text" : "a textued plane on either side of the wall slightly on top so the pixles dont mix"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 711.0, 732.0, 153.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 711.0, 732.0, 153.0, 47.0 ],
									"text" : "continuing the floor with a horizontally flat plane, with a ceramix texture"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 800.0, 150.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 340.0, 800.0, 150.0, 47.0 ],
									"text" : "90 degree planes next to the other walls with a different wallpaper ontop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 409.0, 432.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 409.0, 432.0, 20.0 ],
									"text" : "-I also used the @texture attribute for the models to put an image on them"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 384.0, 422.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 11.0, 384.0, 422.5, 20.0 ],
									"text" : "            sends a bang each time jit.gl.model emits it's matrix (to get image)  "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 384.0, 45.0, 20.0 ],
									"text" : "-t l b="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 319.0, 676.5, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 9.0, 319.0, 676.5, 60.0 ],
									"text" : "                        used to import 3D model files (with the setDesign name to link model into that world, and attributes to change it's rotation, position, and scale)\n-read [file name], [file type], bang message= imports the model into max and the bang imports it into the jit.world\n      -I imported my 3D model files into Max's file browser so they can be easily found"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 319.0, 83.0, 20.0 ],
									"text" : "-jit.gl.model="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 197.0, 677.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 8.0, 197.0, 677.0, 114.0 ],
									"text" : "                                         = wrapping an image around the object/shape\n-@name text# = texture object needs a name and number so that the texture/image knows which shape to wrap wrap around.\n      *shapes and textures correspond via matching names and numbers (texture object will send an image to the shape with the texture attribute that has the matching name and number\n-jit.matrix= matrix that is used to store and retreive data, each cell of a matrix represents color pixels and alpha, red, green, and blue values (it allows the image from the texture to be emitted)\n-@importmovie,bang= click on the message to fill it with the image or video that the bang will send throught the matrix and be wrapped around the corresponding shape"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 197.0, 141.0, 20.0 ],
									"text" : "-jit.gl.texture setDesign"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-47",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 32.0, 94.0, 20.0 ],
									"text" : "-jit.gl.grishape"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 32.0, 674.0, 154.0 ],
									"presentation" : 1,
									"presentation_linecount" : 11,
									"presentation_rect" : [ 11.0, 32.0, 674.0, 154.0 ],
									"text" : "                         = jit for jitter objects, gl for #D graphic objects, grishape for creating shapes\n-setDesign= name of the world to link everything to the same jit.world window\n-@smooth_shading 1= smooths the dimentions of the shape by intersecting the light through the shapes vertices \n(I added this to flat planes even though they're not 3 dimensional for a chance of higher quality)\n-@color 1 1 1 1= makes the RGBA (red,green,blue,alpha) set the shapes to white, so the image on top can be seen properly without other colors peaking through and altering the image\n-@shape plane= a flat plane/ flatten square or rectangle shape\n-@rotatexyz= roates the planes on the X (horizontal), Y (vertical), Z (diagonal) axis. \n-@position= based on XYZ axis location (moving along the X (horizontal), Y (vertical), Z (diagonal) axis) to position shape on a spot on the graph (will either be on the positive or negative sides)\n-@scale= altering shapes size (X: longer horizontally Y:longer vertically Z: longer in depth)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 158.0, 10.0, 315.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 158.0, 10.0, 315.0, 22.0 ],
									"text" : "general explantions, since code is repetitive: "
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.83921568627451, 1.0, 1.0 ],
									"id" : "obj-76",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 5.0, 704.0, 591.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 547.0, 897.0, 66.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 547.0, 897.0, 66.0, 33.0 ],
									"text" : "FRONT of sink  -->"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-52",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 687.0, 834.0, 49.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 687.0, 834.0, 49.0, 22.0 ],
									"text" : "SINK:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-48",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 493.0, 1166.0, 81.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 493.0, 1166.0, 81.0, 22.0 ],
									"text" : "SHOWER:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 1024.0, 93.5, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 16.0, 1024.0, 93.5, 33.0 ],
									"text" : "one for each side of the wall:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 13.0, 1882.0, 356.0, 35.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @lighting_enable 1 @smooth_shading 1 @automatic 0 @color 1 1 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 13.0, 1831.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 1739.0, 114.0, 22.0 ],
									"text" : "read toilet.obj, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 21.0, 1773.0, 269.0, 35.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 180 90 180 @position 20 0 2 @scale 1 1 1 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 153.0, 1196.0, 785.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 19 4 10 @scale 5 2 @texture text14"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 122.0, 1044.0, 212.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 12.6 4.9 9.99 @scale 1.7 2 @texture text18"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1124.0, 676.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1124.0, 644.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1124.0, 711.0, 132.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text29",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 891.0, 649.0, 217.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 180 90 @position 10.02 4.5 6.5 @scale 1 2.5 @texture text29"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-63",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1012.0, 616.0, 76.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1012.0, 616.0, 76.0, 22.0 ],
									"text" : "MIRROR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1023.0, 1571.0, 57.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1023.0, 1539.0, 111.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1024.0, 1605.0, 211.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text28",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 1572.0, 119.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.0, 1572.0, 119.0, 20.0 ],
									"text" : "SHOWER HEAD -->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 150.0, 1571.0, 845.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 20.99 7.01 6.88 @scale 0.5 0.5 @texture text28"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1025.0, 1448.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1025.0, 1419.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1025.0, 1486.0, 209.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text27",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 7.0, 1444.0, 133.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 1444.0, 133.0, 20.0 ],
									"text" : "SHOWER HANDLE -->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 150.0, 1443.0, 847.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 20.99 3.5 7.01 @scale 0.25 0.4 @texture text27"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 353.0, 970.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 353.0, 1000.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 353.0, 1038.0, 138.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text18",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 245.0, 1729.0, 57.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 245.0, 1729.0, 57.5, 20.0 ],
									"text" : "TOILET"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 869.0, 1063.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 869.0, 1030.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 869.0, 1094.0, 101.0, 49.0 ],
									"text" : "jit.gl.texture setDesign @name text16",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 632.0, 1044.0, 227.0, 62.0 ],
									"text" : "jit.gl.gridshape setDesign @shape plane @color 1 1 1 1 @smooth_shading 1 @rotatexyz 90 0 0 @position 10.51 2.01 6.5 @scale 0.51 2.5 @texture text16"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 541.0, 1063.0, 87.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 541.0, 1063.0, 87.0, 33.0 ],
									"text" : "TOP/FAUCET of sink-->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 869.0, 897.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 869.0, 864.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 869.0, 928.0, 131.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text15",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 613.0, 876.0, 228.0, 62.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @dim 200 200 @position 10.51 1 6.5 @scale 0.5 1 2.5 @texture text15"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 22.0, 846.0, 289.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10.01 4 6.6 @scale 5 3.4 @texture text11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 22.0, 791.0, 302.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10.01 7.8 1.6 @scale 1.2 1.6 @texture text11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 107.0, 1372.0, 798.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 17 4 8.5 @scale 5 1.5 @poly_mode 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 109.0, 1334.0, 794.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 19 4 4.4 @scale 5 2 @poly_mode 1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 1329.0, 88.0, 74.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 11.0, 1329.0, 88.0, 74.0 ],
									"text" : "SHOWER GLASS one fore each side of the entrance:   -->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 122.0, 962.0, 219.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 12.6 4.9 10.02 @scale 1.7 2 @texture text18"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 1202.0, 133.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 11.0, 1202.0, 133.0, 47.0 ],
									"text" : "SHOWER CERAMIC one for each corner of the wall:                  -->"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 217.0, 928.0, 79.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 217.0, 928.0, 79.0, 22.0 ],
									"text" : "WINDOW:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 16.0, 738.0, 302.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 13.5 4 10 @scale 5 3.5 @texture text11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 951.0, 1184.0, 114.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 951.0, 1214.0, 60.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 951.0, 1242.0, 134.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text14",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 18.0, 685.0, 344.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 21 4 2.2 @scale 5 2.2 @texture text11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 150.0, 1227.0, 792.0, 22.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 21 4 7.2 @scale 5 2.8 @texture text14"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 552.0, 745.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 552.0, 717.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 552.0, 776.0, 147.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text12",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 373.0, 670.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 373.0, 699.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 373.0, 738.0, 135.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text11",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 671.0, 609.0, 65.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 671.0, 609.0, 65.0, 22.0 ],
									"text" : "FLOOR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 600.0, 633.0, 207.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 0 0 @position 15.5 -1 5 @scale 5.5 5 @texture text12"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 389.0, 623.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 389.0, 623.0, 75.0, 22.0 ],
									"text" : "WALLS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 18.0, 623.0, 341.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 15.5 4 0 @scale 5 5.5 @texture text11"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-70",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 1717.0, 693.0, 210.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 115.0, 161.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-69",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 886.0, 603.0, 378.0, 212.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 100.0, 146.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-68",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 541.0, 822.0, 723.0, 328.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 85.0, 131.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-49",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 1161.0, 1258.0, 546.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 85.0, 131.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-46",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 914.0, 527.0, 240.25 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.0, 116.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-42",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 547.0, 603.0, 329.0, 212.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.0, 116.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-22",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.0, 603.0, 527.0, 305.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 55.0, 101.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 54.0, 485.0, 69.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p bathroom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 87.0, 1396.0, 874.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-54",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 759.0, 789.0, 150.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 759.0, 789.0, 150.0, 33.0 ],
									"text" : "created by placing a flat plane ontop of the wall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 1091.0, 372.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 27.5, 1091.0, 372.0, 33.0 ],
									"text" : "^i used rectangular planes to cover the top of the closets to cover the images from the closet that were also wrapped ontop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 831.0, 428.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 27.5, 831.0, 428.0, 33.0 ],
									"text" : "^I turned cubes into rectangles for themse, by altering their sizes. they each have different texture numbers since I put different pictures on each closet"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 863.0, 501.0, 205.0, 100.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 863.0, 501.0, 205.0, 100.0 ],
									"text" : "-had to continue the hardwood floor into the closet, used a flat horizontal plane \n-it doesn't need a jit.gl.texture object since i can assign it to the one in the bedroom patch by using the same texture nae and number"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 578.0, 521.0, 252.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 578.0, 521.0, 252.0, 60.0 ],
									"text" : "used planes to cover the brick walls from the exterior structure and placed them slightly away so a new wallpaper can be seen instead"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 196.0, 677.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 18.0, 196.0, 677.0, 114.0 ],
									"text" : "                                         = wrapping an image around the object/shape\n-@name text# = texture object needs a name and number so that the texture/image knows which shape to wrap wrap around.\n      *shapes and textures correspond via matching names and numbers (texture object will send an image to the shape with the texture attribute that has the matching name and number\n-jit.matrix= matrix that is used to store and retreive data, each cell of a matrix represents color pixels and alpha, red, green, and blue values (it allows the image from the texture to be emitted)\n-@importmovie,bang= click on the message to fill it with the image or video that the bang will send throught the matrix and be wrapped around the corresponding shape"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 196.0, 141.0, 20.0 ],
									"text" : "-jit.gl.texture setDesign"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 31.0, 94.0, 20.0 ],
									"text" : "-jit.gl.grishape"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.0, 31.0, 674.0, 154.0 ],
									"presentation" : 1,
									"presentation_linecount" : 11,
									"presentation_rect" : [ 21.0, 31.0, 674.0, 154.0 ],
									"text" : "                         = jit for jitter objects, gl for #D graphic objects, grishape for creating shapes\n-setDesign= name of the world to link everything to the same jit.world window\n-@smooth_shading 1= smooths the dimentions of the shape by intersecting the light through the shapes vertices \n(I added this to flat planes even though they're not 3 dimensional for a chance of higher quality)\n-@color 1 1 1 1= makes the RGBA (red,green,blue,alpha) set the shapes to white, so the image on top can be seen properly without other colors peaking through and altering the image\n-@shape plane= a flat plane/ flatten square or rectangle shape. @shape cube= creates a cube (that can become a rectangle)\n-@rotatexyz= roates the planes on the X (horizontal), Y (vertical), Z (diagonal) axis. \n-@position= based on XYZ axis location (moving along the X (horizontal), Y (vertical), Z (diagonal) axis) to position shape on a spot on the graph (will either be on the positive or negative sides)\n-@scale= altering shapes size (X: longer horizontally Y:longer vertically Z: longer in depth)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 9.0, 315.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 168.0, 9.0, 315.0, 22.0 ],
									"text" : "general explantions, since code is repetitive: "
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.83921568627451, 1.0, 1.0 ],
									"id" : "obj-76",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 4.0, 683.0, 314.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 313.0, 1027.5, 126.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 313.0, 1027.5, 126.0, 33.0 ],
									"text" : "<--- the one ontop of the front one"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.75, 948.5, 126.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 309.75, 948.5, 126.0, 33.0 ],
									"text" : "<--- the one ontop of the left one"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 372.0, 677.0, 92.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 372.0, 677.0, 92.0, 47.0 ],
									"text" : "<--- the one on the left of the entrance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 326.0, 768.0, 93.5, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 326.0, 768.0, 93.5, 47.0 ],
									"text" : "<--- the one in front of the entrance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 956.0, 712.0, 60.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 956.0, 685.0, 114.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 956.0, 742.0, 139.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text26",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 728.0, 685.0, 224.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 14.5 2 -0.02 @scale 3 1.5 @texture text26"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 870.0, 654.0, 82.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 870.0, 654.0, 82.0, 22.0 ],
									"text" : "MIRROR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 474.0, 998.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.156862745098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.0, 961.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.156862745098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 474.0, 1033.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text10",
									"textcolor" : [ 0.0, 1.0, 0.156862745098039, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 27.5, 1013.0, 279.0, 62.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading @color 1 1 1 1 @shape plane @rotatexyz 90 90 0 @position 20 7.01 -4.09 @scale 3.9 1 @texture text10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 27.5, 941.0, 272.0, 62.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading @color 1 1 1 1 @shape plane @rotatexyz 90 0 0 @position 15.5 7.01 -9 @scale 5.4 1 @texture text10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 894.0, 107.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 280.0, 894.0, 107.0, 33.0 ],
									"text" : "WOOD on top of the closet system:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 490.0, 804.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.047058823529412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 775.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.047058823529412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 490.0, 836.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text9",
									"textcolor" : [ 0.0, 1.0, 0.047058823529412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 490.0, 702.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.274509803921569, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 672.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 490.0, 731.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text8",
									"textcolor" : [ 0.094117647058824, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 767.0, 295.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @rotatexyz 90 90 90 @position 20 3 -4.1 @scale 4 1 3.9 @texture text9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 676.0, 337.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @rotatexyz 0 90 90 @position 15.5 3 -9 @scale 4 1 5.4 @texture text8"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 641.0, 155.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 309.0, 641.0, 155.0, 22.0 ],
									"text" : "CLOSET/CLOTHES:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 570.0, 535.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10.01 4 -8.5 @scale 5 1.5 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 526.0, 525.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10.01 7.8 -5.3 @scale 1.2 1.7 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 484.0, 544.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10.01 4 -1.8 @scale 5 1.8 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 608.0, 382.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 608.0, 422.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 608.0, 463.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text7",
									"textcolor" : [ 0.0, 1.0, 0.192156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 444.0, 544.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 15.5 4 -0.01 @scale 5 5.5 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 908.0, 343.0, 68.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 908.0, 343.0, 68.0, 22.0 ],
									"text" : "FLOOR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 863.0, 388.0, 158.0, 102.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 0 0 @position 15.5 -1 -5 @scale 5.5 5 @texture text2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 358.0, 552.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 21 4 -5 @scale 5 5 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 32.0, 401.0, 544.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 15.5 4 -10 @scale 5 5.5 @texture text7"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 488.0, 326.0, 67.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 488.0, 326.0, 67.0, 22.0 ],
									"text" : "WALLS:"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-24",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 641.0, 691.0, 494.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 281.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-19",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 720.0, 637.0, 388.0, 199.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 220.0, 266.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 848.0, 322.0, 229.0, 299.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.0, 251.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-204",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 322.0, 819.0, 299.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 190.0, 236.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 62.0, 455.0, 50.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p closet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 73.0, 109.0, 1412.0, 852.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-40",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 760.0, 642.0, 394.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 760.0, 642.0, 394.0, 60.0 ],
									"text" : "-there's a glass panels along the 3 sides of the balcony that I created using @poly_mode for realism. this attribute shows how the polygons of a shapeare drawn, the 2 2 modeshows them as single vertices and are therefore less visible and see threw like glass is"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 739.5, 337.0, 734.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 739.5, 337.0, 734.0, 60.0 ],
									"text" : "-used planes as walls on 90 degree angles to create the outer structure of the apartment\n-there's more then 4 gridshapes even though there's only 4 walls/sides because the entrance to the balcony splits that entire wall in 2, and also requires an extra small wall above the entrance to close off the gap on either side of the entrance\n-the texture image is brick"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.0, 471.0, 375.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 41.0, 471.0, 375.0, 47.0 ],
									"text" : "-using a stratched out plane as the ground/grass\n-@rotatexyz 90 0 0= to rotate the ground/plane to be horizontall flat\n-texture image of grass ontop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 208.5, 677.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 36.0, 208.5, 677.0, 114.0 ],
									"text" : "                                         = wrapping an image around the object/shape\n-@name text# = texture object needs a name and number so that the texture/image knows which shape to wrap wrap around.\n      *shapes and textures correspond via matching names and numbers (texture object will send an image to the shape with the texture attribute that has the matching name and number\n-jit.matrix= matrix that is used to store and retreive data, each cell of a matrix represents color pixels and alpha, red, green, and blue values (it allows the image from the texture to be emitted)\n-@importmovie,bang= click on the message to fill it with the image or video that the bang will send throught the matrix and be wrapped around the corresponding shape"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 208.5, 141.0, 20.0 ],
									"text" : "-jit.gl.texture setDesign"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 44.0, 94.0, 20.0 ],
									"text" : "-jit.gl.grishape"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 39.0, 44.0, 674.0, 154.0 ],
									"presentation" : 1,
									"presentation_linecount" : 11,
									"presentation_rect" : [ 39.0, 44.0, 674.0, 154.0 ],
									"text" : "                         = jit for jitter objects, gl for #D graphic objects, grishape for creating shapes\n-setDesign= name of the world to link everything to the same jit.world window\n-@smooth_shading 1= smooths the dimentions of the shape by intersecting the light through the shapes vertices \n(I added this to flat planes even though they're not 3 dimensional for a chance of higher quality)\n-@color 1 1 1 1= makes the RGBA (red,green,blue,alpha) set the shapes to white, so the image on top can be seen properly without other colors peaking through and altering the image\n-@shape plane= a flat plane/ flatten square or rectangle shape\n-@rotatexyz= roates the planes on the X (horizontal), Y (vertical), Z (diagonal) axis\n-@position= based on XYZ axis location (moving along the X (horizontal), Y (vertical), Z (diagonal) axis) to position shape on a spot on the graph (will either be on the positive or negative sides)\n-@scale= altering shapes size (X: longer horizontally Y:longer vertically Z: longer in depth)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 186.0, 22.0, 315.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 186.0, 22.0, 315.0, 22.0 ],
									"text" : "general explantions, since code is repetitive: "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 781.0, 282.5, 430.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 15.5 4 10.01 @scale 5 5.5 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 782.0, 236.5, 428.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 21.01 4 0 @scale 5 10 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 785.0, 193.5, 422.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position -10.01 4 0 @scale 5 10 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 780.0, 151.5, 431.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 5.5 4 -10.01 @scale 5 15.5 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1249.0, 156.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.274509803921569, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1249.0, 192.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1249.0, 221.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text13",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 780.0, 96.5, 431.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 8 7.8 10.01 @scale 1.2 2 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 907.0, 21.5, 110.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 907.0, 21.5, 110.0, 22.0 ],
									"text" : "BRICK WALLS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 776.0, 53.5, 429.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -2 4 10.01 @scale 5 8 @texture text13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 356.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 330.0, 385.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.298039215686275, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 330.0, 415.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text1",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 740.0, 586.0, 433.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 5 1 18 @scale 2 15 @poly_mode 2 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 740.0, 526.0, 433.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position -10 1 14 @scale 2 4 @poly_mode 2 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 798.0, 434.0, 210.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 798.0, 434.0, 210.0, 22.0 ],
									"text" : "BALCONY GLASS  WALLS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 740.0, 470.0, 428.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 21 1 14 @scale 2 4 @poly_mode 2 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.0, 344.0, 140.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 168.0, 344.0, 140.0, 22.0 ],
									"text" : "BALCONY GRASS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 41.0, 372.0, 267.0, 62.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 0 0 @position 5.5 -1 14 @scale 15.5 4 @texture text1"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-16",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 733.0, 10.5, 747.0, 396.5 ],
									"presentation" : 1,
									"presentation_rect" : [ 55.0, 101.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-13",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 729.0, 415.0, 467.0, 309.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 55.0, 101.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-15",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 29.0, 334.0, 668.0, 276.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 40.0, 86.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.0, 0.83921568627451, 1.0, 1.0 ],
									"id" : "obj-17",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 36.0, 17.0, 677.0, 305.5 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.0, 17.0, 677.0, 305.5 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 57.0, 395.0, 60.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p balcony"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 174.0, 94.0, 1407.0, 856.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-147",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 965.0, 2343.0, 186.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 965.0, 2343.0, 186.0, 47.0 ],
									"text" : "same as the guitar, I ended up having to put a texture image of a leaf on top of the whole model "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 973.0, 2234.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.058823529411765, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 973.0, 2267.5, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.058823529411765, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 973.0, 2303.0, 151.0, 35.0 ],
									"presentation_linecount" : 2,
									"text" : "jit.gl.texture setDesign @name text36",
									"textcolor" : [ 0.058823529411765, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 598.0, 2332.0, 356.0, 49.0 ],
									"presentation_linecount" : 3,
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @lighting_enable 1 @smooth_shading 1 @automatic 0 @color 1 1 1 1 @texture text36"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 598.0, 2303.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 598.0, 2217.0, 115.0, 22.0 ],
									"text" : "read plant.obj, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 598.0, 2243.0, 233.0, 49.0 ],
									"presentation_linecount" : 3,
									"text" : "jit.gl.model setDesign @rotatexyz 0 360 0 @position 7 1.5 -9.5 @scale 3 4 3 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-86",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 915.0, 2203.0, 79.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 915.0, 2203.0, 79.0, 22.0 ],
									"text" : "PLANT:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 409.0, 325.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 104.0, 409.0, 325.0, 20.0 ],
									"text" : "through the matrix, it creates the geometric shapes/models "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-145",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 409.0, 78.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 23.0, 409.0, 78.0, 20.0 ],
									"text" : "jit.gl.mesh="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 181.0, 450.0, 210.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 181.0, 450.0, 210.0, 20.0 ],
									"text" : "renders the vertices of the geometry"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-136",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 450.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 18.0, 450.0, 160.0, 20.0 ],
									"text" : "-@draw_mode triangles= "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 430.0, 392.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 104.0, 430.0, 392.0, 20.0 ],
									"text" : "allows the image and color of the 3D model to be visible instead of grey"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 430.0, 90.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.75, 430.0, 90.0, 20.0 ],
									"text" : "-Matrixouput="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1061.0, 957.5, 151.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 1061.0, 957.5, 151.0, 60.0 ],
									"text" : "for some reason the 3D models were super tiny so I have to make the scale huge"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1065.625, 2093.0, 391.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 1065.625, 2093.0, 391.0, 60.0 ],
									"text" : "the textures for the 3D models i tried all came in seperate files so I couldn't get them to work, I also tried using a texture image of a guitar to wrap on top but it looked really bad, so I ended up just putting a color similar to guitar wood ontop without details like the strings :("
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 669.0, 2133.0, 290.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 669.0, 2133.0, 290.0, 20.0 ],
									"text" : "^ all positioned slightly on top of the wallpaper plane"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 24.0, 2156.0, 508.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 24.0, 2156.0, 508.0, 47.0 ],
									"text" : "have to put one plane slightly ontop of each side of the wall because if it's directly on top the pixels will mix with one another, also can't have wall be built around the window plane because the texture wrapped on the wall wont look the same on each section "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 874.0, 1675.5, 161.0, 100.0 ],
									"presentation" : 1,
									"presentation_linecount" : 7,
									"presentation_rect" : [ 874.0, 1675.5, 161.0, 100.0 ],
									"text" : "made a rug by flattening the a circle and made it 200 by 200 dimensions to try and have it be higher quality, since the rug is quite large so the image wrapped around it is pixelated"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 1909.5, 150.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 135.0, 1909.5, 150.0, 33.0 ],
									"text" : "put wood on both sides of the desk with planes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 347.0, 1666.5, 150.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 347.0, 1666.5, 150.0, 47.0 ],
									"text" : "put a plane with an image of a desk from above on the top of the desk"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 340.0, 1510.5, 152.0, 74.0 ],
									"presentation" : 1,
									"presentation_linecount" : 5,
									"presentation_rect" : [ 340.0, 1510.5, 152.0, 74.0 ],
									"text" : "made the desk from a cube with 200 by 200 dimension. and wrapped it with and image of a desk and chair from a front view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1175.0, 1469.0, 166.0, 100.0 ],
									"text" : "I used square shaped planes to cover the 3 sides of the side tables with a wood mage, as the image of the drawers from the side tale also showed on all sides and I wanted to cover it"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 690.0, 1172.0, 542.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 690.0, 1172.0, 542.0, 33.0 ],
									"text" : "^I created side tables using cubes and made they're dimensions 200 by 200 vertices\n-i added an image of drawers around the cube"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 835.0, 596.0, 305.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 835.0, 596.0, 305.0, 47.0 ],
									"text" : "-stretched out a cube to become a rectangle for the bed\n-@dim 200 200= dimension is 200 by 200 vertices to have a larger gridshape dimension to smooth edges"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 498.75, 748.0, 150.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 498.75, 748.0, 150.0, 114.0 ],
									"text" : "-planes for the walls at 90 degree angles with wallpaper ontop\n-slightly positioned away from exterior brick wall so this wall covers the brick one so that it wont be visible on inside the room"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 578.0, 511.5, 150.0, 47.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 578.0, 511.5, 150.0, 47.0 ],
									"text" : "-horizontally flat plane for the flor with hardwood image ontop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 387.0, 432.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.75, 387.0, 432.0, 20.0 ],
									"text" : "-I also used the @texture attribute for the models to put an image on them"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.5, 365.0, 422.5, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 22.5, 365.0, 422.5, 20.0 ],
									"text" : "            sends a bang each time jit.gl.model emits it's matrix (to get image)  "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.75, 365.0, 45.0, 20.0 ],
									"text" : "-t l b="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.5, 303.0, 676.5, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 19.5, 303.0, 676.5, 60.0 ],
									"text" : "                        used to import 3D model files (with the setDesign name to link model into that world, and attributes to change it's rotation, position, and scale)\n-read [file name], [file type], bang message= imports the model into max and the bang imports it into the jit.world\n      -I imported my 3D model files into Max's file browser so they can be easily found"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-78",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 303.0, 83.0, 20.0 ],
									"text" : "-jit.gl.model="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.25, 187.0, 677.0, 114.0 ],
									"presentation" : 1,
									"presentation_linecount" : 8,
									"presentation_rect" : [ 19.25, 187.0, 677.0, 114.0 ],
									"text" : "                                         = wrapping an image around the object/shape\n-@name text# = texture object needs a name and number so that the texture/image knows which shape to wrap wrap around.\n      *shapes and textures correspond via matching names and numbers (texture object will send an image to the shape with the texture attribute that has the matching name and number\n-jit.matrix= matrix that is used to store and retreive data, each cell of a matrix represents color pixels and alpha, red, green, and blue values (it allows the image from the texture to be emitted)\n-@importmovie,bang= click on the message to fill it with the image or video that the bang will send throught the matrix and be wrapped around the corresponding shape"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 187.0, 141.0, 20.0 ],
									"text" : "-jit.gl.texture setDesign"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 31.0, 94.0, 20.0 ],
									"text" : "-jit.gl.grishape"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 11,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.75, 31.0, 674.0, 154.0 ],
									"presentation" : 1,
									"presentation_linecount" : 11,
									"presentation_rect" : [ 20.75, 31.0, 674.0, 154.0 ],
									"text" : "                         = jit for jitter objects, gl for #D graphic objects, grishape for creating shapes\n-setDesign= name of the world to link everything to the same jit.world window\n-@smooth_shading 1= smooths the dimentions of the shape by intersecting the light through the shapes vertices \n(I added this to flat planes even though they're not 3 dimensional for a chance of higher quality)\n-@color 1 1 1 1= makes the RGBA (red,green,blue,alpha) set the shapes to white, so the image on top can be seen properly without other colors peaking through and altering the image\n-@shape plane= a flat plane/ flatten square or rectangle shape\n-@rotatexyz= roates the planes on the X (horizontal), Y (vertical), Z (diagonal) axis. \n-@position= based on XYZ axis location (moving along the X (horizontal), Y (vertical), Z (diagonal) axis) to position shape on a spot on the graph (will either be on the positive or negative sides)\n-@scale= altering shapes size (X: longer horizontally Y:longer vertically Z: longer in depth)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 167.75, 9.0, 315.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 167.75, 9.0, 315.0, 22.0 ],
									"text" : "general explantions, since code is repetitive: "
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.0, 0.83921568627451, 1.0, 1.0 ],
									"id" : "obj-76",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 4.0, 689.0, 466.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 17.75, 4.0, 689.0, 466.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-210",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 850.0, 1820.0, 113.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 850.0, 1820.0, 113.0, 20.0 ],
									"text" : "one in the MIDDLE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-208",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 842.0, 1925.0, 121.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 842.0, 1925.0, 121.0, 20.0 ],
									"text" : "one on the BOTTOM"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-206",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 855.0, 2025.0, 96.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 855.0, 2025.0, 96.0, 20.0 ],
									"text" : "one on the TOP"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-200",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 2067.0, 70.0, 47.0 ],
									"text" : "one for each side of the wall"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-197",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 1531.5, 56.0, 47.0 ],
									"text" : "desk from the FRONT:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-194",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 332.0, 1025.0, 79.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 332.0, 1025.0, 79.0, 22.0 ],
									"text" : "LAMPS:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-191",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 874.0, 1064.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 874.0, 1064.0, 100.0, 22.0 ],
									"text" : "SIDE TABLES"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-188",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 976.0, 671.0, 84.0, 38.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 976.0, 671.0, 84.0, 38.0 ],
									"text" : "PILLOWS on the bed:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-179",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 772.0, 800.0, 249.0, 49.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @smooth_shading 1 @color 1 1 1 1 @texture text6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-180",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 772.0, 768.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-181",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 772.0, 684.5, 118.0, 22.0 ],
									"text" : "read pillow.fbx, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-182",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 772.0, 714.0, 239.0, 49.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 90 0 0 @position -9 0.7 -36 @scale 50 60 45 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-183",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 699.5, 684.5, 70.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 699.5, 684.5, 70.0, 33.0 ],
									"text" : "the one on the LEFT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-173",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1078.0, 827.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1078.0, 856.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.117647058823529, 1.0, 0.023529411764706, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1078.0, 882.0, 130.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text6",
									"textcolor" : [ 0.133333333333333, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-169",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 772.0, 987.0, 249.0, 49.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @smooth_shading 1 @color 1 1 1 1 @texture text6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-170",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 771.0, 957.5, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 771.0, 874.0, 118.0, 22.0 ],
									"text" : "read pillow.fbx, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-172",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 771.0, 904.0, 258.0, 49.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 90 0 0 @position -9 0.7 -38 @scale 50 60 45 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-168",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 892.0, 69.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 700.0, 892.0, 69.0, 33.0 ],
									"text" : "the one on the RIGHT"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 143.0, 1152.0, 367.0, 35.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @smooth_shading 1 @color 1 1 1 1 @texture text37"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 143.0, 1117.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 143.0, 1042.0, 137.0, 22.0 ],
									"text" : "read sidelamp.fbx, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 143.0, 1072.0, 371.0, 35.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 270 0 0 @position -9 1.1 -4.5 @scale 9 9 9 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 1079.0, 127.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 5.0, 1079.0, 127.0, 33.0 ],
									"text" : "lamp ontop of LEFT sidetable --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 690.0, 1093.0, 434.5, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @dim 200 200 @position -9 0 -5 @scale 1 1 1 @texture text23"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-158",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.0, 1094.0, 102.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 579.0, 1094.0, 102.0, 33.0 ],
									"text" : "the one one the RIGHT     --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 711.5, 1240.0, 425.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 180 @position -9 1.01 -5 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 576.0, 1247.0, 128.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 576.0, 1247.0, 128.0, 33.0 ],
									"text" : "WOOD ontop of RIGHT sidetable -->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.5, 1405.5, 121.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 579.5, 1405.5, 121.0, 60.0 ],
									"text" : "WOOD on both sides of the RIGHT sidetable (1 for each side) --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 707.5, 1455.0, 443.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -9 0 -6 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 711.5, 1405.5, 449.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -9 0 -3.99 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 1375.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.133333333333333, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 138.0, 1406.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.133333333333333, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 138.0, 1435.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text37",
									"textcolor" : [ 0.133333333333333, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 143.0, 1314.0, 371.0, 35.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @smooth_shading 1 @color 1 1 1 1 @texture text37"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 143.0, 1283.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 143.0, 1214.0, 137.0, 22.0 ],
									"text" : "read sidelamp.fbx, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 143.0, 1240.0, 359.0, 35.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 270 0 0 @position -9 1.1 -14 @scale 9 9 9 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.0, 1245.0, 121.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 8.0, 1245.0, 121.0, 33.0 ],
									"text" : "lamp ontop of RIGHT sidetable --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1314.625, 1922.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.168627450980392, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1314.625, 1951.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.168627450980392, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1314.625, 1981.0, 134.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text35",
									"textcolor" : [ 0.168627450980392, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1069.0, 1828.0, 392.0, 35.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @lighting_enable 1 @smooth_shading 1 @automatic 0 @color 1 1 1 1 @texture text34"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1069.0, 1795.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1069.0, 1702.0, 109.0, 22.0 ],
									"text" : "read dog.obj, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1069.0, 1743.0, 233.0, 49.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 90 30 180 @position 2 0 -1 @scale 1 1 1 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 9,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1062.625, 2038.0, 265.0, 49.0 ],
									"text" : "jit.gl.mesh setDesign @draw_mode triangles @lighting_enable 1 @smooth_shading 1 @automatic 0 @color 1 1 1 1 @texture text35"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1062.625, 2007.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1062.625, 1919.0, 118.0, 22.0 ],
									"text" : "read guitar.obj, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1062.625, 1952.0, 235.0, 49.0 ],
									"text" : "jit.gl.model setDesign @rotatexyz 0 360 0 @position -3.7 1.5 -9.6 @scale 8 8 5 @matrixoutput 2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1208.625, 1903.0, 75.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1208.625, 1903.0, 75.0, 22.0 ],
									"text" : "GUITAR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1334.0, 1686.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1334.0, 1719.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1334.0, 1766.0, 130.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text34",
									"textcolor" : [ 0.23921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-94",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1206.0, 1666.0, 50.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1206.0, 1666.0, 50.0, 22.0 ],
									"text" : "DOG:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 592.0, 2047.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 592.0, 2073.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 592.0, 2100.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text32",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 812.0, 2046.0, 204.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 3.3 6 -9.99 @scale 1 0.8 @texture text32"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 592.0, 1934.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 592.0, 1962.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 592.0, 1992.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text31",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 807.0, 1947.0, 210.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 3.3 3.8 -9.99 @scale 1 0.8 @texture text31"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 592.0, 1832.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 592.0, 1863.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 592.0, 1892.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text30",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 807.0, 1844.0, 210.0, 76.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 1.5 4.5 -9.99 @scale 1 0.8 @texture text30"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 780.0, 1795.0, 88.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 780.0, 1795.0, 88.0, 22.0 ],
									"text" : "POSTERS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 100.0, 2094.0, 286.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -2 4.5 10.1 @scale 2 3.5 @texture text19"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 582.5, 1530.0, 106.0, 60.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 582.5, 1530.0, 106.0, 60.0 ],
									"text" : "WOOD on both sides of the LEFT sidetable (1 for each side) --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 701.75, 1569.0, 395.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -9 0 3.49 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 701.75, 1530.0, 411.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -9 0 5.51 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1169.0, 1298.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.309803921568627, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1169.0, 1332.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.309803921568627, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1168.0, 1367.0, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text24",
									"textcolor" : [ 0.309803921568627, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 711.5, 1282.0, 435.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 180 @position -9 1.01 4.5 @scale 1 1 @texture text24"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 577.5, 1283.0, 125.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 577.5, 1283.0, 125.0, 33.0 ],
									"text" : "WOOD ontop of LEFT sidetable -->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1168.0, 1083.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 1168.0, 1110.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 1168.0, 1139.0, 175.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text23",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 690.0, 1130.5, 421.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @dim 200 200 @position -9 0 4.5 @scale 1 1 1 @texture text23"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 582.5, 1131.5, 95.0, 33.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 582.5, 1131.5, 95.0, 33.0 ],
									"text" : "the one one the LEFT     --->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 227.0, 1796.5, 149.0, 102.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 180 90 90 @position -5.51 0 8.99 @scale 1 1 @texture text22"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 390.0, 1802.5, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 390.0, 1843.5, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 390.0, 1883.5, 138.0, 35.0 ],
									"text" : "jit.gl.texture setDesign @name text22",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 62.0, 1796.5, 155.0, 102.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 180 90 90 @position 1.51 0 8.99 @scale 1 1 @texture text22"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 1796.5, 61.0, 47.0 ],
									"text" : "both SIDES of the desk:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 222.0, 1670.5, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 222.0, 1701.5, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 222.0, 1734.5, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text21",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"linecount" : 7,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 67.0, 1670.5, 146.0, 102.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 180 0 @position -2 1.01 8.99 @scale 3.5 1 @texture text21"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 1666.5, 60.5, 47.0 ],
									"text" : "the TOP part of the desk:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 222.0, 1531.5, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.372549019607843, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 222.0, 1562.5, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.372549019607843, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 222.0, 1592.5, 208.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text20",
									"textcolor" : [ 0.0, 1.0, 0.372549019607843, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"linecount" : 8,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 67.0, 1531.5, 137.0, 116.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @dim 200 200 @position -2 -0.4 9 @scale 3.5 1.4 1 @texture text20"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 249.0, 1495.5, 52.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 249.0, 1495.5, 52.0, 22.0 ],
									"text" : "DESK"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 396.0, 2039.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 396.0, 2071.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 396.0, 2101.0, 91.0, 49.0 ],
									"text" : "jit.gl.texture setDesign @name text19",
									"textcolor" : [ 0.023529411764706, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 91.0, 2039.0, 295.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -2 4.5 9.99 @scale 2 3.5 @texture text19"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 219.0, 1996.0, 81.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 219.0, 1996.0, 81.0, 22.0 ],
									"text" : "WINDOW"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 42.75, 951.0, 430.5, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10 7.8 1.6 @scale 1.2 1.6 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 43.75, 911.0, 428.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10 4 6.6 @scale 5 3.4 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 43.75, 870.0, 423.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10 4 -1.8 @scale 5 1.8 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 42.75, 827.0, 424.5, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10 4 -8.5 @scale 5 1.5 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 42.75, 785.0, 425.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position 10 7.8 -5.3 @scale 1.2 1.7 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 757.0, 483.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.094117647058824, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 757.0, 517.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.058823529411765, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 757.0, 552.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text4",
									"textcolor" : [ 0.133333333333333, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 759.0, 1681.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 759.0, 1706.5, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 759.0, 1734.5, 93.0, 49.0 ],
									"text" : "jit.gl.texture setDesign @name text5",
									"textcolor" : [ 0.0, 1.0, 0.337254901960784, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 479.75, 622.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.058823529411765, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 479.75, 650.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.094117647058824, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 479.75, 678.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text3",
									"textcolor" : [ 0.203921568627451, 1.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 495.0, 107.0, 22.0 ],
									"text" : "importmovie, bang",
									"textcolor" : [ 0.0, 1.0, 0.082352941176471, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 17.75, 524.0, 53.0, 22.0 ],
									"text" : "jit.matrix",
									"textcolor" : [ 0.0, 1.0, 0.011764705882353, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_gl_texture", "" ],
									"patching_rect" : [ 17.75, 552.0, 201.0, 22.0 ],
									"text" : "jit.gl.texture setDesign @name text2",
									"textcolor" : [ 0.0, 1.0, 0.12156862745098, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 40.75, 702.0, 429.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 8 7.8 10 @scale 1.2 2 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"linecount" : 6,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 582.5, 1681.0, 162.0, 89.0 ],
									"text" : "jit.gl.gridshape setDesign @color 1 1 1 1 @shape sphere @smooth_shading 1 @dim 200 200 @position 1 -1 -1 @scale 6 0.1 5 @texture text5"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 716.0, 1656.0, 52.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 716.0, 1656.0, 52.0, 22.0 ],
									"text" : "RUG:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1089.0, 466.0, 51.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 1089.0, 466.0, 51.0, 22.0 ],
									"text" : "BED:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 40.75, 743.0, 429.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position 0 4 -10 @scale 5 10 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 41.75, 660.0, 427.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 90 90 @position -2 4 10 @scale 5 8 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 270.0, 592.0, 71.0, 22.0 ],
									"text" : "WALLS:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 41.75, 620.0, 427.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 0 90 90 @position -10 4 0 @scale 5 10 @texture text3"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 483.0, 73.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 291.0, 483.0, 73.0, 22.0 ],
									"text" : "FLOOR:"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 872.0, 493.0, 310.0, 49.0 ],
									"text" : "jit.gl.gridshape setDesign @shape cube @color 1 1 1 1 @smooth_shading 1 @dim 200 200 @position -6 0 0 @scale 4 1 3 @texture text4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "jit_matrix", "" ],
									"patching_rect" : [ 138.75, 510.5, 435.0, 35.0 ],
									"text" : "jit.gl.gridshape setDesign @smooth_shading 1 @color 1 1 1 1 @shape plane @rotatexyz 90 0 0 @position 0 -1 0 @scale 10 @texture text2"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-211",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 576.0, 1789.0, 457.0, 372.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.0, 251.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-204",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1052.625, 1902.0, 414.25, 259.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 190.0, 236.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-203",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1056.0, 1660.0, 417.5, 217.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 175.0, 221.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-202",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 569.0, 1644.0, 474.0, 139.5 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 206.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-201",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -5.0, 1980.0, 565.0, 233.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 160.0, 206.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-198",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -2.0, 1491.5, 560.0, 477.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 145.0, 191.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-195",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 1014.0, 554.0, 464.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 145.0, 191.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-192",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 569.0, 1044.0, 820.0, 591.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 130.0, 176.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-189",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 693.5, 667.0, 535.0, 373.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 115.0, 161.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-212",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 598.0, 2189.0, 578.0, 205.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 220.0, 266.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-186",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 750.0, 458.0, 475.0, 196.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 100.0, 146.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-185",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.75, 588.0, 663.0, 406.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 85.0, 131.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"background" : 1,
									"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
									"id" : "obj-184",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 476.5, 731.0, 101.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.0, 116.5, 599.0, 263.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-103", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-107", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-118", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"source" : [ "obj-163", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"source" : [ "obj-170", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-172", 0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-170", 0 ],
									"source" : [ "obj-172", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"source" : [ "obj-173", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"source" : [ "obj-180", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-179", 0 ],
									"source" : [ "obj-180", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-182", 0 ],
									"source" : [ "obj-181", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-180", 0 ],
									"source" : [ "obj-182", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-93", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 54.0, 424.0, 66.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p bedroom",
					"varname" : "bedroom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 61.5, 143.0, 68.0, 22.0 ],
					"text" : "anim_reset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 81.0, 182.0, 145.0, 22.0 ],
					"text" : "jit.anim.drive @ui_listen 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "jit_gl_texture", "" ],
					"patching_rect" : [ 48.0, 225.0, 272.0, 22.0 ],
					"text" : "jit.gl.camera setDesign @position 0 0 5 @tripod 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "jit_matrix", "bang", "" ],
					"patching_rect" : [ 816.0, 262.0, 402.0, 22.0 ],
					"text" : "jit.world setDesign @size 320 240 @floating 1 @erase_color 0.2 0.6 0.8 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 755.0, 119.0, 599.0, 100.0 ],
					"presentation" : 1,
					"presentation_linecount" : 8,
					"presentation_rect" : [ 903.0, 59.0, 592.0, 114.0 ],
					"text" : "-jit.world= creates the 3D world\n-setDesign= the name of the world (is used in other objects to asign/link objects to be inside this specific world)\n-toggle= to activate the window and turn world on/off\n-@floating 1= window wil always be open ontop of maxpatch\n-@size 320 240= 320 by 240 gives the world a 3:4 aspect ratio\n-@erase_color= manipulate RGBA (red,green,blue, alpha (transparency)) to change the color of the background for 3D graphics"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 16.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 578.0, 136.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 399.0, 578.0, 136.0, 24.0 ],
					"text" : "Set Designer"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 742.0, 389.0, 678.0, 273.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 85.0, 131.5, 599.0, 263.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 115.0, 609.0, 186.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 116.5, 599.0, 263.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 383.0, 280.0, 138.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 55.0, 101.5, 599.0, 263.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.956862745098039, 1.0, 0.0, 1.0 ],
					"id" : "obj-15",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 115.0, 680.0, 229.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 86.5, 599.0, 263.0 ],
					"proportion" : 0.5
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.0, 0.980392156862745, 1.0, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.0, 560.0, 485.0, 246.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 222.0, 560.0, 485.0, 246.0 ],
					"proportion" : 0.5
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-39", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "audio4setDesigner.wav",
				"bootpath" : "/Volumes/hard drive/IMCA 221/final",
				"patcherrelativepath" : "../..",
				"type" : "WAVE",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
