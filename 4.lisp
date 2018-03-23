(defun REVERSE1 (x) (cond (x (APPEND1 (REVERSE1 (cdr x)) (cons (car x) ())))
             
                          (T ())))
(print (REVERSE1 '(A B C)))
