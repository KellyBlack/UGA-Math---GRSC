(TeX-add-style-hook
 "TermCal"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "termcal")
   (TeX-add-symbols
    '("Holiday" 2)
    "MWClass"
    "TRClass"))
 :latex)

