(defun fatorial (n)
  (cond
    ((< n 0) nil)
    ((zerop n) 1)
    (t (* n (fatorial (- n 1))))))

(defun fibonacci (n)
  (cond
    ((< n 1) nil)
    ((< n 3) 1)
    (t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(defun serieG (n)
  (cond
    ((< n 1) nil)
    ((eql n 1) 1)
    ((eql (mod n 2) 0) (- (serieG (- n 1)) (/ n (fatorial (fibonacci n)))))
    (t (+ (serieG (- n 1)) (/ n (fatorial (fibonacci n)))))))

(defun main ()
  (format t "Digite um numero inteiro positivo para calcular a serie G: ~%")
  (let ((n (parse-integer (read-line) :junk-allowed t)))
    (let ((resultado (serieG n)))
      (if (null resultado)
          (format t "Valor invalido. O numero deve ser um inteiro positivo.~%")
          (format t "Resultado da serie G(~d): ~f~%" n resultado)))))

(main)