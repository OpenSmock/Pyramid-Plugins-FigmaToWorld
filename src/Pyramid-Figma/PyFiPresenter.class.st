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

	| elements |
	self activeProject ifNotNil: [
		elements := (BlFigmaLoader loadZipFile: self pathInput text).
		elements isCollection ifTrue: [ self activeProject roots addAll: elements ] ifFalse: [ self activeProject roots add: elements ]
			 ]
]

{ #category : #'as yet unclassified' }
PyFiPresenter >> actionOpenFileExplorer [

	| dialog |
	dialog := FileDialogWindow onFileSystem: FileSystem disk.
	self flag: #TODO.
	dialog open
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
				   yourself);
		  add: (SpBoxLayout newHorizontal
				   spacing: 4;
				   add: self pathInput width: 200;
				   add: self exploreButton width: 24;
					add: self importButton width: 24;
					yourself); yourself
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
							 action: [ self actionImport ];
		                yourself
]

{ #category : #accessing }
PyFiPresenter >> pathInput [
^ pathInput
]