Class {
	#name : #PyFiFormProxifier,
	#superclass : #Object,
	#category : #'Pyramid-Figma'
}

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> getProxyOf: aForm [

	| selector |
	selector := 'form' , aForm hash printString.
	aForm writePNGFileNamed: self ressourceDirectory / (selector , '.png').

	PyFiTemp class compile:
		('<1s><r><r><t>^ ImageReadWriter formFromFileNamed: ''<1s>.png'''
			 expandMacrosWith: selector).

	^ PyramidExternalRessourceProxy fromSource:
		  (PyramidExternalRessourceSource
			   target: PyFiTemp
			   selector: selector asSymbol)
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

FileLocator image / 'ressources' ensureCreateDirectory.
	FileLocator image / 'ressources' / 'images' ensureCreateDirectory.
	^ FileLocator image / 'ressources' / 'images'
]
