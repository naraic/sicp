(define (cont-frac n d k) 
  (define (c-f-helper i)
      (if (= i k)
	  (/ (n i)
	     (d i))
	  (/ (n i)
	     (+ (d i)
		(c-f-helper (+ 1 i))))))
  (c-f-helper 1))

(+ 2 (cont-frac (lambda (i) 1.0) 
	   (lambda (x) (if (= (remainder (+ x 1) 3) 0)
		   (* (/ (+ x 1) 3) 2)
		   1))
	   10))
	   



