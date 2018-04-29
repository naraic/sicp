(define (cont-frac n d k) 
  (define (c-f-helper i)
      (if (= i k)
	  (/ (n i)
	     (d i))
	  (/ (n i)
	     (- (d i)
		(c-f-helper (+ 1 i))))))
  (c-f-helper 1))

(define (tan-cf x k)
  (cont-frac (lambda (n) (if (= 1 n)
			     x
			     (* x x)))
	     (lambda (x) (- (* 2 x) 1))
	     k))

(tan-cf .742 100)


	   





