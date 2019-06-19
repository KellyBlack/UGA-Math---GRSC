(TeX-add-style-hook
 "notes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "titlepage")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "labelfont=bf")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "ifthen"
    "article"
    "art10"
    "titleps"
    "hyperref"
    "tocloft"
    "amsmath"
    "caption"
    "microtype")
   (TeX-add-symbols
    '("lecture" 2)
    '("online" 1)
    '("contact" 1)
    '("place" 1)
    '("speaker" 1)
    "listlecturename"
    "footnotesize"
    "footnoterule"
    "thanks"
    "maketitle"
    "title"
    "author"
    "date"
    "speaker"
    "place"
    "and"
    "thelecture"
    "thelecturedate")
   (LaTeX-add-pagestyles))
 :latex)

