#|
This code will continue to run until out of memory, because
lisp uses applicative-order evaluation, which is "evaluate the
arguments and then apply", so the operand `else-clause`, which is
`(sqrt-iter guess x)` here will be evaluated again and again
|#
(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
        guess
        (sqrt-iter (improve guess x) x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess x)
    (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (square x)
    (* x x))

(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
      (else else-clause)))