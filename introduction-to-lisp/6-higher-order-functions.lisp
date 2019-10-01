; Λειτουργίες υψηλότερων τάξεων

(defun mappend (fn the-list)
  "Εφαρμογή λειτουργιών σε κάθε στοιχείο της λίστας και προσάρτηση των αποτελεσμάτων."
  (apply #'append (mapcar fn the-list)))

(defun self-and-double (x)
    (list x (+ x x)))

(write (mappend #'self-and-double '(3)))
; (3 6)

(format t "~%")

(write (mappend #'self-and-double '(1 10 300)))
; (1 2 10 20 300 600)

(format t "~%")

(write (apply #'+ '(1 2 3 4)))
; (10)

(format t "~%")

(defun self-and-negation (x)
  (if (numberp x)
    (list x (- x))
    nil))

(write (mappend #'self-and-negation '(testing 1 2 3 test)))
; (1 -1 2 -2 3 -4)

(format t "~%")

(write (funcall #'+ 2 3))

(format t "~%")

(write (apply #'+ '(2 3)))

(format t "~%")

(write ((lambda (x) (+ x 2)) 4))
; 6