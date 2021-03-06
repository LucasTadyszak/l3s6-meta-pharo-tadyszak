Class {
	#name : #Die,
	#superclass : #Object,
	#instVars : [
		'faces'
	],
	#category : #Dice
}

{ #category : #'as yet unclassified' }
Die class >> withFaces: anInteger [ 
	"Create and initialize a new die with anInteger faces."
	| instance |
	instance := self new.
	instance faces: anInteger.
	^ instance 
	
]

{ #category : #acccessing }
Die >> + aDicable [

	^ aDicable sumWithDie: self
]

{ #category : #acccessing }
Die >> faces [

	^ faces
]

{ #category : #accessing }
Die >> faces: anInteger [

	faces := anInteger
]

{ #category : #initialization }
Die >> initialize [ 

	super initialize.
	faces := 6
]

{ #category : #printing }
Die >> printOn: aStream [

	super printOn: aStream.
	aStream nextPutAll: ' (', faces printString, ')'
]

{ #category : #'as yet unclassified' }
Die >> roll [

	^ faces atRandom 
]

{ #category : #acccessing }
Die >> sumWithDie: aDie [

	^ DieHandle new 
		addDie: self;
		addDie: aDie; yourself
]

{ #category : #acccessing }
Die >> sumWithHandle: aDieHandle [

	| handle |
	handle := DieHandle new.
	aDieHandle dice do: [ :each | handle addDie: each ].
	handle addDie: self.
	^ handle 
]
