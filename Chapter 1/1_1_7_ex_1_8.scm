#lang sicp

(define (square x)
  (* x x))

(define (newton y x)
  (/ (+ (/  x (square y)   ) (* 2 y)) 3))

(define (good-enough? guess x)
  (= (newton guess x) guess))

(define (cube-iter guess x)
  (if (good-enough? guess x) 
          guess
          (cube-iter (newton guess x)
                     x)))

(define (cube x)
  (cube-iter 1.0 x))


