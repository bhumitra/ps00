;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex 3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celsius.

(define (f->c degreeFahrenheit)
      (* (- degreeFahrenheit 32) (/ 5 9)))


(f->c 32)
;(f->c 32)  => 0
(f->c 100)
;(f->c 100)  => 37.7
(f->c 70)
;(f->c 70)  => 21.1
