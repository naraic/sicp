;product - analogous to sum

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))


(define (identity n) n)
(define (inc n) (+ 1 n))

(product identity 1 inc 5)

(define (fraction n)
  (if (odd? n)
      (/ (+ 1.0 n)
	 (+ 2 n))
      (/ (+ 2.0 n)
	 (+ 1.0 n))))

(fraction 3)

(* 4 (product fraction 1 inc 1000))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (* (term a) result))))
  (iter a 1))

(* 4 (product-iter fraction 1 inc 1000))

