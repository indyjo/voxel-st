(define (script-fu-export-palette img outfile-name)
        (let* (
                (colmap (gimp-image-get-colormap img))
                (num-bytes (car colmap))
                (colors (car (cdr colmap)))
              )
          ;(gimp-message (string-append
          ;               "Read # bytes: "
          ;               (number->string num-bytes)
          ;               " writing to "
          ;               outfile-name))
          (with-output-to-file outfile-name (lambda () (begin
            (display "void set_palette() {\n")
            (display "    unsigned short *pal = 0xff8240;\n")
            (do ((i 0 (+ i 3)))
                ((= i (vector-length colors)) #t)
              (let* ( (r (vector-ref colors i))
                      (g (vector-ref colors (+ i 1)))
                      (b (vector-ref colors (+ i 2)))
                    )
                (define (bits c) (number->string (floor (quotient c 32)) 16))
                (define (stebits c) (if (< 16 (remainder c 32)) "8" "0"))
                (display (string-append "    *pal++ = 0x"
                                        (bits r) (bits g) (bits b) " + 0x" (stebits r) (stebits g) (stebits b)
                                        ";\n"))
              )
            )
            (display "}\n")
          )))
        )
)

(script-fu-register
    "script-fu-export-palette"                        ;function name
    "Export Palette for Atari ST"                     ;menu label
    "Exports an image's color palette in ST \
      compatible format."              ;description
    "Jonas Eschenburg"                             ;author
    "copyright 2024, Jonas Eschenburg"        ;copyright notice
    "April 26, 2024"                          ;date created
    "INDEXED"                                      ;image type that the script works on
    SF-IMAGE "Image" 0
    SF-FILENAME "Output file" "palette.c"
  )
(script-fu-menu-register "script-fu-export-palette" "<Image>/File")

