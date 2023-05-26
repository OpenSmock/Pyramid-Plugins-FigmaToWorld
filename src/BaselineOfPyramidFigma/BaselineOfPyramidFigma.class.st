Class {
	#name : #BaselineOfPyramidFigma,
	#superclass : #BaselineOf,
	#category : #BaselineOfPyramidFigma
}

{ #category : #baselines }
BaselineOfPyramidFigma >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec postLoadDoIt: #postload:package:.
		self dependencies: spec.
		spec
			package: #'Pyramid-Figma'
			with: [ spec requires: #( Bloc Figma Pyramid ) ] ]
]

{ #category : #accessing }
BaselineOfPyramidFigma >> dependencies: spec [

	spec
		baseline: #BlocFigma
		with: [ spec repository: 'github://OpenSmock/Bloc-Figma:main' ].
	spec
		baseline: #Pyramid
		with: [ spec repository: 'github://OpenSmock/Pyramid:dev/src' ]
]

{ #category : #actions }
BaselineOfPyramidFigma >> postload: loader package: packageSpec [

	PyFiPlugin initialize
]
