;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |20|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define leg (rectangle 20 80 "solid" "blue"))
(define arm (rectangle 10 80 "solid" "brown") )
(define body (ellipse 70 100 "solid" "red") )
(define eye (ellipse 10 10 "solid" "black"))
(define face (ellipse 40 40 "solid" "brown"))
(define separator (line 5 0 "white"))

(above (underlay/xy
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
               leg))
