(defun APPEND1 (x y) (cond (x (cons (car x) (APPEND1 (cdr x) y))) 
                           (y (cons (car y) (APPEND1 x (cdr y)))) 
                           (T ())))

(defun TOSORT (x) (cond ((null x) (nil) ) 
                        ((null (cdr x)) (cons (car x) nil) ) 
                        ((> (car x) (cadr x)) (cons (cadr x)(TOSORT (cons (car x) (cddr x))))) 
                        (T (cons (car x) (TOSORT (cdr x)))))) 

(defun SORT1(x &OPTIONAL(N 0)) (COND ((< N (LENGTH x)) (SORT1 (TOSORT x) (+ N 1) )) (T x))) 

(defun MERGE1(L1 L2) (SORT1 (APPEND1 L1 L2 ))) 

(PRINT (MERGE1 '(1 3 5) '(2 4)))
