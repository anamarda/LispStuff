;c) Dandu-se o lista, sa se construiasca lista primelor elemente ale tuturor
;elementelor lista ce au un numar impar de elemente la nivel superficial.
;Exemplu: (1 2 (3 (4 5) (6 7)) 8 (9 10 11)) => (1 3 9).

;lista care calculeaza numarul de elemente ale listei date
;(list) (i)
(defun nr_el(L)
	(cond
		((null L) 0)
		(t (+ 1 (nr_el (cdr L))))
	)
)

;(list, bool) (i, i)
(defun prim_el_aux(L prim)
	(cond
		;lista vida
		((null L) nil)
		;primul element e atom
		((and (equal prim t) (equal (mod (nr_el L) 2) 1) (atom (car L))) (append (list (car L)) (prim_el_aux (cdr L) nil)))
		;primul element e lista
		((and (equal prim t) (equal (mod (nr_el L) 2) 1) (listp (car L))) (append (list (car L)) (append (prim_el_aux (car L) t) (prim_el_aux (cdr L) nil))))
		;nu e primul element, dar e lista
		((and (equal prim nil) (equal (mod (nr_el L) 2) 1) (listp (car L))) (append (prim_el_aux (car L) t) (prim_el_aux (cdr L) nil)))
		;nu e primul element, nu e numar impar de elemente
		(t (prim_el_aux (cdr L) nil))
	)
)

;(list) (i)
(defun prim_el(L)
	(prim_el_aux L t)
)

