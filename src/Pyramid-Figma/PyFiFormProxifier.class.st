Class {
	#name : #PyFiFormProxifier,
	#superclass : #Object,
	#category : #'Pyramid-Figma'
}

{ #category : #'as yet unclassified' }
PyFiFormProxifier class >> getProxyOf: aForm [

	| selector |
	selector := 'form' , aForm hash printString.
	aForm writePNGFileNamed: selector , '.png'.

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
