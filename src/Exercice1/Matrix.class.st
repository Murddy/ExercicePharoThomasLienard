Class {
	#name : #Matrix,
	#superclass : #Object,
	#instVars : [
		'tab'
	],
	#category : #Exercice1
}

{ #category : #'as yet unclassified' }
Matrix >> encodeToSparseMatrix [
	"Crée une matrice creuse à partir d'une matrice dense"
    | sparseMatrix rowIndex colIndex |
    sparseMatrix := Dictionary new.
    rowIndex := 1.
    
    self do: [ :row |
        colIndex := 1.
        row do: [ :value |
            value = 0 ifFalse: [
                sparseMatrix at: (rowIndex @ colIndex) put: value.
            ].
            colIndex := colIndex + 1.
        ].
        rowIndex := rowIndex + 1.
    ].
    
    ^ sparseMatrix

]

{ #category : #accessing }
Matrix >> tab [ 
	
	^ tab
]

{ #category : #accessing }
Matrix >> tab: aTab [
	
	tab := aTab
]
