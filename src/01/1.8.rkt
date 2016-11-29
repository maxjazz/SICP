(define (average-triple  y x)
  (/
   ( + (/ x (* y y))
       (* 2 y))
   3))



(define (good-enough? guess x)

  (< (abs (- (average-triple guess x) guess)) 0.000000000001))


(define (qbrt-iter guess x)

  (if (good-enough? guess x)

      guess

      (qbrt-iter (average-triple guess x)

                    x)))

(define (qbrt x)

  (qbrt-iter 1.0 x))

(qbrt 27)