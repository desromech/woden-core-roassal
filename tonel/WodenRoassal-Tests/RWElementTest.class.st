"
A RWElementTest is a test class for testing the behavior of RWElement
"
Class {
	#name : #RWElementTest,
	#superclass : #TestCase,
	#category : #'WodenRoassal-Tests'
}

{ #category : #tests }
RWElementTest >> testNew [
	| element |
	element := RWElement new.
	self assert: element model isNil.
	self assert: element shape isNullShape.
	self assert: element position equals: Vector3 zeros.
	self assert: element scale equals: Vector3 ones.
	self assert: element rotation equals: Quaternion identity.
	self assert: element transform equals: TRSTransform3D identity.
	
	self assert: element extent isNotNil.
	self assert: element width isNotNil.
	self assert: element height isNotNil.
	self assert: element depth isNotNil.

]

{ #category : #tests }
RWElementTest >> testTranslateBy [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.
	element translateBy: (Vector3 x: 1 y: 2 z: 3).
	self assert: element position equals: (Vector3 x: 1 y: 2 z: 3).

]

{ #category : #tests }
RWElementTest >> testTranslateByX [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.
	element translateByX: 1.
	self assert: element position equals: (Vector3 x: 1).

]

{ #category : #tests }
RWElementTest >> testTranslateByXYZ [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.
	element translateByX: 1 y: 2 z: 3.
	self assert: element position equals: (Vector3 x: 1 y: 2 z: 3).

]

{ #category : #tests }
RWElementTest >> testTranslateByY [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.
	element translateByY: 1.
	self assert: element position equals: (Vector3 y: 1).

]

{ #category : #tests }
RWElementTest >> testTranslateByZ [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.
	element translateByZ: 1.
	self assert: element position equals: (Vector3 z: 1).

]

{ #category : #tests }
RWElementTest >> testTranslateToX [
	| element |
	element := RWElement new.
	self assert: element position equals: Vector3 zeros.

	element translateByX: 1 y: 2 z: 3.
	self assert: element position equals: (Vector3 x: 1 y: 2 z: 3).

	element translateToX: -3.
	self assert: element position equals: (Vector3 x: -3 y: 2 z: 3).

]
