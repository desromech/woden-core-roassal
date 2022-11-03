"
A RWLayoutTest is a test class for testing the behavior of RWLayout
"
Class {
	#name : #RWLayoutTest,
	#superclass : #TestCase,
	#category : #'WodenRoassal-Tests'
}

{ #category : #tests }
RWLayoutTest >> testXLineLayout [
	| elements |
	elements := RWBox elementsOn: (1 to: 3).
	self assert: elements first position equals: Vector3 zeros.
	self assert: elements second position equals: Vector3 zeros.
	self assert: elements third position equals: Vector3 zeros.
	
	RWXLineLayout on: elements.
	self assert: elements first position x < elements second position x.
	self assert: elements second position x < elements third position x.
]
