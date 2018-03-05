(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (expt-iter b n)
  (define (expt-helper b n a)
    (cond ((= n 0) a)
	  ((even? n) (expt-helper (square b) (/ n 2) a))
	  (else (expt-helper b (- n 1) (* b a)))))
  (expt-helper b n 1))


(define (test b n)
  (= (fast-expt b n) (expt-iter b n)))

(test 3 4)


