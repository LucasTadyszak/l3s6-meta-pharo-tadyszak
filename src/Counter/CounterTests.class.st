Class {
	#name : #CounterTests,
	#superclass : #TestCase,
	#category : #Counter
}

{ #category : #tests }
CounterTests >> testDecrement [
	| c |
	c := Counter new.
	c count: 1.
	c decrement.
	self assert: c count equals: 0
]

{ #category : #tests }
CounterTests >> testIncrement [
	| c |
	c := Counter new.
	c count: 1.
	c increment.
	self assert: c count equals: 2
]

{ #category : #tests }
CounterTests >> testInitialize [ 
	| c |
	c := Counter new.
	self assert: c count equals: 0 "assert:equals:"
]