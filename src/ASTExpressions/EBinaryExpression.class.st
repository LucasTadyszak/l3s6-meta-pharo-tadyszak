Class {
	#name : #EBinaryExpression,
	#superclass : #EExpression,
	#instVars : [
		'left',
		'right'
	],
	#category : #ASTExpressions
}

{ #category : #'public access' }
EBinaryExpression >> left [ 

	^ left
]

{ #category : #'public access' }
EBinaryExpression >> left: anInteger [

	left := anInteger 
]

{ #category : #'public access' }
EBinaryExpression >> operatorString [

	^ self subclassResponsibility 
]

{ #category : #'public access' }
EBinaryExpression >> printOn: aStream [

	aStream nextPutAll: '( '.
	left printOn: aStream.
	aStream nextPutAll: self operatorString.
	right printOn: aStream.
	aStream nextPutAll: ' )'
]

{ #category : #'public access' }
EBinaryExpression >> right [ 

	^ right
]

{ #category : #'public access' }
EBinaryExpression >> right: anInteger [ 

	right:= anInteger
]
