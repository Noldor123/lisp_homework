(defun APPEND1 (x y) (cond (x (cons (car x) (APPEND1 (cdr x) y))) 
                           (y (cons (car y) (APPEND1 x (cdr y)))) 
                           (T ()))) 
(print (APPEND1 '(A B) '(C D)))
