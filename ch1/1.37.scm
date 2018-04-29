(define (cont-frac n d k) 
  (define (c-f-helper i)
      (if (= i k)
	  (/ (n i)
	     (d i))
	  (/ (n i)
	     (+ (d i)
		(c-f-helper (+ 1 i))))))
  (c-f-helper 1))

(/ 1 (cont-frac (lambda (i) 1.0) 
	   (lambda (i) 1.0) 
	   12))

;so, 12 layers!


(define (cont-frac-i n d k)
  (define (c-f-helper k s)
    (if (= 0 k)
	s
	(c-f-helper (- k 1) (/ (n k) (+ (d k) s)))))
  (c-f-helper k 0))

(/ 1 (cont-frac-i (lambda (i) 1.0) 
		  (lambda (i) 1.0) 
		  12))

