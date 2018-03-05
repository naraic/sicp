;multiplcation with repeated addition

(define (double n) (* n 2))

(define (halve n) (/ n 2))

(define (even? n) (= (remainder n 2) 0))

(define (fast-mult a b)
  (define (fast-mult-helper a n)
    (cond ((= a 0) n)
	  ((even? a) (fast-mult-helper (halve a) (double n)))
	  (else (fast-mult-helper (- a 1) (+ n b)))))
  (fast-mult-helper a 0))

;tests

(fast-mult 0 2)
(fast-mult 1 2)
(fast-mult 2 2)
(fast-mult 9 9)

