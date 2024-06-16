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

(defun ex (x n)
  (cond
    ((< n 0) nil)
    ((zerop n) 1)
    (t (+ (/ (potencia x n) (fatorial n))
          (ex x (- n 1))))))

(defun main ()
  (format t "Digite o valor de x para calcular e^x: ~%")
  (let ((x (parse-integer (read-line) :junk-allowed t)))
    (format t "Digite o numero de termos da serie de Taylor (n): ~%")
    (let ((n (parse-integer (read-line) :junk-allowed t)))
      (let ((resultado (ex x n)))
        (if (null resultado)
            (format t "Valores invalidos. Certifique-se de digitar numeros inteiros nao negativos.~%")
            (format t "Aproximacao de e^~d utilizando ~d termos da serie de Taylor: ~f~%" x n resultado))))))

(main)  ; Chamada da função principal para executar o programa
