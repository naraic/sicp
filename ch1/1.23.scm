(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (define (next divisor)
    (if (= 2 divisor) 
        3
        (+ 2 divisor)))
  (cond ((> (square test-divisor) n) n)
	((divides? test-divisor n) test-divisor)
	(else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start end)
  (cond ((> start end) 0)
	((even? start) (timed-prime-test start)(search-for-primes (+ 1 start) end))
	(else (timed-prime-test start)(search-for-primes (+ 2 start) end))))

(search-for-primes 1 10)

;(timed-prime-test 100)

(define (next n)
  (if (= n 2)
      3
      (+ n 2)))
 

      
      
 
