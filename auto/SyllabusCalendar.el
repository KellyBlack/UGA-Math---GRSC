(TeX-add-style-hook
 "SyllabusCalendar"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "multirow"
    "fourier"
    "array"
    "makecell"))
 :latex)

