#|
When use the `(sqrt x)`:
For samll numbers,
since the number of `x` can be very small,
so the (square guess) will cause a big error.

For big numbers, 
because "arithmetic operations are almost always performed with limited precision",
so it's possible that the "improve guess" result is same as the "guess" because of
the limited precision, it will be "improved" again and again

So if we want to design a procedure to avoid these situations, we can compare the "guess"
with "the next guess" to judge if the result is "good enough"
|#
(define (sqrt-iter guess x)
    (define improved_guess (improve guess x))
    (if (good-enough? guess improved_guess)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess improved_guess)
    (< (abs (- guess improved_guess)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (square x)
    (* x x))    