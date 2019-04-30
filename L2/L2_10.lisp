;10. Se da un arbore de tipul (2). Sa se precizeze nivelul pe care apare un nod
;x in arbore. Nivelul radacii se considera a fi 0.

;(defun nivel_aux(x L niv)
;	(cond
;		((null L) nil)
;		((equal x (car L)) niv)
;		(t (and (nivel_aux x (cadr L) (+ 1 niv)) (nivel_aux x (caddr L) (+ 1 niv))))
;	)
;)

;(defun nivel (x L)
;	(nivel_aux x L 0)
;)

(defun membru(e L)
	(cond
		((null L) nil)
		((equal e (car L)) t)
		((listp (car L)) (membru e (car L)))
		(t (membru e (cdr L)))
	)
)

(defun nivel (e L)
	(cond
		((equal e (car L)) 0)
		((membru e (cadr L)) (+ 1 (nivel e (cadr L))))
		((membru e (caddr L)) (+ 1 (nivel e (caddr L))))
		(t -1)
	)
)