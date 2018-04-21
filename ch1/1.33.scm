(define (filtered-accumulate combiner null-value filter term a next b)
  (if (> a b)
      null-value
      (if (filter a)
	  (combiner (term a) (filtered-accumulate combiner null-value filter term (next a) next b))
	  (filtered-accumulate combiner null-value filter term (next a) next b))))

(define (prime? n)
  (define (tester m)
    (if (> m (sqrt n))
	#t
	(if (= 0 (remainder n m))
	    #f
	    (tester (+ 1 m)))))
  (tester 2))

(define (identity n) n)

(define (inc n) (+ 1 n))

(define (square n) (* n n))

(define (sum-prime-squares a b)
  (filtered-accumulate + 0 prime? square a inc b))

(sum-prime-squares 1 5)

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))



(define (relative-prime-product n)
  (define (gcd-test m)
    (= 1 (gcd m n)))
  (filtered-accumulate * 1 gcd-test identity 1 inc n))

(relative-prime-product 10)

	  