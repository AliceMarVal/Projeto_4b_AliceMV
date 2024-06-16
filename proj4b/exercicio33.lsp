(defun raiz (a n)
  (cond
    ((< n 0) nil)  ; Retorna nil se n for negativo
    ((zerop n) 1)  ; Retorna 1 se n for zero (raiz 0 de a)
    (t
     (/ (+ (raiz a (- n 1))
           (/ 3 (raiz a (- n 1))))
        2))))

(defun main ()
  "Função principal para interação com o usuário."
  (format t "Digite o valor de a: ~%")
  (let ((a (parse-integer (read-line) :junk-allowed t)))
    (format t "Digite o valor de n: ~%")
    (let ((n (parse-integer (read-line) :junk-allowed t)))
      (let ((resultado (raiz a n)))
        (if (null resultado)
            (format t "Valor de n invalido. n deve ser um numero nao negativo.~%")
            (format t "Aproximação da raiz ~d-esima de ~d: ~f~%" n a resultado))))))

(main)  ; Chamada da função principal para executar o programa
