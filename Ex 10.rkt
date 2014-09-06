;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; sum-two-larger : Number Number Number -> Number
; GIVEN: Three numbers are passed as arguments
; RETURNS: a number which is the sum of two larger numbers
; Examples:
;(sum-two-larger 1 2 3) => 5
;(sum-two-larger 1 3 2) => 5
;(sum-two-larger 3 2 1) => 5
;(sum-two-larger 3 1 2) => 5
;(sum-two-larger 2 1 3) => 5
;(sum-two-larger 2 3 1) => 5
;(sum-two-larger 15 5 15) => 30
;(sum-two-larger -4 2 4) => 6
;(sum-two-larger 11 11 2) => 22
;(sum-two-larger 11 11 11) => 22
;(sum-two-larger -2 -2 -2) => -4

(define (sum-two-larger x y z)
    (cond
      [(and (>(+ x y) (+ y z))  (>(+ x y) (+ x z))) (+ x y)]
      [(and (>(+ x z) (+ y x))  (>(+ x z) (+ y z))) (+ x z)]
      [else (+ y z)]
      ))

(sum-two-larger 1 2 3)
(sum-two-larger 1 3 2)
(sum-two-larger 3 2 1)
(sum-two-larger 3 1 2)
(sum-two-larger 2 1 3)
(sum-two-larger 2 3 1)
(sum-two-larger 15 5 15)
(sum-two-larger -4 2 4)
(sum-two-larger 11 11 2)
(sum-two-larger 11 11 11)
(sum-two-larger -2 -2 -2)


