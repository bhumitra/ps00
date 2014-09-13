;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

; numbers-to-circles : ListOfNumber -> ListOfImage
; GIVEN: a list of Numbers is passed as argument to function 
; RETURNS: a list of Images, where each image is a circle that has a radius 
;          based on a number of the input list.
; Examples:
;  (numbers-to-circles empty) => empty
;  (numbers-to-circles (list 8)) => (list (circle 8 "solid" "red"))
;  (numbers-to-circles (list 2 5 4)) => (list (circle 2 "solid" "red")
;                                             (circle 5 "solid" "red")
;                                             (circle 4 "solid" "red")

(define (numbers-to-circles lon)
  (cond 
    [(empty? lon) empty]
    [else (cons (circle (first lon) "solid" "red")
                (numbers-to-circles (rest lon)))]))

;tests
(check-expect (numbers-to-circles empty) empty)
(check-expect (numbers-to-circles (list 8)) 
              (list (circle 8 "solid" "red")))
(check-expect (numbers-to-circles (list 2 5 4))
              (list (circle 2 "solid" "red")
                    (circle 5 "solid" "red")
                    (circle 4 "solid" "red")))