Class {
	#name : #DieHandleTests,
	#superclass : #TestCase,
	#category : #Dice
}

{ #category : #tests }
DieHandleTests >> testAddingTwiceTheSameDice [

	| handle |
	handle := DieHandle new.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber = 1.
	handle addDie: (Die withFaces: 6).
	self assert: handle diceNumber = 2
]

{ #category : #tests }
DieHandleTests >> testCreationAdding [

	| handle |
	handle := DieHandle new
		addDie: (Die withFaces: 6);
		addDie: (Die withFaces: 10);
		yourself.
	self assert: handle diceNumber = 2
]

{ #category : #tests }
DieHandleTests >> testMaxNumber [

	| handle |
	handle := DieHandle new
	addDie: (Die withFaces: 6).
	handle addDie: (Die withFaces: 10).
	self assert: handle maxNumber equals: 16

]

{ #category : #tests }
DieHandleTests >> testRoll [

	| handle |
	handle := DieHandle new
	addDie: (Die withFaces: 6).
	handle addDie: (Die withFaces: 10).
	10 timesRepeat: [ self assert: (handle roll between: handle diceNumber and: handle maxNumber) ]

]

{ #category : #tests }
DieHandleTests >> testSimpleHandle [

	self assert: 2 D20 diceNumber equals: 2
]

{ #category : #tests }
DieHandleTests >> testSumming [

	| handle |
	handle := 2 D20 + 3 D10.
	self assert: handle diceNumber equals: 5
]
