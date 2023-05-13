\version "2.24.1"
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

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #6
  }
}

rh = \relative c'' {
  \clef treble
  \time 2/4
  \tempo Allegretto 4 = 88

  a16-1( b c d e8 c | d [b e\staccato e\staccato] | a, [b c d]) | e2~ | e4 dis |
  e2~ | e8[ e d e] | c[ d c d] | b[ c b c] | a[ c b a] | gis e a4~ |
  a gis | a2~ | a4 gis | a8 r r4  | a16-1\f( b c d e8 c | 
  d [b e\staccato e\staccato] | a, [b c d]) | c4 b8 a | gis[ a fis gis] | a2~ | a2 \fine
}

lh = \relative c' {
  \clef treble
  \time 2/4
  \override Fingering.direction = #DOWN

  R2 | R2 | R2 | e16-5\f _( fis g a b8 g | a[ fis b\staccato b\staccato] |
  e, [fis g a]) | b8 r gis4 | a8 r fis4 | g8 r e4 | f d | e8[ d c a] |
  d[ b e\staccato e\staccato] | a,16\f( b c d e8 c | d[ b e\staccato e\staccato] | a,[ b c d]) | e2~
  e2~ | e4 a,8( b | c d e4) | e d | c8[ d b c] | a2  \fine
}

dyn = {
    s2\f \repeat unfold 5 {s2} s8 s8\p s4 \repeat unfold 13 {s2} s2\< s4\!\ff
}

\book{
 \header {
  title = "Fugue"
  subtitle = "No. 4 from Five Miniature Preludes and Fugues"
  composer=\markup { "Alec Rowley" \small "(1892-1958)" }
  tagline = ##f
}
\score {
  \new PianoStaff \with { }
  <<
    \new Staff 
      { \repeat unfold 4 {s2 \noBreak} s2 \break
      \repeat unfold 5 {s2 \noBreak} s2 \break 
      \repeat unfold 4 {s2 \noBreak} s2 \break
      \repeat unfold 5 {s2 \noBreak} s2 \break }
      \rh
    \new Dynamics \dyn
    \new Staff \lh
  >>
  \midi { }
  \layout { }
}
}