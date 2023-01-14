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

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #6
    \override Fingering.font-name = #'"Emmentaler"
    \override Fingering.font-size = #-3
  }
}

rh = \relative c'' {
  \clef treble
  \time 2/4
  \tempo Allegretto 4 = 100

  c4-1 e8-3 g | g (f) f4 | e g8 e | e (d) d4 | c e8 g |
  g (f) f f | f [(e g e)] | d4 r | e r | f r |
  f8 [(e g e)] | e (d) d4 | c e8 g | g-4 [(f a f)] | f [(e) e-3 (d)] |
  dis4 (e) | c-1 e8 g | g-4 [(f a f)] | e4 e16-3 (d c d) | c2 \fine
}

lh = \relative c' {
  \clef bass
  \time 2/4
  \override Fingering.direction = #DOWN

  r4 c-1 | b g | c g | b g | r c |
  b g | c g | b8 [g b g] | c [g c g] | d'-1 [g,-4 d' g,] |
  c-1 [g c g] | b [g b g] | c4 bes | a f | g g |
  c2 | r4 bes-2 | a-1  f-3  g-1  g, | c2 \fine
}

dyn = {
    s2\p \repeat unfold 4 {s2} 
    s4\> s4\! | s4\> s4\! | s2 | s2 | s2
    s4\> s4\! | s4\> s4\! | s2\p | s8 s4.\<  | s16 s16\! s4.
    s4\> s4\! | s2\f | s2 | s2 | s2
}

\book{
 \header {
  title = "Arietta"
  subtitle = "Op. 42 No. 5"
  composer=\markup { "Muzio Clementi" \small "(1752-1832)" }
  % Do not display the default LilyPond footer for this book
  tagline = ##f
}
\score {
  \new PianoStaff \with { }
  <<
    \new Staff 
      \repeat unfold 3 {s2 \noBreak s2 \noBreak s2 \noBreak s2 \noBreak s2 \break }
      \rh
    \new Dynamics \dyn
    \new Staff \lh
  >>
  \midi { }
  \layout { }
}
}