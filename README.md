# lilypond-unstressed

You can use the file [unstressed.ily](unstressed.ily) in this repository to add unstressed articulations to notes in LilyPond v2.24.0 or later. For example, running:

```sh
lilypond --output=unstressed --svg - <<EOS
\version "2.24.0"
\include "unstressed.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
  top-margin = 0
  left-margin = 0
  right-margin = 0
  oddFooterMarkup= ##f
}
\pointAndClickOff
{ g'2\unstressed 2 1 }
EOS
```

will output:

<img src="unstressed.svg">
