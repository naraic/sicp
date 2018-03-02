;with very small numbers, the "good-enough?" procedure ignores accuracy. if the input number is less than the hardcoded "good enough" value, it cannot make the guess more accurate, as the test will never return false.

;with limited precision floating point numbers there can only be a fixed numbers of digits of accuracy with large or small numbers. this limit will define the limit of accuracy of our procedure.

(define (close-enough? guess x)
  (= (square guess) x)) 
;it also probably doesn't work

;this should work better for both large and small numbers, but it might take a long time

;the following checks the change between successive guesses


(define (sqrt x)
  (define (sqrt-iter guess x)
    (define (improve guess)
      (average guess (/ x guess)))

    (define (average x y)
      (/ (+ x y) 2))

    (define (close-enough? guess improved)
      (< (abs (- guess improved)) 0.00001))

    (if (close-enough? guess (improve guess))
	guess
	(sqrt-iter (improve guess) x)))
  (sqrt-iter 1.0 x))

(sqrt 100)






