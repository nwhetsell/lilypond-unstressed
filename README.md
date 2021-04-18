# lilypond-unstressed

[![Actions](https://github.com/nwhetsell/lilypond-unstressed/workflows/CI/badge.svg)](https://github.com/nwhetsell/lilypond-unstressed/actions?workflow=CI)

You can use the file [unstressed.ily](unstressed.ily) in this repository to add unstressed
articulations to notes in LilyPond v2.14.0 or later. For example, running:

```sh
lilypond --define-default=backend=svg --loglevel=ERROR --output=unstressed - <<EOS
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
