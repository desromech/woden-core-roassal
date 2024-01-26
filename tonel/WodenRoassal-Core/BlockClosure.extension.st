Extension { #name : #BlockClosure }

{ #category : #'*WodenRoassal-Core' }
BlockClosure >> rwValue: anArgument [
	^ self cull: anArgument
]
