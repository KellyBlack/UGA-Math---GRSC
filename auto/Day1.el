(TeX-add-style-hook
 "Day1"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "graphicx"
    "amsmath"))
 :latex)

