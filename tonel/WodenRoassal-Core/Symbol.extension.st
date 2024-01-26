Extension { #name : #Symbol }

{ #category : #'*WodenRoassal-Core' }
Symbol >> rwValue: anObject [ 
	^ anObject perform: self
]
