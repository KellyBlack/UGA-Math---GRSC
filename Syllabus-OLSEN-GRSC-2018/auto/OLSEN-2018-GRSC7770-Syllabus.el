(TeX-add-style-hook
 "OLSEN-2018-GRSC7770-Syllabus"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "inner=1.5cm" "outer=1.5cm" "top=2.5cm" "bottom=2.5cm") ("color" "usenames" "dvipsnames") ("hyperref" "colorlinks" "pagebackref" "pdfusetitle" "urlcolor=darkblue" "citecolor=darkblue" "linkcolor=darkred" "bookmarksnumbered" "plainpages=false")))
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim*")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb*")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "geometry"
    "graphicx"
    "multicol"
    "fancyhdr"
    "lastpage"
    "bbding"
    "pmboxdraw"
    "color"
    "hyperref"
    "listings"
    "caption"
    "verbatim"
    "fancyvrb"
    "acronym"
    "amsthm")
   (LaTeX-add-caption-DeclareCaptions
    '("\\DeclareCaptionFont{white}" "Font" "white")
    '("\\DeclareCaptionFormat{listing}" "Format" "listing"))
   (LaTeX-add-color-definecolors
    "darkblue"
    "darkred"
    "darkgreen"
    "red"
    "OliveGreen"
    "CadetBlue"
    "lightlightgray"))
 :latex)

