\version "2.12.1" 

\header {
	title = "Bubamara"
	composer = "Trad!"
	}
%description: BLO plays this song in tribute to <a href="http://voiceofroma.com/">Roma people</a> worldwide. While Bubamara is not a traditional Romani song, it has been popularized by several Romani bands and musicians, including Saban Bajramovic and Fanfare Ciocarlia. Bubamara means "labybug" in the Romani language, and is an important symbol in Romani culture.  Ladybugs attract guests to the home and are also a sign of good luck. For the Roma, the home is a sacred place, and the act of having guests is taken very seriously. This song speaks of the &quot;cute little ladybug&quot; and encourages all the Roma to get together and dance! The lyrics, originally in Serbo-Croatian, were translated and adapted into the Romani language by Dragan Ristic. Saban Bajramovic sang the original version for the film <i>Black Cat, White Cat</i>&quot;. (Text adapted from Dusan Ristic)
	
% music pieces
%part: melody
melody = {
\relative c'' { \key d \minor
    \mark \default
    \repeat volta 2 {
    a4. bes8 a4 gis | a8 a4 f8 d2 | r8 d'4 d8 d c bes a | bes2 g |
    r8 bes4 g8 e4 bes' | a8 a4 f8 d4 r | r8 e4 e8 f e dis e | }
    \alternative {
	{ a4 bes a2 | }
	{ r8 a4 bes8 a g f e | \bar "||" }
    }
    \break
    \mark \default
    \repeat volta 2 {
    d8 e f g a gis a4 | r8 d4 bes8 g4 r | r8 a4 f8 d4 r | 
    g8 f e d cis d e f | d2. r4 |
    } 
}
}

%part: harmony
harmony = {	
\relative c'' { \key d \minor
    \mark \default
    \repeat volta 2 {
    f4. g8 f4 e | f8 f4 d8 a2 | r8 f'4 f8 f e d cis | d2 bes |
    r8 d4 bes8 g4 cis | d8 d4 a8 f4 r | r8 g4 g8 a g fis g | }
    \alternative {
	{ cis4 d cis2 | }
	{ r8 cis4 d8 cis bes a e | \bar "||" }
    }
    \break
    \mark \default
    \repeat volta 2 {
    f8 g a bes d d d4 | r8 g4 d8 bes4 r | r8 d4 a8 f4 r | 
    bes8 a g f e f g a | f2. r4 |
    } 
}
}
%part: tenor
tenor = {
  \relative c' { \key d \minor
    \mark \default
    \repeat volta 2 {
      r8 <f a> r <f a> r <f a> <f a> <f a>|
      r8 <f a> r <f a> r <f a> <f a> <f a>|
      r8 <f a> r <f a> r <e a> <ees a> <d a'> |
      r8 <d bes'> r <d bes'> r <d bes'> <d bes'> <d bes'> | 
      r8 <d bes'> r <d bes'> r <ees bes'> <e bes'> <f bes> |
      r8 <f a> r <f a> r <f a> <f a> <f a>|
      r8 <e g> r <e g> r <e g> <e g> <e gis> |
    }
    \alternative {
      { r8 <e a> r <e a> r <cis g'> <cis g'> <cis g'> }
      { r8 <e a> r <e a> r <cis a'> <cis a'> <cis a'> }
    }
    \break
    \mark \default
    \repeat volta 2 {
      r8 <f a> r <f a> r <f a> <f a> <f a>|
      r8 <g bes> r <g bes> r <g bes> <g bes> <g bes> |
      r8 <f a> r <f a> r <f a> <f a> <f a>|
      r8 <e bes'> r <e bes'> r <cis a'> <cis a'> <cis a'> |
      r8 <f a> r <f a> r <f a> <f a> <f a>|
    }
  }
}

%part: bass
bass = {
	\relative c { \key d \minor
	\mark \default
	\repeat volta 2 {
	d4 a d a | d a d a | d e f fis | g d g d | 
	g d g d | d a d dis | e b e bes | }
	\alternative {
	    { a e' a, cis | }
	    { a e' a, cis | \bar "||" }
	}
    \break
	\mark \default
	\repeat volta 2 {
	d a d a | g' d g d | d a d dis | e e a a | d a d a | }
}
}
%part: changes
changes = \chordmode { 
	d1:m | d:m | d2:m d:7 | g1:m | 
	g:m | d:m | e2:m e:dim | a1:7 | a1:7

	d:m | g:m | d:m | e2:dim a:7 | d:m |

}

%layout
#(set-default-paper-size "a5" 'landscape)
\book { 
 \paper { #(set-paper-size "a4") }
  \header { poet = "Score" }
    \score {
	<< \tempo 4 = 184
    \new Staff {
      \melody
    }
    \new Staff { 
      \harmony
    }
    \new Staff { 
      \tenor
    }
    \new Staff { \transpose c c''
      \bass
    }
	>>
    }
}




\book { \header { poet = "MIDI" }
    \score { 
      << \tempo 4 = 180 
        \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"trumpet"
		\melody
	}
    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"alto sax"
      %\harmony
	}
    \unfoldRepeats  \new Staff { \set Staff.midiInstrument = #"trombone"
      \tenor
    }
    \unfoldRepeats	\new Staff { \set Staff.midiInstrument = #"tuba"
		\bass
	}
      >> 
    \midi { }
  } 
}

