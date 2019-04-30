;8. Sa se construiasca lista nodurilor unui arbore de tipul (2) parcurs in
;inordine.

(defun inordine(L)
	(cond
		((null L) nil)
		(t (append (inordine (cadr L)) (list (car L)) (inordine (caddr L))))
	)
)