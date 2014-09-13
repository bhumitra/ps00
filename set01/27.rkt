;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

; wordlist-to-image : ListOfString -> Image
; GIVEN: A list of strings is given as argumnt to function
; RETURNS: an image of the combined text of given list, separated by spaces 
; Examples:
; (wordlist-to-image empty) -> (text "" 14 "blue")
; (wordlist-to-image (list "how" "you" "doing")) 
;  => (text "how you doing" 14 "blue")

(define (wordlist-to-image los)
  (cond [(empty? los) (text "" 14 "blue")] 
        ;when reached the last element, donot append " " to it. end interation.
        [(empty? (rest los)) (text (first los) 14 "blue")]
        [else (beside (text (string-append (first los) " ") 14 "blue")
                      (wordlist-to-image (rest los)))]))


;tests
(check-expect (wordlist-to-image empty)
              (text "" 14 "blue"))
(check-expect (wordlist-to-image (list "how" "you" "doing")) 
              (text "how you doing" 14 "blue"))