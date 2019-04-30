;d) Definiti o functie care, dintr-o lista de atomi, produce o lista de
;perechi (atom n), unde atom apare in lista initiala de n ori. De ex:
;(A B A B A C A) --> ((A 4) (B 2) (C 1)).

;returneaza o lista formata din: primul element - nr de aparitii in lista 
;												- restul listei -> lista initiala cu elementul sters
(defun numara_aux(e L nr col)
	(cond
		((null L) (append (list nr) col))
		((equal e (car L)) (numara_aux e (cdr L) (+ 1 nr) col))
		(t (numara_aux e (cdr L) nr (append col (list (car L)))))
	)
)

(defun numara (e L)
	(numara_aux e L 0 nil)
)

(defun perechi(L col)
	(cond
		((null L) col)
		(t (perechi (cdr (numara (car L) L)) (append col (list (list (car L) (car (numara (car L) L)))))))
	)
)