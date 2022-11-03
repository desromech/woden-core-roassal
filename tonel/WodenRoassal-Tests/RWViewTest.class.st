Class {
	#name : #RWViewTest,
	#superclass : #TestCase,
	#category : #'WodenRoassal-Tests'
}

{ #category : #tests }
RWViewTest >> testEmptyView [
	| view viewWindow viewScene |
	view := RWView new.
	self assert: view elements isEmpty.
	
	viewWindow := view openInNullWindow.
	viewScene := viewWindow scene.
	self assert: viewScene normalLayer children isEmpty.
]

{ #category : #tests }
RWViewTest >> testViewWithBox [
	| view element viewScene boxNode |
	view := RWView new.
	element := RWBox element.
	self assert: element view isNil.
	
	view add: element.
	self assert: element view equals: view.

	viewScene := view openInNullWindow scene.
	self assert: viewScene normalLayer children size equals: 1.
	
	boxNode := viewScene normalLayer children first.
	self assert: boxNode renderables isNotEmpty.
]

{ #category : #tests }
RWViewTest >> testViewWithElement [
	| view element viewScene |
	view := RWView new.
	element := RWElement new.
	self assert: element view isNil.
	
	view add: element.
	self assert: element view equals: view.
	
	viewScene := view openInNullWindow scene.
	self assert: viewScene normalLayer children size equals: 1.
]

{ #category : #tests }
RWViewTest >> testViewWithElements [
	| view elements viewScene |
	view := RWView new.
	elements := RWBox elementsOn: (1 to: 10).

	view addAll: elements.
	viewScene := view openInNullWindow scene.
	self assert: viewScene normalLayer children size equals: 10.
]
