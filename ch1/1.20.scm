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
;also gonna use 'r' for remainder to save space

(gcd 206 40)
(gcd 40 (r 206 40))     ;+1 call in if
(gcd (r 206 40)
     (r 40 (r 206 40))) ;+2 calls in if
(gcd (r 40 (r 206 40))
     (r (r 206 40) (r 40 (r 206 40)))) ;+4 calls in if
(gcd (r (r 206 40) (r 40 (r 206 40)))
     (r (r 40 (r 206 40)) (r (r 206 40) (r 40 (r 206 40))))) ;+7 calls in if

; b evaluates to 0 here, so a is the result, which contains 4 remainders
; total is 4 + 7 + 4 + 2 + 1 calls = 18 total
    

