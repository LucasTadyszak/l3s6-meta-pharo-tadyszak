Class {
	#name : #ENegation,
	#superclass : #EExpression,
	#instVars : [
		'expression'
	],
	#category : #Expressions
}

{ #category : #'instance creation' }
ENegation class >> expression: anExpression [

	^ self new expression: anExpression 
]

{ #category : #'public access' }
ENegation >> evaluate [

	^ expression evaluate negated
]

{ #category : #'public access' }
ENegation >> evaluateWith: anObject [ 

	^ (expression evaluateWith: anObject) negated
]

{ #category : #'public access' }
ENegation >> expression: anExpression [

	expression := anExpression
]

{ #category : #'public access' }
ENegation >> negated [

	^ expression
]

{ #category : #'public access' }
ENegation >> printOn: aStream [

	aStream 
		nextPutAll: '- ';
		nextPutAll: expression printString. 
]
