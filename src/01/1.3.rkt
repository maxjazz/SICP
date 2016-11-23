(define (square a)
  (* a a))

(define (sum-of-squares a b )
  (+ (square a)
     (square b)))

(define (max a b)
  (if (> a b) a
      b))

(define (min a b)
  (if (< a b) b
      a))


(define (sum-of-biggest-squares a b c)
  (sum-of-squares
   (max a b)
   (max
    (min a b)
    c) ))
