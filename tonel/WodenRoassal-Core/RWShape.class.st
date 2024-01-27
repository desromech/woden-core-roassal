"
I am shape that is used by the elements in Woden Roassal.
"
Class {
	#name : #RWShape,
	#superclass : #Object,
	#instVars : [
		'color',
		'roughness',
		'texture',
		'normalTexture'
	],
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #'instance creation' }
RWShape class >> black [
	^ self color: Color black
]

{ #category : #'instance creation' }
RWShape class >> blue [
	^ self color: Color blue
]

{ #category : #'instance creation' }
RWShape class >> color: aColor [
	^ self new color: aColor
]

{ #category : #'instance creation' }
RWShape class >> cyan [
	^ self color: Color cyan
]

{ #category : #requirements }
RWShape class >> element [
	^ self new element
]

{ #category : #requirements }
RWShape class >> elementOn: aModel [
	^ self new elementOn: aModel
]

{ #category : #requirements }
RWShape class >> elementsOn: aModel [
	^ self new elementsOn: aModel
]

{ #category : #'instance creation' }
RWShape class >> green [
	^ self color: Color green
]

{ #category : #'instance creation' }
RWShape class >> magenta [
	^ self color: Color magenta
]

{ #category : #'instance creation' }
RWShape class >> red [
	^ self color: Color red
]

{ #category : #'instance creation' }
RWShape class >> white [
	^ self color: Color white
]

{ #category : #'instance creation' }
RWShape class >> yellow [
	^ self color: Color yellow
]

{ #category : #'attribute accessing' }
RWShape >> boundingBoxFor: element [
	self subclassResponsibility
]

{ #category : #accessing }
RWShape >> color: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self colorElement: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWShape >> colorElement: aValueOrASymbolOrAOneArgBlock [
	color := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWShape >> colorFor: anElement [
	^ color rwValue: anElement
]

{ #category : #'scene presentation' }
RWShape >> constructInWodenSceneNode: aWDSceneNode forElement: anElement [
	self subclassResponsibility
]

{ #category : #requirements }
RWShape >> element [
	^ RWElement new shape: self; yourself
]

{ #category : #requirements }
RWShape >> elementOn: aModel [
	^ RWElement new shape: self; model: aModel; yourself
]

{ #category : #requirements }
RWShape >> elementsOn: aCollectionOfModels [
	^ aCollectionOfModels collect: [ :eachElement | self elementOn: eachElement ]
]

{ #category : #initialization }
RWShape >> initialize [
	super initialize.
	color := Color white.
	roughness := 0.6.
]

{ #category : #testing }
RWShape >> isNullShape [
	^ false
]

{ #category : #'attribute accessing' }
RWShape >> materialFor: anElement [
	^ WDMetallicRoughnessMaterial default
		baseColorFactor: (self colorFor: anElement);
		baseColorTexture: (self textureFor: anElement);
		normalTexture: (self normalTextureFor: anElement);
		roughnessFactor: (self roughnessFor: anElement);
		yourself
]

{ #category : #accessing }
RWShape >> normalTexture: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self normalTextureElement: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWShape >> normalTextureElement: aValueOrASymbolOrAOneArgBlock [
	normalTexture := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWShape >> normalTextureFor: anElement [
	^ normalTexture rwValue: anElement
]

{ #category : #accessing }
RWShape >> roughness: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self roughness: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWShape >> roughnessElement: aValueOrASymbolOrAOneArgBlock [
	color := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWShape >> roughnessFor: anElement [
	^ roughness rwValue: anElement
]

{ #category : #accessing }
RWShape >> texture: aValueOrASymbolOrAOneArgBlock [
	"aValueOrASymbolOrAOneArgBlock is applied on the object model"
	self textureElement: [ :anElement | aValueOrASymbolOrAOneArgBlock rwValue: anElement model ]
]

{ #category : #accessing }
RWShape >> textureElement: aValueOrASymbolOrAOneArgBlock [
	texture := aValueOrASymbolOrAOneArgBlock
]

{ #category : #'attribute accessing' }
RWShape >> textureFor: anElement [
	^ texture rwValue: anElement
]
