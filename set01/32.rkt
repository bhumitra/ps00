;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")))))
(define-struct point (x y))




;; sum-distance-fn : Point -> Number
;; GIVEN : a Point (x,y)
;; RETURNS : distance of the point from (0,0) using the formula (x+y).
;; Examples :
;; (sum-distance-fn (make-point 2 0)) = 2
;; (sum-distance-fn (make-point 3 0)) = 3
;; (sum-distance-fn (make-point 3 4)) = 7

(define (sum-distance-fn d)
   (+ (point-x d)
      (point-y d)))


;; sum-of-distance-from-origin : ListOfPoint -> PosReal
;; GIVEN: a function that takes a list of Points 
;; RETURNS: the sum of all distances of those Points from (0,0) using
;;          the Manhattan distance measure (distance = x + y).

;You should write a helper function to calculate the distance. 
;For simplicity, you can 

;; Examples:
;;  (sum-of-distance-from-origin empty) => 0
;;  (sum-of-distance-from-origin (list (make-point 2 0))) => 2
;;  (sum-of-distance-from-origin (list (make-point 3 0)
;;                                     (make-point 0 3)
;;                                     (make-point 3 4))) => 13




(define (sum-of-distance-from-origin lop)
  (cond [(empty? lop) 0]
        [else (+
               (sum-distance-fn (first lop))
               (sum-of-distance-from-origin (rest lop)))]))




;tests
(check-expect (sum-of-distance-from-origin empty) 0)

(check-expect (sum-of-distance-from-origin (list (make-point 2 0))) 2)

(check-expect (sum-of-distance-from-origin (list (make-point 3 0)
                                             (make-point 0 3)
                                             (make-point 3 4))) 13)