;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(rectangle 32 64 "solid" "blue")
(rectangle 64 128 "solid" "blue")

; nth element of the sequence 2x4;4x8;8x16;16x32 ...
; is given by the formula = 2^n x 2^(n+1)
; where n is a Positive Integer
; where width = 2^n and
;       height = 2^(n+1)

; rec-sequence : PosInteger -> Rectangle
; takes an argument to return the nth element in this sequence
; GIVEN: it takes an argument n which is a positive integer that tells function 
;        to return the nth element in the sequence - 2x4,4x8,8x16,16x32 etc...
; RETURN: a solid blue Rectangle which whose dimensions are represented
;         by nth element of the sequence. e.g 16x32 means a rectangle with
;         width 16 pixels and height 32 pixels
; EXAMPLES:
; (rec-sequence 4) => a solid blue rectangle with width 16 and height 32
; (rec-sequence 7) => a solid blue rectangle with width 128 and height 256

(define (rec-sequence n)
  (rectangle (expt 2 n)
             (expt 2 
                   (+ n 1))
             "solid"
             "blue"))

(rec-sequence 4)
(rec-sequence 7)

(check-expect (rec-sequence 4) (rectangle 16 32 "solid" "blue"))
(check-expect (rec-sequence 7) (rectangle 128 256 "solid" "blue"))
