\version "2.24.0"

unstressedMarkup = \markup {
  \path #0.125
  #'((moveto 0 0.75)
     (curveto 0.05 0.0833 0.95 0.0833 1 0.75))
}

#(append! default-script-alist
  `(
    (unstressed
      . (
          (stencil . ,ly:text-interface::print)
          (text . ,unstressedMarkup)
          (avoid-slur . around)
          (padding . 0.2)
          (direction . ,UP)))))

unstressed = #(make-articulation 'unstressed)
