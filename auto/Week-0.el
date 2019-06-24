(TeX-add-style-hook
 "Week-0"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (LaTeX-add-labels
    "sec:introduction"
    "sec:structure-course"
    "itm:DP"
    "sec:nitty-gritty-day"
    "itm:first"
    "itm:second"
    "sec:daily-discussions"
    "sec:guest-speakers"
    "sec:preparing-your-first"))
 :latex)

