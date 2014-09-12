;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 21a) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define leg (rectangle 20 80 "solid" "blue"))
(define arm (rectangle 10 80 "solid" "brown") )
(define body (ellipse 70 100 "solid" "red") )
(define eye (ellipse 10 10 "solid" "black"))
(define face (ellipse 40 40 "solid" "brown"))
(define separator (line 5 0 "white"))

(define human (above (underlay/xy
                      (underlay/xy 
                       face 
                       5 
                       15 
                       eye)
                      25
                      15
                      eye)
                     (beside arm 
                             body
                             arm)
                     (beside leg
                             separator
                             leg)))


(define-struct person (first-name last-name age height weight))
; A Person is a
; (make-person String String NonNegInt PosReal PosReal)
; Interpretation:
;  first-name is the first name of a person
;  last-name is the last name of a person
;  age is the age of a person
;  height is the height of a person in centimeters
;  weight is the weight of a person in kg



; person-image : Person -> Image
; GIVEN: takes an instance of person
; RETURNS: returns an image of a person proportionate to the 
;          height of the person. i.e. if one person is twice the size of
;          another person, the image for the first person should be twice as
;          high and wide as the image of the second person. This is calculated
;          by:
;          A person with height 180 cm is assumed as default height.
;          Any person with height greater than or less than this height will 
;          be scaled accordingly.
;          e.g. person with height 150 cm should be scaled by a factor of 
;          150/180. 
; Examples:
;(person-image (make-person "jack" "sparrow" 22 90 80)) 
;(person-image (make-person "will" "turner" 22 180 80))
;(person-image (make-person "david" "jones" 22 270 80))


(define (person-image prsn)
  (above (scale (/ (person-height prsn) 180) human)
         (text (string-append (person-first-name prsn)
                              " "
                              (person-last-name prsn))
               14
               "blue"
               )))


(person-image (make-person "jack" "sparrow" 22 90 80))
(person-image (make-person "will" "turner" 22 180 80))


;Tests
(check-expect (person-image (make-person "jack" "sparrow" 22 90 80))
              (above (scale 90/180 human)
                     (text "jack sparrow" 14 "blue")))


(check-expect (person-image (make-person "will" "turner" 22 180 80))
              (above (scale 180/180 human)
                     (text "will turner" 14 "blue")))

