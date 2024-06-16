(defun fibonacci (n)
  (cond
    ((< n 1) nil)
    ((< n 3) 1)
    (t (+ (fibonacci (- n 1)) (fibonacci (- n 2))))))

(defun produto (n)
  (cond
    ((< n 1) nil)
    ((< n 3) 1)
    (t (* (fibonacci n) (produto (- n 1))))))

(defun main ()
  (format t "Digite um numero inteiro positivo para calcular o produto dos primeiros n termos da sequencia de Fibonacci: ~%")
  (let ((n (parse-integer (read-line) :junk-allowed t)))
    (let ((resultado (produto n)))
      (if (null resultado)
          (format t "Valor invalido. O numero deve ser um inteiro positivo.~%")
          (format t "Produto dos primeiros ~d termos da sequencia de Fibonacci: ~d~%" n resultado)))))

(main)  ; Chamada da função principal para executar o programa

