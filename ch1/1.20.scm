(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

;applicative order calls:

(gcd 206 40)
(gcd 40 6) 1 call to remainder
(gcd 6 4) 2 calls 
(gcd 4 2) 3 calls
(gcd 2 0) 4 calls

;normal-order
;using the weird if

(gcd 206 40)
(gcd 40 (remainder 206 40))
(gcd 40 (gcd (remainder 40 (remainder 206 40))) ;+1 for the if
(gcd 40 (gcd (remainder 40 (remainder 206 40))) ;+1 for the if