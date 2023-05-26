Class {
	#name : #PyFiPlugin,
	#superclass : #Object,
	#traits : 'TPyramidPlugin',
	#classTraits : 'TPyramidPlugin classTrait',
	#instVars : [
		'pyfiView',
		'pyfiButton'
	],
	#category : #'Pyramid-Figma'
}

{ #category : #'class initialization' }
PyFiPlugin class >> initialize [

	PyramidPluginManager uniqueInstance addPlugin: self
]

{ #category : #adding }
PyFiPlugin >> addPanelsOn: aPyramidSimpleWindow [

	aPyramidSimpleWindow
		at: #spaceToolbarTop
		addItem: [ :builder |
		builder makeButtonWithIcon: self pyfiButton order: 11 ]
]

{ #category : #'as yet unclassified' }
PyFiPlugin >> connectOn: aPyramidEditor [

	self pyfiView editor: aPyramidEditor
]

{ #category : #initialization }
PyFiPlugin >> initialize [

	pyfiView := PyFiPresenter new.
	pyfiButton := SpButtonPresenter new
		              icon: (self iconNamed: #thumbsUp);
		              action: [
			              (PyramidPopoverFactory
				               makeWithPresenter: pyfiView
				               relativeTo: self pyfiButton
				               position: SpPopoverPosition right) popup ];
		              yourself
]

{ #category : #accessing }
PyFiPlugin >> pyfiButton [
	^ pyfiButton
]

{ #category : #accessing }
PyFiPlugin >> pyfiView [
	^ pyfiView
]
