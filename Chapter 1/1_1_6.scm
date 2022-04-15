#lang sicp

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abs3 x)
  (if (< x 0)
      (- x)
      x))

(abs -4.2)
(abs2 0)
(abs3 25)


(define x 3)

(or (> x 5) (< x 10))

(define (>= x y )
  (or (> x y ) (= x y)))

(>= 17 3)