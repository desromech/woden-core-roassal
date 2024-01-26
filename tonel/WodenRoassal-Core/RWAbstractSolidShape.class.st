"
I am an abstract solid shape that provides basic volume sizing information, and support for setting a color.
"
Class {
	#name : #RWAbstractSolidShape,
	#superclass : #RWShape,
	#instVars : [
		'width',
		'height',
		'depth'
	],
	#category : #'WodenRoassal-Core'
}

{ #category : #testing }
RWAbstractSolidShape class >> isAbstract [
	^ self == RWAbstractSolidShape
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> boundingBoxFor: element [
	^ AABox halfExtent: (self halfExtentFor: element)
]

{ #category : #accessing }
RWAbstractSolidShape >> depth: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self depthElement: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWAbstractSolidShape >> depthElement: aValueOrASymbolOrAOneArgBlock [
	depth := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> depthFor: anElement [
	^ depth rwValue: anElement
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> extentFor: element [
	^ Vector3
		x: (self widthFor: element)
		y: (self heightFor: element)
		z: (self depthFor: element)
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> halfExtentFor: anElement [
	^ (self extentFor: anElement) / 2
]

{ #category : #accessing }
RWAbstractSolidShape >> height: aValueOrAOneArgBlock [
	"aValueOrAOneArgBlock is applied on the object model"
	self heightElement: [ :anElement | aValueOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWAbstractSolidShape >> heightElement: aValueOrASymbolOrAOneArgBlock [
	height := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> heightFor: anElement [
	^ height rwValue: anElement
]

{ #category : #initialization }
RWAbstractSolidShape >> initialize [
	super initialize.
	width := 1.
	height := 1.
	depth := 1.
]

{ #category : #accessing }
RWAbstractSolidShape >> size: aBlockOrASymbolOrAValue [
	self height: aBlockOrASymbolOrAValue.
	self width: aBlockOrASymbolOrAValue.
	self depth: aBlockOrASymbolOrAValue.
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> transformFor: anElement [
	^ TRSTransform3D scale: (self extentFor: anElement)
]

{ #category : #accessing }
RWAbstractSolidShape >> width: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self widthElement: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWAbstractSolidShape >> widthElement: aValueOrASymbolOrAOneArgBlock [
	width := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWAbstractSolidShape >> widthFor: anElement [
	^ width rwValue: anElement
]
