#|
The applicative-order evaluation: it will enter an infinite recursion process,
because it want to evaluate the value of `(p)` first

The normal-order evaluation evaluation: it will calculate the 0,
because it will be expanded into `(if (= 0 0) 0 (p)))`
|#