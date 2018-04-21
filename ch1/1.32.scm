;1.32

(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (acc-iter a result)
    (if (> a b)
        result
	(acc-iter (next a) (combiner (term a) result))))
  (acc-iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (sum-iter term a next b)
  (accumulate-iter + 0 term a next b))

(define (product term a next b)
  (accumulate * 1 term a next b))

(define (product-iter term a next b)
  (accumulate-iter * 1 term a next b))

(define (cube x)
  (* x x x))

(define (identity x) x)

(define (inc n) (+ 1 n))

(sum identity 1 inc 10)
(sum-iter identity 1 inc 10)

(product identity 1 inc 5)
(product-iter identity 1 inc 5)

