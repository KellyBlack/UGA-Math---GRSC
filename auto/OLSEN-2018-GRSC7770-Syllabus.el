(TeX-add-style-hook
 "OLSEN-2018-GRSC7770-Syllabus"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt" "a4paper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "inner=1.5cm" "outer=1.5cm" "top=2.5cm" "bottom=2.5cm") ("color" "usenames" "dvipsnames") ("hyperref" "colorlinks" "pagebackref" "pdfusetitle" "urlcolor=darkblue" "citecolor=darkblue" "linkcolor=darkred" "bookmarksnumbered" "plainpages=false")))
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
    "amsthm"))
 :latex)

