;7. Sa se scrie o functie care calculeaza suma numerelor pare
;minus suma numerelor impare la toate nivelurile unei liste.

;returneaza numarul daca este par
;			-numarul daca este impar 
;			0 daca nu e numar
;			aduna, altfel
(defun suma(L)
	(cond
		((and (numberp L) (= (mod L 2) 0)) L)
		((and (numberp L) (= (mod L 2) 1)) (* -1 L))
		((atom L) 0)
		(t (apply #'+ (MAPCAR #'suma L)))
	)
)

