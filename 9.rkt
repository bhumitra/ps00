;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
;(remainder x y) → integer
;  x : integer
;  y : integer
;Determines the remainder of dividing the first by the second integer (exact or inexact).
(remainder 9 2)
;1
(remainder 9 -4)
;1 (9- (-4*-2))

;(modulo x y) → integer
;  x : integer
;  y : integer
;Finds the remainder of the division of the first number by the second:
(modulo 9 2)
;1
(modulo 9 -4) 
;-3  (-4*3+9 =-3)


; even : Number -> Boolean
; GIVEN: a number is passed as an argument
; RETURNS: true if number is divisible by 2, otherwise false
; Examples:
; (even 4) => true
; (even 9) => false
; (even 15) => false

(define (even x)
  (equal? (remainder x 2) 0))

(even 4)
(even -9)
(even 15)