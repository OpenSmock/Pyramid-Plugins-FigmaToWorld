Class {
	#name : #PyFiPlugin,
	#superclass : #Object,
	#traits : 'TPyramidPlugin',
	#classTraits : 'TPyramidPlugin classTrait',
	#instVars : [
		'pyfiView'
	],
	#category : #'Pyramid-Figma'
}

{ #category : #'class initialization' }
PyFiPlugin class >> initialize [

	PyramidPluginManager uniqueInstance addPlugin: self
]

{ #category : #adding }
PyFiPlugin >> addPanelsOn: aPyramidSimpleWindow [

	aPyramidSimpleWindow at: #tabLeft addItem: [ :builder |
		builder
			makeTab: self pyfiView
			label: 'Figma'
			icon: (self iconNamed: #smallPaint)
			order: 10 ]
]

{ #category : #'as yet unclassified' }
PyFiPlugin >> connectOn: aPyramidEditor [

	self pyfiView editor: aPyramidEditor
]

{ #category : #initialization }
PyFiPlugin >> initialize [

	pyfiView := PyFiPresenter new.
]

{ #category : #accessing }
PyFiPlugin >> pyfiView [
	^ pyfiView
]
