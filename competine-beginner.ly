\version "2.24.1"
\paper {
  indent = 0
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  top-margin = 0.7\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  bottom-margin = 0.7\in
}

\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing.padding = #6
  }
}

prolegomena = {
  \key g \major
  \time 4/4
}

rh = \relative c'' {
  \clef treble
  \tempo 4 = 140
  \prolegomena

  R1 | R1 | R1 | R1 | R1 | R1 | R1 | R1 |
  \repeat volta 2 {
    r4 g8-1 fis-2 g4 b8-3 c | b1 | r4 fis8-2 g fis4 g8 a | g1 |
    r4 fis8 e fis4 b8 c | b1 | r4 fis8 e fis2~ | fis1 |
  }
  e'2. b4~ | b1 | d2. b4~ | b1 | fis'2. b,4~ | b1 | fis'2. a,4~ | a1 |
  g'2. e4~ | e1 | g2. d4~ | d1 | fis2. d4~ | d1 | fis2. d4~ | d1 | e1 \fine
}

lh = \relative c {
  \clef bass
  \prolegomena

  e4-5 b' g b | e, b' g-2 b | d, b' g b | d, b' g b | d, b' fis b | d, b' fis b | d, a' fis a | d, a' fis a |
  \repeat volta 2 {
    <e-5 g-3>2 b' | g b | <d, g> b' | g b |
    <fis d>2 b | fis b | <fis d>2 a | fis a |
  }
  <e g>2 b' | g b | <d, g> b' | g b | <fis d> b | fis b | <fis d> a | fis a |
  <e g>2 b' | g b | <d, g> b' | g b | <fis d> b | fis b | <fis d> a | fis a | <e g>1 \fine
}

\book{
  \header {
    title = "Competine d'un Autre Été"
    subtitle = "Beginner"
    tagline = ##f
  }
  \score {
    \new PianoStaff \with { }
    <<
      \new Staff {\rh}
      \new Staff {\lh}
    >>
    \midi { }
    \layout { }
  }
}