(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))


(define (fermat-test n)
  (define (try-it a)
    (if (= a n) true
	(if (= (expmod a n n) a)
	    (try-it (+ 1 a))
	    false)))
  (try-it 1))

(fermat-test 561)
(fermat-test 1105)
(fermat-test 1729)
(fermat-test 2465)
(fermat-test 2821)
(fermat-test 6601)

