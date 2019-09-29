; Χρησιμοποίηση λειτουργιών

(defun last-name (name)
  (first (last name)))

(setf names `((ΑΡΙΣΤΟΤΕΛΗΣ ΣΤΑΓΕΙΡΙΤΗΣ) (ΘΑΛΗΣ ΜΙΛΗΣΙΟΣ) (ΘΕΟΦΡΑΣΤΟΣ ΕΡΕΣΟΣ)))

(write (mapcar #'last-name names))
; (ΣΤΑΓΕΙΡΙΤΗΣ ΜΙΛΗΣΙΟΣ ΕΡΕΣΟΣ)

(format t "~%")

(write  (mapcar #'- '(1 2 3 4)))
; (-1 -2 -3 -4)

(format t "~%")

(write (mapcar #'+ '(1 2 3 4) '(10 20 30 40)))
; (11 22 33 44)

(format t "~%")

; Καθορισμός σταθερών

(defparameter *titles*
  '(ΚΥΡΙΟΣ ΚΥΡΙΑ ΔΕΣΠΟΙΝΙΣ)
  "Μια λίστα με προσφωνήσεις")

(defun first-name-no-addressing (name)
  (if (member (first name) *titles*)
    (first-name-no-addressing (rest name))
    (first name)))

(write (first-name-no-addressing '(ΔΕΣΠΟΙΝΙΣ ΔΙΟΤΙΜΑ ΜΑΝΤΙΝΕΙΑ)))
; ΔΙΟΤΙΜΑ

(format t "~%")

(write (mapcar #'first-name-no-addressing '((ΔΕΣΠΟΙΝΙΣ ΔΙΟΤΙΜΑ ΜΑΝΤΙΝΕΙΑ) (ΚΥΡΙΑ ΥΠΑΤΙΑ))))
; (ΔΙΟΤΙΜΑ ΥΠΑΤΙΑ)}