(define (script-fu-export-image img drawable outfile-name identifier)
        (let* (
                (width (car (gimp-image-width img)))
                (height (car (gimp-image-height img)))
              )
          ;(gimp-message (string-append
          ;               "Read # bytes: "
          ;               (number->string num-bytes)
          ;               " writing to "
          ;               outfile-name))
          (with-output-to-file outfile-name (lambda () (begin
            (display (string-append
              "int " identifier "_w = " (number->string width) ";\n"
              "int " identifier "_h = " (number->string height) ";\n"
              "unsigned char " identifier "[" (number->string height) "][" (number->string width) "] = {\n"))
            (do ((y 0 (+ y 1)))
                ((= y height) #t)
              (display (if (= y 0) "  {" ",\n  {"))
              (do ((x 0 (+ x 1)))
                  ((= x width) #t)
                (display (if (= x 0) "" ", "))
                (let* (
                        (resp (gimp-drawable-get-pixel drawable x y))
                        (pixels (car (cdr resp)))
                        (pixel (vector-ref pixels 0))
                      )
                  (display pixel)
                )
              )
              (display "}")
            )
            (display "\n};\n")
          )))
        )
)

(script-fu-register
    "script-fu-export-image"                        ;function name
    "Export Image for Atari ST"                     ;menu label
    "Exports an image's data in ST \
      compatible format."              ;description
    "Jonas Eschenburg"                             ;author
    "copyright 2024, Jonas Eschenburg"        ;copyright notice
    "April 27, 2024"                          ;date created
    "INDEXED* GRAY*"                                      ;image type that the script works on
    SF-IMAGE "Image" 0
    SF-DRAWABLE "Drawable" 0
    SF-FILENAME "Output file" "image.c"
    SF-STRING "Identifier" "colors"
  )
(script-fu-menu-register "script-fu-export-image" "<Image>/File")

