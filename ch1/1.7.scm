;with very small numbers, the "good-enough?" procedure ignores accuracy. if the input number is less than the hardcoded "good enough" value, it cannot make the guess more accurate, as the test will never return false.

;with limited precision floating point numbers there can only be a fixed numbers of digits of accuracy with large or small numbers. this limit will define the limit of accuracy of our procedure.

(define (close-enough? prev curr)
  (= prev curr))

;this should work better for both large and small numbers, but it might take a long time

(define (close-enough2? prev curr)
  (< (- (abs prev) (abs curr)) 0.000001))

;this second one might be quicker for large numbers but won't work for small ones


