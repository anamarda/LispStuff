;d) Definiti o functie care construiește o listă cu pozițiile elementului
;minim dintr-o listă liniară numerică.

(defun minim (m L)
	(cond
		((null L) m)
		((> m (car L)) (minim (car L) (cdr L)))
		(t (minim m (cdr L)))
	)
)

(defun poz (e L pozitie col)
	(cond
		((null L) col)
		;am gasit un element a carui pozitie trebuie adaugata
		((equal e (car L)) (poz e (cdr L) (+ 1 pozitie) (cons pozitie col)))
		(t (poz e (cdr L) (+ 1 pozitie) col))
	)
)

(defun pozMin (L)
	(cond
		((null L) nil)
		(t (poz (minim (car L) L) L 0 nil))
	)
)