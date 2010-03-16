\version "2.12.1"

\header {
	title = "Aǧır Roman"
	copyright = "3/15/10" % put date center bottom
	}

%music pieces
%part: melody
melody = {
\relative c'' { \time 9/8 \set beatLength = #(ly:make-moment 1 16) \set beatGrouping = #'(4 4 6 4) \tempo 8=176
	\mark \default %A
	\repeat volta 2 {
	a,4 c d16 ees ees d d c d d d d | }
	\alternative {
		{ a8 c d fis ees16 fis ees d d c d d d d | }
		{ a8 c d fis ees16 fis ees d d c d d d8  | }
	}
	
	\mark \default %B
	\repeat volta 2 {
	\times 2/3 { c'16 bes a } a bes a a a g \times 2/3 { a g g } f g f8 g16 g g g |
	g8 b,16 c d e f g \times 4/6 { a ais b c bes a } a8 a16 a a a |
	d,16 f a d c bes a g \times 2/3 { a g g } f g f8 g16 g g g |
	f8 g16 g g f g e? f f ees d d c d d d8 | }

	\mark \default %C
	\repeat volta 2 {
	d16 f a d c16 c c c \times 2/3 { d c bes } bes c bes8 bes16 bes bes bes |
	d,16 f a c a f a c \times 2/3 { c bes a } a bes a8 a16 a a a |
	g16 aes g f g aes b? c b ees d c c b aes g f e? |
	f8 g16 g g f g e? f f ees d d c d d d8  | }

	\mark \default %D
	\repeat volta 2 {
	e8 f g16 g g g g aes aes g g f g g g g | g8 ees'16 d d c b aes b b aes g g f g g g g | 
	g8 g'16 f f ees ees d \times 2/3 { f ees d } ees f d ees c d b aes |
	aes8 b c16 d c b aes aes aes g g f g g g g }

	\mark \default %E
	\repeat volta 2 {
	g8\mp f16 g f8 e?16 f \times 2/3 { f ees d } d ees d8 d16 d d c |
	d8 e f g g16 aes aes g g f g g g g | }

	\repeat volta 6 {
	d8^\markup { \italic "4x" } e_\markup { \italic "speed up lots" } f g g16 aes aes g g f g g g g | }
	
	\break \repeat volta 2 { r4_\markup { \italic "drums speed up and change feel" } r r8. r r4 | } 
		   \repeat volta 2 { r2 r4 r4. }

%the fast part
	\set beatLength = #(ly:make-moment 1 8) \set beatGrouping = #'(2 2 2 3) \tempo 8=264
	
	\mark \default %F
  \repeat volta 2 {
	\repeat volta 2 {
	g,8 a b c d ees ees d c | g' g16 fis ees8 fis fis16 ees d ees d8 d16 d d d |
	g,8[ r16 a] b8 c d ees ees d c | g' g16 fis ees8 fis fis16 ees d ees d8 d16 d d8 | }

	\mark \default %G
	fis16 g g g g8 g16 g g8 g16 g bes8 a16 a g8 | fis16 g g g g g g g g8 g16 g bes8 a g |
	bes a g bes a g bes a g | fis g g fis fis16 fis fis fis fis8 fis16 fis fis8 |
	
	f?16 fis fis fis fis8 fis16 fis fis8 fis16 fis g8 fis ees |
	fis16 fis fis fis fis fis fis fis fis8 fis16 fis g8 fis ees |
	a g fis a g fis a g fis | ees fis fis ees ees4~ ees8 ees16 ees ees8 |

	c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes c d ees d c |
	d,16 ees ees ees ees8 ees ees16 ees ees d fis8 g a |
	fis16 ees fis g fis ees d ees d d d c d8 d16 d d8 | 
	
 }
	\alternative {
		{ 
		  \repeat volta 4 { c16^\markup { \italic "4x" } d d d d8 d ees fis fis ees d^\markup "To F"| }
		}

		{ \break	
		  \repeat volta 8 { 
			<ees bes'>8^\markup { \italic "solo (open)" } <d a'> <d a'> <d a'> 
			<ees bes'> <d a'> <d a'> <d a'>16 <d a'> <d a'> <d a'> }

		  c8. d16 ees8 fis g a bes a g | fis8. g16 a8 bes b c d ees fis | d-^ r8 r4 r4 r4. |
		  \bar "||"
		}
	}
}
}

%layout

\book { \header { poet = "Melody - C" }
	\score {
	\new Staff {	
		\melody	
	}
	}
}

\book { \header { poet = "Melody - Bb" }
	\score {
	\new Staff { \transpose c d
		\melody	
	}
	}
}

\book { \header { poet = "Melody - Eb" }
    \score {
	\new Staff { \transpose c a 	
		\melody	
	}
    }
}
%}
