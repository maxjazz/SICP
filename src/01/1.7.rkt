(define (square x)
  (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 4)
(sqrt 9)

(define (better-good-enough? guess prev-guess)
  ( < (abs (/ (- guess prev-guess) prev-guess)) 0.1))

(define (better-sqrt-iter x guess prev-guess)
  (if (better-good-enough? guess prev-guess)
      guess
      (better-sqrt-iter x (improve guess x) guess
                        )))

(define (better-sqrt x)
  (better-sqrt-iter x 1.0 0.5))

