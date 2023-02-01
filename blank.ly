#(set-global-staff-size 35)
\version "2.24.0"
\paper {
  indent = 0
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  top-margin = 1.5\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  bottom-margin = 1.5\in
}

\header { tagline = ##f }

\score {
  \new Staff
  {
    \omit Staff.Clef
    \omit Staff.BarLine
    \omit Staff.TimeSignature
    \omit Score.BarNumber
    \repeat unfold 9 { s1 | \break }
  }
  \layout {}
}