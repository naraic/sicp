(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

(define (f-iter n)
  (define (f-helper count sum n1 n2 n3)
    (if (= n count)
	sum
	(if (< n 3)
	    (f-helper (+ 1 count) (+ count sum) n2 n3 n)
	    (f-helper (+ 1 count)
		      (+ sum 
			 n1
			 (* n2 2)
			 (* n3 3))
		      n2
		      n3
		      count))))
   (f-helper 0 0 0 0 0))


(f 5)
(f-iter 5)
		  
  