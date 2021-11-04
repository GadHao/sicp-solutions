(define (sum-of-larger-two a b c)
    (if (> a b)
        (+ (square a)
           (if (> b c) (square b) (square c)))
        (+ (square b)
           (if (> a c) (square a) (square c)))))

(define (square x)
    (* x x))