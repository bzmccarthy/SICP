#lang sicp

(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x) (square y)))
(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 5)

(square 9)

(square (+ 2 5))

(square (square 3))

(sum-of-squares 3 9)