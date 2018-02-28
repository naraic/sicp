(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

(define (good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 100)

(define (test a)
  (new-if #f 10 (test (- a 1))))

(test 1)


;;so the reason this doesn't work is because of applicative order evaluation. with AOE the parameters are first evaluated before the operator procedure is applied. if there are any recursive sub-expressions the interpreter will follow these procedures continuously and never reach the cond expression within the operator, potentially.
