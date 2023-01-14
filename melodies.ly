\version "2.24.0"
\paper {
  indent = 0
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  top-margin = 1\in
  bottom-margin = 1\in
  left-margin = 0.7\in
  right-margin = 0.7\in
}
\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #5
    \override Fingering.font-name = #'"Emmentaler"
    \override Fingering.font-size = #-3
  }
}

%%%%%%%%% Minuet
min_rh = \relative c'' {
  \clef treble
  \time 3/4

  R2. | c8-1 d e4 g | f-> d2-> | c2.-> \fine
}

min_dyn = { s2.\mf | s2. | s2.\< | s2.\! \f }

min_lh = \relative c {
  \clef bass
  \time 3/4
  \override Fingering.direction = #DOWN

  c8-5 d e4 g | e2 c4 | d-> g8-> f g4 | e-> g-. c,-. \fine
}

%%%%%%%%% March
march_rh = \relative c'' {
  \clef treble
  \key f \major
  \numericTimeSignature
  \time 4/4

  c4.-5 a8 f4 a | g a bes2 | r4 g c4. bes8 | a4 (f) f2 \fine
}

march_dyn = { s2\f }

march_lh = \relative c {
  \clef bass
  \key f \major
  \time 4/4
  \override Fingering.direction = #DOWN

  f2-5 a2 | bes4 a g4. bes8 | c1 | f,2 f2 \fine
}

%%%%%%%%% Andante

and_rh = \relative c'' {
  \clef treble
  \time 2/4

  R2 | a4-1 b8 c | b c d4 | e c | d b | c2 \fine
}

and_dyn = { s2\p | s2\< | s2 | s2\mf\! | s16 s8.\> s4  | s2\p\! }

and_lh = \relative c {
  \clef bass
  \time 2/4
  \override Fingering.direction = #DOWN

  c4-5 d8 e | f2 | g4 f | e2 | f8 e d4 | c2 \fine
}


%%%%%%%%% Moderato espressivo
mod_exp_rh = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4

  d2-3 d4 | d (cis) r4 | d f8 e d cis | d2. \fine
}

mod_exp_dyn = { s2\mp\< s4\! | s2\> s4\! | s2.\<  | s4\!\> s4\! }

mod_exp_lh = \relative c {
  \clef bass
  \key f \major
  \time 3/4
  \override Fingering.direction = #DOWN

  d4.-5 e8 f4 | e2 g4 | f g a | f (d2) \fine
}

%%%%%%%%% Andante2
and_ii_rh = \relative c'' {
  \clef treble
  \key g \major
  \numericTimeSignature
  \time 4/4

  r4 g-3 g (fis) | g (a b2) | e, fis | g1-> \fine
}

and_ii_dyn = { s1\mf  | s1 | s1\< | s1\!\f}

and_ii_lh = \relative c' {
  \clef bass
  \key g \major
  \time 4/4
  \override Fingering.direction = #DOWN

  g2-5 a2 | b1 | c2 b4 a | g-> g-> g2-> \fine
}

%%%%%%%%% Score

\book {
\header {tagline = ##f}
\score {
  \header {piece = "Minuet"}
  \new PianoStaff \with { instrumentName = "1"}
  <<
    \new Staff \min_rh
    \new Dynamics \min_dyn
    \new Staff \min_lh
  >>
  \midi { }
  \layout { }
}
\score {
  \header {piece = "March"}
  \new PianoStaff \with { instrumentName = "2"}
  <<
    \new Staff \march_rh
    \new Dynamics \march_dyn
    \new Staff \march_lh
  >>
  \midi { }
  \layout { }
}
\score {
  \header {piece = "Andante"}
  \new PianoStaff \with { instrumentName = "3"}
  <<
    \new Staff \and_rh
    \new Dynamics \and_dyn
    \new Staff \and_lh
  >>
  \midi { }
  \layout { }
}

\score {
  \header {piece = "Moderato espressivo"}
  \new PianoStaff \with { instrumentName = "4"}
  <<
    \new Staff \mod_exp_rh
    \new Dynamics \mod_exp_dyn
    \new Staff \mod_exp_lh
  >>
  \midi { }
  \layout { }
}

\score {
  \header {piece = "Andante"}
  \new PianoStaff \with { instrumentName = "5"}
  <<
    \new Staff \and_ii_rh
    \new Dynamics \and_ii_dyn
    \new Staff \and_ii_lh
  >>
  \midi { }
  \layout { }
}
}