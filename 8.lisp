(defun TOSORT (x) (cond ((null x) (nil)) 
                        ((null (cdr x)) (cons (car x) nil)) 
                        ((> (car x) (cadr x)) (cons (cadr x)(TOSORT (cons (car x) (cddr x))))) 
                        (T (cons (car x) (TOSORT (cdr x)))))) 

(defun SORT1(x &OPTIONAL(N 0)) (COND ((< N (LENGTH x)) (SORT1 (TOSORT x) (+ N 1))) (T x))) 
(PRINT (SORT1 '(5 4 3 2 1)))