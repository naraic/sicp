(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fast-expt b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-expt b (/ n 2))))
	(else (* b (fast-expt b (- n 1))))))


;yup, it works, i think it should be fairly similar in terms of efficiency 
; okay, so the number of operations is similar, but the operations are more complex with this new method due to large intermediate numbers. 
;this can be observed with a replacement function for "square", where we display the result before returning the value

