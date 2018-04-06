(defun APPEND1 (x y) (cond (x (cons (car x) (APPEND1 (cdr x) y))) 
                           (y (cons (car y) (APPEND1 x (cdr y)))) 
                           (T ()))) 

(defun ATOMS (x)(cond ((NULL x) ()) 
                      ((atom (car x)) (APPEND1 (cons (car x) ()) (ATOMS (cdr x)))) 
                      (T (APPEND1 (ATOMS (car x))(ATOMS (cdr x)))))) 

(print (ATOMS '((A B) C NIL (D (E F G)))))