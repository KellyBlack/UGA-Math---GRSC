(TeX-add-style-hook
 "GRSC-notes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "left=1in" "right=1in" "top=1in" "bottom=1in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "Lectures/Week-0/Week-0"
    "Lectures/Week-1/Week-1"
    "Lectures/Week-2/Week-2"
    "Lectures/Week-3/Week-3"
    "Lectures/Week-4/Week-4"
    "Lectures/Week-5/Week-5"
    "Lectures/Week-6/Week-6"
    "Lectures/Week-7/Week-7"
    "Lectures/Week-8/Week-8"
    "Lectures/Week-9/Week-9"
    "Lectures/Week-10/Week-10"
    "Lectures/Week-11/Week-11"
    "Lectures/Week-12/Week-12"
    "Lectures/Week-13/Week-13"
    "Lectures/Week-14/Week-14"
    "Lectures/Week-15/Week-15"
    "notes"
    "notes10"
    "amsthm"
    "amssymb"
    "geometry"
    "wrapfig"
    "graphicx")
   (LaTeX-add-amsthm-newtheorems
    "definition"
    "exercise"
    "example"
    "remark"
    "corollary"
    "theorem"
    "lemma"))
 :latex)

