#lang sicp

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))


(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter2 guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter2 (improve guess x)
                     x)))

(define (sqrt2 x)
  (sqrt-iter2 1.0 x))

(define (good-enough?2 guess x)
  (< (abs (- (improve guess x) guess)) 0.00001))

(define (sqrt-iter3 guess x)
  (if (good-enough?2 guess x) 
          guess
          (sqrt-iter3 (improve guess x)
                     x)))

(define (sqrt3 x)
  (sqrt-iter3 1.0 x))


