(defun LENGTH1 (x) (cond (x (+ 1 (LENGTH1 (cdr x)))) 
                         (T 0))) 
(print (LENGTH1 '(A B C D)))
