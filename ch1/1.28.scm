;the miller-rabin test


if n is prime
if a < n and +ve
  then a ^ (n-1) mod n == 1


(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (:
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else 
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))

(define (miller-rabin n)
  (define (try-it a)
    (= (expmod a (- 1 n) n)
  (try-it (+ 1 (random (- n 1))))
 