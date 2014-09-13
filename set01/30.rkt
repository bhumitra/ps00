;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
; neg-list : ListOfBoolean
; GIVEN: a list of booleans 
; RETURNS: a list with each boolean reversed 
; (e.g. (neg-list (list true false true)) => 
;       (cons false (cons true (cons false empty)))
; Example:
;  (neg-list empty) -> empty
;  (neg-list (list true false true) => (list false true false)
;  (neg-list (list false true) => (list true false)

(define (neg-list lob)
  (cond [(empty? lob) empty]
        [else (cons (not (first lob))
                    (neg-list (rest lob)))]))

;tests
(check-expect (neg-list empty) empty)
(check-expect (neg-list (list true false true)) (list false true false))
(check-expect (neg-list (list false true)) (list true false))