(TeX-add-style-hook
 "GRSC-notes"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "left=1in" "right=1in" "top=1in" "bottom=1in")))
   (TeX-run-style-hooks
    "latex2e"
    "Lectures/Lecture-1/lecture1"
    "Lectures/Lecture-2/lecture2"
    "Lectures/Lecture-3/lecture3"
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

