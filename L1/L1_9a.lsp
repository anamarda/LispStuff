;a) Sa se scrie o functie care intoarce diferenta a doua multimi.

;ap(integer list) (i i)
(defun ap(e L)
	(cond
		((null L) nil)
		((equal (car L) e) t)
		(t (ap e (cdr L)))
	)
)

; l1\l2
;(list list list) (i i)
(defun dif_multimi(l1 l2)
	(cond
		((null l1) nil)
		((ap (car l1) l2) (dif_multimi (cdr l1) l2))
		(t (cons (car l1) (dif_multimi (cdr l1) l2)))
	)
)




