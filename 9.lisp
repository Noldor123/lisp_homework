(defun NUMBER1(x a &OPTIONAL(N 0)) (cond ((null x) 0) 
                                         ((eql a (car x)) (+ N 1)) 
                                         ( T (NUMBER1 (cdr x) a (+ N 1))))) 

(defun MAKE-CAR-CDR(x a Q &OPTIONAL(n (NUMBER1 x a))) (COND ((= n 0) nil) 
                                                            ((= n 1) (cons 'CAR (cons Q nil))) 
                                                            (T (MAKE-CAR-CDR x a (cons 'CDR (cons Q nil)) (- n 1))))) 

(print (MAKE-CAR-CDR '(A B C) 'B 'Q))
