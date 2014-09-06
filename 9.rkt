;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
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


; even-num? : Number -> Boolean
; GIVEN: a number is passed as an argument
; RETURNS: true if number is divisible by 2, otherwise false
; Examples:
; (even-num? 4) => true
; (even-num? 9) => false
; (even-num? 15) => false

(define (even-num? num)
  (equal? (remainder num 2) 0))

(check-expect (even-num? 4) true)
(check-expect (even-num? -9) false)
(check-expect (even-num? 15) false)