Class {
	#name : #PyFiFormProxifier,
	#superclass : #Object,
	#category : #'Pyramid-Figma'
}

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> getProxyOf: aForm [

	| selector |
	selector := 'form' , aForm hash printString.
	aForm writePNGFileNamed:
		self ressourceDirectory / (selector , '.png').

	^ PyramidExternalRessourceProxy fromSource:
		  (PyramidExternalRessourceSource formFromFileNamed:('ressources/images/<1s>.png' expandMacrosWith: selector))
]

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> proxifyBackgroundOf: aBlElement [

	| proxy |
	proxy := self getProxyOf: aBlElement background image.
	 aBlElement background: (BlImageBackground image: proxy)
]

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> proxyFromLoader: aLoader [

	aLoader elementsWithImageBackground do: [ :each | self proxifyBackgroundOf: each ]
]

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> ressourceDirectory [

	FileLocator imageDirectory / 'ressources' ifAbsent: [ :dir |
		dir ensureCreateDirectory ].
	FileLocator imageDirectory / 'ressources' / 'images' ifAbsent: [ :dir |
		dir ensureCreateDirectory ].
	^ FileLocator imageDirectory / 'ressources' / 'images'
]
