(defun calculate-pi-term (n)
  (/ 4.0 (* (if (oddp n) 1 -1) (1+ (* 2 n)))))

(defun calculate-pi (terms)
  (if (or (not (integerp terms)) (<= terms 0))
      nil
      (loop for i from 0 below terms
            sum (calculate-pi-term i))))

(defun main ()
  (format t "Digite o numero de termos: ~%")
  (let ((terms (Read)))
    (let ((result (calculate-pi terms)))
      (if (null result)
          (format t "Valor invalido para o numero de termos: ~a~%" terms)
          (format t "Valor de pi calculado com ~a termos: ~a~%" terms result)))))

(main)  ; Chamada da função principal para executar o programa
