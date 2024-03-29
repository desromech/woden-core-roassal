"
I am a layout that places elements along the edges of a circle.
"
Class {
	#name : #RWCircularLayout,
	#superclass : #RWLayout,
	#instVars : [
		'radius',
		'initialRadius',
		'initialIncrementalAngle',
		'initialAngle',
		'factor'
	],
	#category : #'WodenRoassal-Core-Layout'
}

{ #category : #hook }
RWCircularLayout >> computeIncrementalAngleFor: elements [
	"Return the value _in radian_ of the incremental angle"
	
	^ initialIncrementalAngle = 0
		ifTrue: [ 2 * Float pi / (elements size ) ]
		ifFalse: [ initialIncrementalAngle ]
]

{ #category : #hook }
RWCircularLayout >> computeRadiusFor: elements [
	"Return the radius of the circle. If none has been set (i.e., initialRadius = 0), then it is computed as the scale factor times the number of elements"
	^ initialRadius = 0 
		ifTrue: [ elements size * self scaleFactor ]
		ifFalse: [ initialRadius ]
]

{ #category : #hook }
RWCircularLayout >> doExecute: elements [
	| angleIncrement angle rad center cos sin |

	elements isEmpty ifTrue: [ ^ self ].
	rad := self computeRadiusFor: elements.
	center := 0 @ 0.
	"center := Point x: rad y: rad."
	angleIncrement := self computeIncrementalAngleFor: elements.
	angle := self initialAngle.
	elements
		do: [ :each | 
			cos := angle cos.
			sin := angle sin.

			angle := angle + angleIncrement.
			each translateToX: rad*cos y: rad*sin z: 0.0 ]
]

{ #category : #accessing }
RWCircularLayout >> initialAngle [
	"Return the initial angle, in radian"
	^ initialAngle
]

{ #category : #accessing }
RWCircularLayout >> initialAngle: aFloat [
	"aFloat is an angle in Radian."
	initialAngle := aFloat
]

{ #category : #accessing }
RWCircularLayout >> initialAngleInDegree [ 
	"Return the initial angle in degree"
	^ self initialAngle * 180 / Float pi
]

{ #category : #accessing }
RWCircularLayout >> initialAngleInDegree: aNumber [
	"Set the initial angle in radian"
	self initialAngle: aNumber * Float pi / 180
]

{ #category : #initialization }
RWCircularLayout >> initialize [
	"Initialize a newly created instance. This method must answer the receiver."
	
	super initialize.
	self scaleBy: 0.5.
	
	"Represent the initial angle to place the elements"
	initialAngle := 0.
	
	"Distance of the circle. If it is 0 when entering doExecute, then it is computed"
	initialRadius := 0.
	
	"0 means that it is computed, and not set by the user"
	initialIncrementalAngle := 0.
]

{ #category : #'instance creation' }
RWCircularLayout >> on: elements [
	self doExecute: elements
]

{ #category : #public }
RWCircularLayout >> on: elements edges: edges [
	self on: elements
]

{ #category : #transforming }
RWCircularLayout >> scaleBy: aNumber [
	
	factor := aNumber
]

{ #category : #accessing }
RWCircularLayout >> scaleFactor [
	^ factor
]
