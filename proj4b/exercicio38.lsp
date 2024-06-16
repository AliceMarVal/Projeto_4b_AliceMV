(defun fatorial (n)
  (cond
    ((< n 0) nil)
    ((zerop n) 1)
    (t (* n (fatorial (- n 1))))))

(defun potencia (b e)
  (cond
    ((< e 0) nil)
    ((zerop e) 1)
    (t (* b (potencia b (- e 1))))))

(defun serieH (n)
  (cond
    ((< n 1) nil)
    ((eql n 1) 1)
    ((eql (mod n 2) 0) (- (serieH (- n 1)) (/ (potencia n n) (fatorial n))))
    (t (+ (serieH (- n 1)) (/ (potencia n n) (fatorial n))))))

(defun main ()
  (format t "Digite um numero inteiro positivo para calcular a serie H: ~%")
  (let ((n (parse-integer (read-line) :junk-allowed t)))
    (let ((resultado (serieH n)))
      (if (null resultado)
          (format t "Valor invalido. O numero deve ser um inteiro positivo.~%")
          (format t "Resultado da serie H(~d): ~f~%" n resultado)))))

(main)  ; Chamada da função principal para executar o programa
