Class {
	#name : #PyFiPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'activeProject',
		'pathInput',
		'exploreButton',
		'importButton'
	],
	#category : #'Pyramid-Figma'
}

{ #category : #'as yet unclassified' }
PyFiPresenter >> actionImport [

	| loader elements |
	self activeProject ifNotNil: [
		loader := BlFigmaLoader loadZipFile: self pathInput text.
		elements := loader rootElement.
		PyFiFormProxifier proxyFromLoader: loader.
		elements isCollection
			ifTrue: [ self activeProject roots addAll: elements ]
			ifFalse: [ self activeProject roots add: elements ] ].
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

{ #category : #layout }
PyFiPresenter >> defaultLayout [

	^ SpBoxLayout newVertical
		  spacing: 4;
		  add: (SpLabelPresenter new
				   label: 'Import Figma design';
				   displayBold: [ :a | true ];
				   yourself) expand: false;
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: self pathInput;
				   add: self exploreButton width: 24;
				   yourself) expand: false;
		  add: self importButton expand: false;
		  add: SpNullPresenter new;
		  yourself
]

{ #category : #accessing }
PyFiPresenter >> editor: anEditor [

	activeProject := anEditor activeProject
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

{ #category : #accessing }
PyFiPresenter >> pathInput [
^ pathInput
]
