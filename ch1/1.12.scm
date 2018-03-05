;pascal's triangle
;recursive

(define (tri n m)
  (if (or (= n m) (= m 1))
      1
      (+ (tri (- n 1) m)
	 (tri (- n 1) (- m 1)))))

(tri 5 4)
