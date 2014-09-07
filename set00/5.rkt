;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; sq : Number -> Number
; GIVEN: A number is passed as an argument
; RETURNS: the square of the number 
; Examples:
; (sq 5)  => 25
; (sq 11) => 121
; (sq -4) => 16

(define (sq x)
    (* x x))

(sq 5)
(sq 11)
(sq -4)

(check-expect (sq 5) 25)
(check-expect (sq 11) 121)
(check-expect (sq -4) 16)

