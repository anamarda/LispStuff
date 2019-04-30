;b) Definiti o functie care inverseaza o lista impreuna cu toate sublistele
;sale de pe orice nivel.

; inversare_aux(list list) (i i)
(defun inversare_aux(L col)
	(cond
		((null L) col)
		((listp (car L)) (inversare_aux (cdr L) (cons (inversare_aux (car L) nil) col)))
		(t (inversare_aux (cdr L) (cons (car L) col)))
	)
)

; (list) (i)
(defun inversare(L)
	(inversare_aux L nil)
)

