Class {
	#name : #PyFiExamples,
	#superclass : #Object,
	#category : #'Pyramid-Figma'
}

{ #category : #'pyramid-serialized-bloc' }
PyFiExamples class >> carte [
	"This class has been generated using Pyramid.

	By: YannLEGOFF
	2023-06-06 16:49:34"

	<pySTON>
	^ 'OrderedCollection [
	BlElement {
		#children : BlChildrenArray [
			BlElement {
				#children : BlChildrenArray [
					BlElement {
						#children : BlChildrenArray [
							BlElement {
								#children : BlChildrenArray [
									BlElement {
										#children : BlChildrenArray [ ],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 403.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 676.0
												}
											},
											#position : Point [ 146, 120 ],
											#margin : BlInsets {
												#top : 0.0,
												#left : 0.0,
												#bottom : 0.0,
												#right : 0.0
											},
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : Float [ #infinity ],
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : BlCustomVisuals {
											#background : BlPaintBackground {
												#paint : BlColorPaint {
													#color : Color [ #white ]
												}
											}
										},
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Rectangle 1'',
												#id : ''2:3'',
												#type : ''VECTOR''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Rectangle 1''
											}
										},
										#layout : BlBasicLayout { },
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @10,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [ ],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 69.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 636.0
												}
											},
											#position : Point [ 166, 138 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : BlCustomVisuals {
											#geometry : BlRoundedRectangleGeometry {
												#extent : Point [ 636.0, 69.0 ],
												#pathCache : BlPathCache {
													#geometry : @39
												},
												#cornerRadii : BlCornerRadii {
													#topLeft : 0,
													#topRight : 0,
													#bottomLeft : 0,
													#bottomRight : 0
												},
												#center : Point [ 318.0, 34.5 ]
											},
											#background : BlPaintBackground {
												#paint : BlLinearGradientPaint {
													#stops : [
														0 : Color {
															#red : 0.07429130009775171,
															#green : 0.06744868035190615,
															#blue : 0.39589442815249265,
															#alpha : 1.0
														},
														1 : Color {
															#red : 0.2590420332355816,
															#green : 0.6089931573802542,
															#blue : 0.8621700879765396,
															#alpha : 0.0
														}
													],
													#start : Point [ 0, 0 ],
													#end : Point [ 0.0, 69.0 ]
												}
											}
										},
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Rectangle 2'',
												#id : ''2:5'',
												#type : ''RECTANGLE''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Rectangle 2''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @30,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [
											BlElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : BlLayoutExactResizer {
															#size : 204.0
														}
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : BlLayoutExactResizer {
															#size : 181.0
														}
													},
													#position : Point [ 45/2, 0 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : BlCustomVisuals {
													#background : BlImageBackground {
														#image : PyramidExternalRessourceProxy {
															#source : PyramidExternalRessourceSource {
																#selector : #form99590656,
																#target : #PyFiTemp
															}
														}
													}
												},
												#userData : IdentityDictionary { },
												#layout : @27,
												#eventDispatcher : BlElementEventDispatcher {
													#owner : @58,
													#handlers : [ ]
												}
											}
										],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 204.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 181.0
												}
											},
											#position : Point [ 166, 245 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : BlCustomVisuals {
											#geometry : BlRoundedRectangleGeometry {
												#extent : Point [ 181.0, 204.0 ],
												#pathCache : BlPathCache {
													#geometry : @80
												},
												#cornerRadii : BlCornerRadii {
													#topLeft : 0,
													#topRight : 0,
													#bottomLeft : 0,
													#bottomRight : 0
												},
												#center : Point [ 90.5, 102.0 ]
											},
											#border : BlBorder {
												#paint : BlColorPaint {
													#color : Color {
														#red : 0.07429130009775171,
														#green : 0.06744868035190615,
														#blue : 0.39589442815249265,
														#alpha : 1.0
													}
												},
												#width : 0,
												#style : BlStrokeStyle {
													#lineCap : BlStrokeLineButtCap { },
													#lineJoin : BlStrokeLineMiterJoin { },
													#miterLimit : 4.0,
													#dashArray : [ ],
													#dashOffset : 0.0
												},
												#opacity : 1.0
											}
										},
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Rectangle 3'',
												#id : ''2:6'',
												#type : ''RECTANGLE''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Rectangle 3''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @56,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [
											BlElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : BlLayoutExactResizer {
															#size : 57.0
														}
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : BlLayoutExactResizer {
															#size : 214.0
														}
													},
													#position : Point [ 0.0, 0.0 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : BlCustomVisuals {
													#background : BlImageBackground {
														#image : PyramidExternalRessourceProxy {
															#source : PyramidExternalRessourceSource {
																#selector : #form992458240,
																#target : #PyFiTemp
															}
														}
													}
												},
												#userData : IdentityDictionary { },
												#layout : @27,
												#eventDispatcher : BlElementEventDispatcher {
													#owner : @99,
													#handlers : [ ]
												}
											}
										],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 57.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 214.0
												}
											},
											#position : Point [ 588, 435 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : BlCustomVisuals {
											#geometry : BlRoundedRectangleGeometry {
												#extent : Point [ 214.0, 57.0 ],
												#pathCache : BlPathCache {
													#geometry : @121
												},
												#cornerRadii : BlCornerRadii {
													#topLeft : 0,
													#topRight : 0,
													#bottomLeft : 0,
													#bottomRight : 0
												},
												#center : Point [ 107.0, 28.5 ]
											}
										},
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''image 1'',
												#id : ''2:8'',
												#type : ''RECTANGLE''
											},
											#elementId : BlElementNamedId {
												#identifier : #''image 1''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @97,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [ ],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 179.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 398.0
												}
											},
											#position : Point [ 389, 245 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : BlCustomVisuals {
											#geometry : BlRoundedRectangleGeometry {
												#extent : Point [ 398.0, 179.0 ],
												#pathCache : BlPathCache {
													#geometry : @140
												},
												#cornerRadii : BlCornerRadii {
													#topLeft : 0,
													#topRight : 0,
													#bottomLeft : 0,
													#bottomRight : 0
												},
												#center : Point [ 199.0, 89.5 ]
											},
											#background : BlPaintBackground {
												#paint : BlColorPaint {
													#color : Color {
														#red : 0.956989247311828,
														#green : 0.9521016617790812,
														#blue : 0.967741935483871,
														#alpha : 1.0
													}
												}
											}
										},
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Rectangle 4'',
												#id : ''2:9'',
												#type : ''RECTANGLE''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Rectangle 4''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @131,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [
											BlTextElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : BlLayoutFitContentResizer { }
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#position : Point [ 217.5, 7.0 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : BlDefaultVisuals { },
												#userData : IdentityDictionary { },
												#layout : @27,
												#text : BlRopedText {
													#rope : BlAttributeRope {
														#attributes : [
															BlFontSizeAttribute {
																#isOverwritableByStyler : true,
																#size : 40
															},
															BlFontWeightAttribute {
																#isOverwritableByStyler : true,
																#weight : 700
															}
														],
														#rope : BlCollectionRope {
															#collection : ''Carte CSE''
														}
													}
												}
											}
										],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 46.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 603.0
												}
											},
											#position : Point [ 184, 147 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : @162,
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Carte CSE'',
												#id : ''2:12'',
												#type : ''TEXT''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Carte CSE''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @153,
											#handlers : [ ]
										}
									},
									BlElement {
										#children : BlChildrenArray [
											BlTextElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#position : Point [ 0, 4.9999999999999964 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : @162,
												#userData : IdentityDictionary { },
												#layout : @27,
												#text : BlRopedText {
													#rope : BlAttributeRope {
														#attributes : [
															BlFontSizeAttribute {
																#isOverwritableByStyler : true,
																#size : 36
															},
															BlFontWeightAttribute {
																#isOverwritableByStyler : true,
																#weight : 400
															}
														],
														#rope : BlCollectionRope {
															#collection : ''Mme XX''
														}
													}
												}
											},
											BlTextElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#position : Point [ 0, 36.0 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : @162,
												#userData : IdentityDictionary { },
												#layout : @27,
												#text : BlRopedText {
													#rope : BlAttributeRope {
														#attributes : [
															BlFontSizeAttribute {
																#isOverwritableByStyler : true,
																#size : 36
															},
															BlFontWeightAttribute {
																#isOverwritableByStyler : true,
																#weight : 400
															}
														],
														#rope : BlCollectionRope {
															#collection : ''28 allée de la mer,''
														}
													}
												}
											},
											BlTextElement {
												#children : BlChildrenArray [ ],
												#constraints : BlLayoutCommonConstraints {
													#vertical : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#horizontal : BlLayoutCommonConstraintsAxis {
														#resizer : @159
													},
													#position : Point [ 0, 77.0 ],
													#margin : @18,
													#padding : @18,
													#minHeight : 0.0,
													#minWidth : 0.0,
													#maxHeight : @19,
													#maxWidth : @19,
													#ignoredByLayout : false,
													#accountTransformation : false
												},
												#visuals : @162,
												#userData : IdentityDictionary { },
												#layout : @27,
												#text : BlRopedText {
													#rope : BlAttributeRope {
														#attributes : [
															BlFontSizeAttribute {
																#isOverwritableByStyler : true,
																#size : 36
															},
															BlFontWeightAttribute {
																#isOverwritableByStyler : true,
																#weight : 400
															}
														],
														#rope : BlCollectionRope {
															#collection : ''29200 Brest''
														}
													}
												}
											}
										],
										#constraints : BlLayoutCommonConstraints {
											#vertical : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 148.0
												}
											},
											#horizontal : BlLayoutCommonConstraintsAxis {
												#resizer : BlLayoutExactResizer {
													#size : 345.0
												}
											},
											#position : Point [ 415, 260 ],
											#margin : @18,
											#padding : @18,
											#minHeight : 0.0,
											#minWidth : 0.0,
											#maxHeight : @19,
											#maxWidth : @19,
											#ignoredByLayout : false,
											#accountTransformation : false
										},
										#visuals : @162,
										#userData : IdentityDictionary {
											#figma_metadata : {
												#name : ''Mme XX 28 allée de la mer, 29200 Brest'',
												#id : ''2:13'',
												#type : ''TEXT''
											},
											#elementId : BlElementNamedId {
												#identifier : #''Mme XX 28 allée de la mer, 29200 Brest''
											}
										},
										#layout : @27,
										#eventDispatcher : BlElementEventDispatcher {
											#owner : @181,
											#handlers : [ ]
										}
									}
								],
								#constraints : BlLayoutCommonConstraints {
									#vertical : BlLayoutCommonConstraintsAxis {
										#resizer : BlLayoutExactResizer {
											#size : 50.0
										}
									},
									#horizontal : BlLayoutCommonConstraintsAxis {
										#resizer : @235
									},
									#position : Point [ 0.0, 0.0 ],
									#margin : @18,
									#padding : @18,
									#minHeight : 0.0,
									#minWidth : 0.0,
									#maxHeight : @19,
									#maxWidth : @19,
									#ignoredByLayout : false,
									#accountTransformation : false
								},
								#visuals : BlCustomVisuals {
									#clipChildren : false
								},
								#userData : IdentityDictionary {
									#figma_metadata : {
										#name : ''Group 1'',
										#id : ''2:14'',
										#type : ''GROUP''
									},
									#elementId : BlElementNamedId {
										#identifier : #''Group 1''
									}
								},
								#layout : @27,
								#eventDispatcher : BlElementEventDispatcher {
									#owner : @8,
									#handlers : [ ]
								}
							}
						],
						#constraints : BlLayoutCommonConstraints {
							#vertical : BlLayoutCommonConstraintsAxis {
								#resizer : BlLayoutExactResizer {
									#size : 694.0
								}
							},
							#horizontal : BlLayoutCommonConstraintsAxis {
								#resizer : BlLayoutExactResizer {
									#size : 943.0
								}
							},
							#position : Point [ 0.0, 0.0 ],
							#margin : @18,
							#padding : @18,
							#minHeight : 0.0,
							#minWidth : 0.0,
							#maxHeight : @19,
							#maxWidth : @19,
							#ignoredByLayout : false,
							#accountTransformation : false
						},
						#visuals : BlCustomVisuals {
							#background : BlPaintBackground {
								#paint : BlColorPaint {
									#color : Color {
										#red : 0.7634408602150538,
										#green : 0.7419354838709677,
										#blue : 0.7419354838709677,
										#alpha : 1.0
									}
								}
							}
						},
						#userData : IdentityDictionary {
							#figma_metadata : {
								#name : ''Frame 1'',
								#id : ''2:2'',
								#type : ''FRAME''
							},
							#elementId : BlElementNamedId {
								#identifier : #''Frame 1''
							}
						},
						#layout : @27,
						#eventDispatcher : BlElementEventDispatcher {
							#owner : @6,
							#handlers : [ ]
						}
					}
				],
				#constraints : BlLayoutCommonConstraints {
					#vertical : BlLayoutCommonConstraintsAxis {
						#resizer : @235
					},
					#horizontal : BlLayoutCommonConstraintsAxis {
						#resizer : @235
					},
					#position : Point [ 0.0, 0.0 ],
					#margin : @18,
					#padding : @18,
					#minHeight : 0.0,
					#minWidth : 0.0,
					#maxHeight : @19,
					#maxWidth : @19,
					#ignoredByLayout : false,
					#accountTransformation : false
				},
				#visuals : BlCustomVisuals {
					#clipChildren : false
				},
				#userData : IdentityDictionary {
					#figma_metadata : {
						#name : ''Page 1'',
						#id : ''0:1'',
						#type : ''PAGE''
					},
					#elementId : BlElementNamedId {
						#identifier : #''Page 1''
					}
				},
				#layout : @27,
				#eventDispatcher : BlElementEventDispatcher {
					#owner : @4,
					#handlers : [ ]
				}
			}
		],
		#constraints : BlLayoutCommonConstraints {
			#vertical : BlLayoutCommonConstraintsAxis {
				#resizer : @235
			},
			#horizontal : BlLayoutCommonConstraintsAxis {
				#resizer : @235
			},
			#position : Point [ 0.0, 0.0 ],
			#margin : @18,
			#padding : @18,
			#minHeight : 0.0,
			#minWidth : 0.0,
			#maxHeight : @19,
			#maxWidth : @19,
			#ignoredByLayout : false,
			#accountTransformation : false
		},
		#visuals : BlCustomVisuals {
			#clipChildren : false
		},
		#userData : IdentityDictionary {
			#figma_metadata : {
				#name : ''Carte de fidélité'',
				#id : ''0:0'',
				#type : ''DOCUMENT''
			},
			#elementId : BlElementNamedId {
				#identifier : #''Carte de fidélité''
			}
		},
		#layout : @27,
		#eventDispatcher : BlElementEventDispatcher {
			#owner : @2,
			#handlers : [ ]
		}
	}
]'
]
