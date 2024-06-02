(define (mix-colors colors)
  (define (mix a b) (quotient (+ a b) 2))
  (let* (
          (num-bytes (vector-length colors))
          (num-colors (quotient num-bytes 3))
          (num-result-bytes (* 3 num-colors num-colors))
          (result (make-vector num-result-bytes 0))
          (result-iter 0)
        )
    (do ((i 0 (+ i 3))) ((= i num-bytes))
      (do ((j 0 (+ j 1))) ((= j num-bytes))
        (vector-set! result result-iter (mix
          (vector-ref colors j)
          (vector-ref colors (modulo (+ j i) num-bytes))))
        (set! result-iter (+ result-iter 1))))
    result)
)

(define (script-fu-mix-palette img)
        (let* (
                (colmap (gimp-image-get-colormap img))
                (num-bytes (car colmap))
                (colors (cadr colmap))
                (mixed-colors (mix-colors colors))
              )
          (if (= num-bytes (vector-length colors))
            (gimp-image-set-colormap img (vector-length mixed-colors) mixed-colors)
            (gimp-message (string-append
              "The colormap's size is strange: " (number->string num-bytes)
              "\nThe actual size is: " (number->string (vector-length colors))))
          )
        )
)

(script-fu-register
    "script-fu-mix-palette"                        ;function name
    "Mix a palette with itself"                     ;menu label
    "Takes an image with up to 16 colors \
      and mixes the palette with itself."              ;description
    "Jonas Eschenburg"                             ;author
    "copyright 2024, Jonas Eschenburg"        ;copyright notice
    "May 31, 2024"                          ;date created
    "INDEXED"                                      ;image type that the script works on
    SF-IMAGE "Image" 0
  )
(script-fu-menu-register "script-fu-mix-palette" "<Image>/File")

