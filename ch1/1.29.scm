;simpson's rule


(define (simpson f a b n)
  (define h
    (/ (- b a)
       n))
  (define (y k)
    (f (+ a 
	  (* k h))))
  (define (sum term curr next end)
    (if (> curr end)
	0
	(+ (term curr)
	   (sum term (next curr) next end))))
  (define (coefficient n)
    (cond ((= n 0) 1)
	  ((even? n) 2)
	  (else 4)))
  (define (simp-term k)
    (* (coefficient k)
       (y k)))
  (define (inc n)
    (+ 1 n))
  (* (/ h 3)
     (sum simp-term 0 inc n)))

(define (cube x)
  (* x x x))

(simpson cube 0.0 1.0 100)
(simpson cube 0.0 1.0 1000)
