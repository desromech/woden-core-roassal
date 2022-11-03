Class {
	#name : #RWShapeTest,
	#superclass : #TestCase,
	#category : #'WodenRoassal-Tests'
}

{ #category : #tests }
RWShapeTest >> testBoxShape [
	| shape |
	shape := RWBox new.
	self deny: shape isNullShape.
]

{ #category : #tests }
RWShapeTest >> testElement [
	| shape element |
	shape := RWBox new.
	element := shape element.
	self assert: element shape equals: shape.
]

{ #category : #tests }
RWShapeTest >> testElement2 [
	| element |
	element := RWBox element.
	self assert: element shape class equals: RWBox.
]

{ #category : #tests }
RWShapeTest >> testElementOn [
	| element |
	element := RWBox elementOn: 1.
	self assert: element model equals: 1
]

{ #category : #tests }
RWShapeTest >> testElementsOn [
	| shape elements |
	shape := RWBox new.
	elements := shape elementsOn: #(1 2 3).
	self assert: elements first model equals: 1.
	self assert: elements first shape equals: shape.

	self assert: elements second model equals: 2.
	self assert: elements second shape equals: shape.
	
	self assert: elements third model equals: 3.
	self assert: elements third shape equals: shape.
]

{ #category : #tests }
RWShapeTest >> testElementsOn2 [
	| elements |
	elements := RWBox elementsOn: #(1 2 3).
	self assert: elements first model equals: 1.
	self assert: elements second model equals: 2.
	self assert: elements third model equals: 3.
]

{ #category : #tests }
RWShapeTest >> testNullShape [
	| shape |
	shape := RWNullShape new.
	self assert: shape isNullShape.
]
