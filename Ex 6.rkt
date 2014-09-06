;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 6|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; quadratic-root : Number Number Number -> Number
; GIVEN: three numbers passed as arguments that are taken from the quadratic equation
; RETURNS: a number that is one of the roots of the quadratic equation
; Examples:
; (quadratic-root 1 -3 2) => 2
; (quadratic-root 2 5 3) => -1

(define (quadratic-root a b c)
  (/ (+ (* b -1) (sqrt (- (expt b 2) (* 4 a c)))) (* 2 a)))

(quadratic-root 1 -3 2)
(quadratic-root 2 5 3)