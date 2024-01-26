"
I provide a basic lighting setup.
"
Class {
	#name : #RWBasicLightingSetup,
	#superclass : #RWLightingSetup,
	#category : #'WodenRoassal-Core-Core'
}

{ #category : #presentation }
RWBasicLightingSetup >> constructInScene: scene forView: view [
	"Add a shadow casting directional light source"
	scene add: ((WDDirectionalLightSource new
		castShadows: true;
		color: (Vector3 x: 0.3 y: 0.3 z: 0.3);
		asSceneNode)
			rotateDegreesOnX: -45;
			rotateDegreesOnY: -120;
			yourself).
			
	"Add a sky light source"
	scene add: ((WDDirectionalLightSource new
		color: (Vector3 x: 0.3 y: 0.3 z: 0.3);
		asSceneNode)
			rotateDegreesOnX: -90;
			yourself).
			
	"Add a filling light source"
	scene add: ((WDDirectionalLightSource new
		color: (Vector3 x: 0.3 y: 0.3 z: 0.3);
		asSceneNode)
			rotateDegreesOnX: 45;
			rotateDegreesOnY: 120;
			yourself)
]
