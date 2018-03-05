(define (double n) (* n 2))

(define (halve n) (/ n 2))

(define (even? n) (= 0 (remainder n 2)))

(define (fast-mult a b)
  (cond ((= a 0) 0)
	((even? a) (double (fast-mult (halve a) b)))
	(else (+ b (fast-mult (- a 1) b)))))

(fast-mult 0 1)
		   