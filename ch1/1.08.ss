(define (cube-roots x)
    (cube-roots-iter x 1.0))

(define (cube-roots-iter x guess)
    (define better-guess (improve x guess))
    (if (good-enough? better-guess guess)
        guess
        (cube-roots-iter x better-guess)))

(define (improve x guess)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (abs x)
    (if (> x 0)
        x
        (- x)))

(define (good-enough? next-guess guess)
    (< (abs (- next-guess guess)) 0.001))