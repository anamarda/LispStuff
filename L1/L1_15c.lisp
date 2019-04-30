;c) Definiti o functie care sorteaza cu pastrarea dublurilor o lista liniara.

(defun introd (e L col)
	(cond
		((null L) (append col (list e)))
		((or (< e (car L)) (= e (car L))) (append col (list e) L))
		(t (introd e (cdr L) (append col (list (car L)))))
	)
)

(defun sortare_aux (L LSort)
	(cond
		((null L) LSort)
		(t (sortare_aux (cdr L) (introd (car L) LSort nil)))
	)
)

(defun sortare (L)
	(sortare_aux L nil)
)