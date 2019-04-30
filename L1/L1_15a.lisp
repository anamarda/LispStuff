;a) Sa se scrie o functie care intoarce reuniunea a doua multimi.

(defun exista(e L)
	(cond
		((null L) nil)
		((equal (car L) e) t)
		(t (exista e (cdr L)))
	)
)

(defun reuniune_aux (l1 l2 col)
	(cond
		((and (null l1) (null l2)) col)
		;l1 null, primul el din l2 exista in col
		((and (null l1) (exista (car l2) col)) (reuniune_aux l1 (cdr l2) col))
		;l1 null, primul el din l2 nu exista in col
		((null l1) (reuniune_aux l1 (cdr l2) (cons (car l2) col)))
		;l1 nu e null, primul el din l1 exista in col
		((exista (car l1) col) (reuniune_aux (cdr l1) l2 col))
		;l1 nu e null
		(t (reuniune_aux (cdr l1) l2 (cons (car l1) col)))
	)
)

(defun reuniune (l1 l2)
	(reuniune_aux l1 l2 nil)
)