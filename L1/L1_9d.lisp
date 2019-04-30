;d) Sa se construiasca o functie care intoarce suma atomilor numerici dintr-o
;lista, de la nivelul superficial.

;(list) (i)
(defun suma(L)
	(cond
		((null L) 0)
		((numberp (car L)) (+ (car L) (suma (cdr L))))
		(t (suma (cdr L)))
	)
)	

