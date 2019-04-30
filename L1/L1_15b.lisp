;b) Sa se construiasca o functie care intoarce produsul atomilor numerici
;dintr-o lista, de la orice nivel.

(defun produs(L)
	(cond
		((numberp L) L)
		((atom L) 1)
		(t (apply #'* (MAPCAR #'produs L)))
	)
)