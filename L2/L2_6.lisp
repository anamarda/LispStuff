
;parcurgerea in inordine a unei liste de tip 2
(defun inord(L)
	(cond
		((null L) nil)
		(t ((lambda (lista)
				(append (inord (car lista)) (list (car L)) (inord (cadr lista)))
			)
			(subarbori L)
			)
		)
	)
)

;functie ce construieste o lista cu 2 liste: subarborele stang si subarborele drept 
(defun subarb_aux(L nv nm subarb)
	(cond
		((= nv (+ 1 nm)) (cons subarb (list L)))
		((null L) nil)
		(t (subarb_aux (cddr L) (+ 1 nv) (+ (cadr L) nm) (append subarb (cons (car L) (list (cadr L)))))) 
	)
)

;functia principala de determinare a subarborelui stang si drept
(defun subarbori(L)
	(subarb_aux (cddr L) 0 0 ())
)

