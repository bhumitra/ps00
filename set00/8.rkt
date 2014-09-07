;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(* pi (expt 1 2))
(* pi (expt 5 2))
(* pi (expt 7 2))

; area-circle : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its area, using the formula pi * r^2
; Examples:
; (area-circle 1)  =>  #i3.141592653589793 
; (area-circle 5)  =>  #i78.53981633974483
; (area-circle 7)  =>  #i153.93804002589985

(define (area-circle radius)
  (* pi (expt radius 2)))


(area-circle 1)  
(area-circle 5) 
(area-circle 7)


(check-within (area-circle 1)  3.14 3.142)
(check-within (area-circle 5)  78.53 78.54)
(check-within (area-circle 7)  152.93 153.939)
