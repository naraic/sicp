(define (sum-of-2-largest-squares x y z)
  (cond ((and (<= x y)
	      (<= x z)) (sum-of-squares y z))
	((and (<= y x)
	      (<= y z)) (sum-of-squares x z))
	(else (sum-of-squares x y))))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (square x) (* x x))

;tests! 

(sum-of-2-largest-squares 2 3 4)
(sum-of-2-largest-squares 2 4 3)
(sum-of-2-largest-squares 3 4 2)
(sum-of-2-largest-squares 3 2 4)
(sum-of-2-largest-squares 4 3 2)
(sum-of-2-largest-squares 4 2 3)

(sum-of-2-largest-squares 4 2 2)
(sum-of-2-largest-squares 2 4 2)
(sum-of-2-largest-squares 2 2 4)

(sum-of-2-largest-squares 2 2 2)




