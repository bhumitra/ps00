;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; boolean-list? : ListOfBoolean -> Boolean
; GIVEN: a list of booleans
; RETURNS: Returns true if all booleans in the list are true
; Example:
; (boolean-list? empty) -> true
; (boolean-list? (list false)) -> false
; (boolean-list? (list true)) -> true
; (boolean-list? (list true true)) -> true
; (boolean-list? (list true false)) -> false
; (boolean-list? (list true true true)) -> true

(define (boolean-list? bl)
  (cond [(empty? bl) true]
        [else (and (first bl) (boolean-list? (rest bl)))]))

(check-expect (boolean-list? empty) true)
(check-expect (boolean-list? (list false)) false)
(check-expect (boolean-list? (list true)) true)
(check-expect (boolean-list? (list true true)) true)
(check-expect (boolean-list? (list true false)) false)
(check-expect (boolean-list? (list true true true)) true)

