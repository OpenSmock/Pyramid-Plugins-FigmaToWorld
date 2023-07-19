Class {
	#name : #PyFiPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'activeProject',
		'pathInput',
		'exploreButton',
		'importButton',
		'replaceButton'
	],
	#category : #'Pyramid-Figma'
}

{ #category : #'as yet unclassified' }
PyFiPresenter >> actionImport [

	| decoder elements loader |
	self activeProject ifNotNil: [
		decoder := self replaceButton state
			           ifTrue: [ self decoderReplace ]
			           ifFalse: [ self decoderDefault ].
		loader := decoder loadZipFile: self pathInput text.
		self installFont.
		elements := loader rootElement.
		PyFiFormProxifier proxyFromLoader: loader.
		elements isCollection
			ifTrue: [ self activeProject roots addAll: elements ]
			ifFalse: [ self activeProject roots add: elements ] ]
]

{ #category : #'as yet unclassified' }
PyFiPresenter >> actionOpenFileExplorer [

	| dialog result |
	dialog := FileDialogWindow onFileSystem: FileSystem disk.
	result := dialog openModal answer.
	result ifNil: [ self pathInput text: '' ] ifNotNil: [ self pathInput text: result ].
]

{ #category : #accessing }
PyFiPresenter >> activeProject [

	^ activeProject
]

{ #category : #'as yet unclassified' }
PyFiPresenter >> decoderDefault [

	^ BlFigmaDecoder new  addAllProperties: BlFigmaProperties allProperties; yourself
]

{ #category : #'as yet unclassified' }
PyFiPresenter >> decoderReplace [

	| decoder |
	decoder := BlFigmaDecoder new
		  addAllProperties: BlFigmaPropertiesReplaceInstances allProperties;
		  yourself.
	decoder properties at: #children put: [ :element :dict :loader |
		(dict at: #type) = #INSTANCE ifFalse: [
			element addChildren: ((dict at: #children) collect: [ :each |
					 decoder decode: each loader: loader ]) ] ].
	^ decoder
]

{ #category : #layout }
PyFiPresenter >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpLabelPresenter new
				   label: 'Import Figma design';
				   displayBold: [ :a | true ];
				   yourself)
		  expand: false;
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: self pathInput;
				   add: self exploreButton width: 24;
				   yourself)
		  expand: false;
		 add: self replaceButton expand: false;
		  add: self importButton expand: false;
		  add: SpNullPresenter new;
		  yourself
]

{ #category : #accessing }
PyFiPresenter >> editor: anEditor [

	activeProject := anEditor projectModel
]

{ #category : #accessing }
PyFiPresenter >> exploreButton [
^ exploreButton
]

{ #category : #accessing }
PyFiPresenter >> importButton [

	^ importButton
]

{ #category : #initialization }
PyFiPresenter >> initializePresenters [

	pathInput := SpTextInputFieldPresenter new.
	replaceButton := SpCheckBoxPresenter new
		                 label: 'Replace all components by placeHolders';
							  state: true;
		                 yourself.
	exploreButton := SpButtonPresenter new
		                 icon: (self iconNamed: #configNew);
		                 action: [ self actionOpenFileExplorer ];
		                 yourself.
	importButton := SpButtonPresenter new
		                icon: (self iconNamed: #smallPrintIt);
		                label: 'Import as root';
		                action: [ self actionImport ];
		                yourself
]

{ #category : #'as yet unclassified' }
PyFiPresenter >> installFont [

AeFontManager globalInstance scanDirectory: 'assets/fonts/' asFileReference.
]

{ #category : #accessing }
PyFiPresenter >> pathInput [
^ pathInput
]

{ #category : #accessing }
PyFiPresenter >> replaceButton [
^ replaceButton
]
