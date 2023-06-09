%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2017 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

\include "mylib.ly"

Composer = "Heinrich Ernst Kayser"
Opus = "Opus 20"

studyXXXVIprologI = ##f
studyXXXVIprologII = ##f

studyXXXVI = \new Voice \relative a {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key c \major

  a16\mf^"G & D strings"( a') c,( c') e,( e') d,( d')
  c,( c') b,( b') a,( a') c,( c') |
  %% 2
  e,^"D & A"( e') gis,( gis') b,( b') a,( a')
  gis,( gis') fis,( fis') e,( e') gis,( gis') |
  %% 3
  a,( a') g,( g') f,( f') e,( e')
  f,( f') e,( e') d,^"G & D"( d') c,( c') |
  %% 4
  b,( b') c,( c') d,\cresc( d') dis,( dis')
  e,( e') f,( f') d,\dim( d') b,( b') |
  %% 5
  c,\p( c') e,( e') g,( g') f,( f') e,( e') d,( d') c,( c') e,( e') |
  %% 6
  g,( g') a,( a') b,( b') a,( a') g,( g') f,( f') e,( e') d,( d') |
  %% 7
  e,( e') d,( d') c,( c') b,( b') a,( a') c,( c') e,( e') a,( a') |
  %% 8
  g,( g') e,( e') fis,( fis') dis,-1( dis'-4)
  e,( e') d,( d') b,( b') gis,( gis') |
  %% 9
  a,\mf( a') cis,( cis') e,( e') d,( d')
  cis,( cis') b,( b') a,( a') cis,( cis') |
  %% 10
  e,( e') gis,( gis') b,( b') a,( a') gis,( gis') fis,( fis') e,( e') d,( d') |
  %% 11
  cis,( cis') e,( e') a,( a') gis,( gis')
  fis,( fis') e,( e') d,( d') cis,( cis') |
  %% 12
  b,( b') cis,( cis') d,( d') dis,( dis')
  e,( e') d,( d') b,( b') gis,-1( gis'-4) |
  %% 13
  a,\p( a') c,( c') e,( e') d,( d') c,( c') b,( b') a,( a') c,( c') |
  %% 14
  e,( e') gis,( gis') b,( b') a,( a') gis,( gis') fis,( fis') e,( e') gis,( gis') |
  %% 15
  a,( a') g,( g') f,( f') e,( e') f,( f') e,( e') d,( d') c,( c') |
  %% 16
  b,( b') c,( c') d,( d') dis,( dis') e,( e') f,( f') d,( d') b,( b') |
  %% 17
  c,\f( c') e,( e') g,( g') f,( f') e,\dim( e') d,( d') c,( c') b,( b'\!) |
  %% 18
  a,\f( a') c,( c') e,( e') d,( d') c,\dim( c') b,( b') a,( a') g,( g'\!) |
  %% 19
  f( f') a,( a') c,( c') bes,( bes') a,\dim( a') g,( g') f,( f') e,( e'\!) |
  %% 20
  dis,-1\f( dis'-4) fis,( fis') b,( b') a,( a')
  gis,\dim( gis') f,( f') e,( e') d,( d'\!) |
  %% 21
  c,( c') e,( e') d,( d') c,( c') b,( b') d,( d') c,( c') b,( b') |
  %% 22
  a,( a') c,( c') b,( b') a,( a')
  gis,-1( gis'-4) b,( b') a,( a') gis,-1( gis'-4) |
  %% 23
  a,\p( a') b,( b') c,\cresc( c') d,( d')
  e,( e') fis,( fis') gis,( gis') a,( a'\!) |
  %% 24
  bes,(\> bes') a,( a') g,( g') e,( e'\!)
  g,\>( g') f,( f') e,( e') d,( d'\!) |
  %% 25
  d,( d') f,( f') g,( g') a,( a')
  bes,\cresc( bes') d,( d') c,( c') bes,( bes'\!) |
  %% 26
  a,\>( a') c,( c') b,( b') a,( a'\!)
  gis,\>( gis') e,( e') d,( d'\!) b,( b') |
  %% 27
  a,\p( a') a,( a') c,\cresc( c') c,( c')
  e,( e') e,( e'\!) gis,,\p( gis') gis,( gis') |
  %% 28
  a,( a') a,( a') c,\cresc( c') c,( c')
  e,( e') e,( e'\!) gis,,\p( gis') gis,( gis') |
  %% 29
  a, a' a,( c e a c e a-\markup{\italic "poco a poco rallent."} e-0)
  e'-\0( c a f-3 e-0 c-2 |
  %% 30
  a e) e'( c a f e c a) f'( e c a f' e c) | a1 |
  %% 32
  <a e' cis' a'>4^\aTempo\ff r2. \bar "|."
}

studyXXXVprologI = ##f
studyXXXVprologII = ##f

studyXXXV = \new Voice \relative f'' {
  \violinVoiceSettings
  \time 3/2
  \tempo "Allegro con fuoco." 4=123
  \key d \major

  fis8-3\f( g fis eis fis d b-1 d cis ais-4 fis ais) |
  b( cis b ais-1 b fis d fis b, d fis b) |
  %% 3
  fis\>( ais-4\! cis fis b,\> d-1\! fis b fis\> ais\! cis-1 fis) |
  %% 4
  e->( d cis b-2 ais b cis b gis-> a b a) |
  %% 5
  a( b a gis a fis d fis e-0 cis a cis) |
  %% 6
  d( e-4 d cis d a fis a-4 d, fis a_0 d) |
  %% 7
  b->( d g b a,-> fis' a d a,-0 a'-1 cis e) |
  %% 8
  fis->( d a fis d e eis fis g-> fis eis fis) |
  %% 9
  fis( g fis eis fis d b-1 d cis ais-4 fis ais) |
  %% 10
  b( cis b ais-1 b_1 fis d-0 fis b, d-0 fis b) |
  %% 11
  fis\>( ais-4\! cis fis b,\> d-1\! fis b fis\> ais\! cis-1 fis) |
  %% 12
  e\>( d\! cis b-2 ais b cis b gis-2\> a\! b a) |
  %% 13
  a( b a gis a fis d fis e-0 cis a cis) |
  %% 14
  d( e d cis d a fis a-4 d, fis a d) |
  %% 15
  g,-1\>( b\! d g g,-1\> cis\! e g fis,-1\> ais\! cis fis) |
  %% 16
  fis,-1\>( b\! d fis e,-1\> g\! b e e,\< g c e-0) |
  %% 17
  a\>( g fis g f e-0 d c\! b c e-2 g-4) |
  %% 18
  fis-3( d-1 cis-4 b-3 fis-1 b-4 cis-1 fis-4 fis, ais cis fis) |
  %% 19
  b,-1( cis b ais-1 b-1 cis d e-0 fis gis ais fis) |
  %% 20
  b-2( cis b ais b cis d e fis d cis b-2) |
  %% 21
  cis( ais gis-2 fis b fis d cis b d fis b) |
  %% 22
  ais( fis cis ais-4 fis g fis eis fis e cis d) |
  %% 23
  b( cis b ais b cis d-0 e fis gis ais fis) |
  %% 24
  b( cis b ais-1 b-1 cis d-1 e fis d cis-2 b) |
  %% 25
  a\p( cis fis a b, d g\cresc b cis,-1 e ais cis) |
  %% 26
  d,-1( fis b d e,-1 g c e eis,-1 gis-3 b-1 d-3) |
  %% 27
  fis,-1\f( b d fis e d cis b-2 ais b cis b) |
  %% 28
  ais-1( cis ais fis g-4 e cis b ais-2 cis fis e) |
  %% 29
  dis-1( e-\dolce dis cis-2 b ais gis fis e dis cis b) |
  %% 30
  ais( b cis dis-4 e-1 eis-1 fis gis ais b cis dis-1) |
  %% 31
  e-2( fis e dis cis-4 b ais gis fis-4 e dis cis) |
  %% 32
  b-2( cis dis-4 e fis gis gisis-0 ais-1 b-1 cis dis e) |
  %% 33
  fis-1( dis'-4 cis b ais b cis dis e-\0 cis-3 ais-1 e-0) |
  %% 34
  dis-3( b'-4 ais gis fisis gis ais-1 b cis ais fisis-1 cis-2) |
  %% 35
  b->-1( gis'-4 fis e gis,->-3 e'-4 dis cis g->-3 e'-4 d cis) |
  %% 36
  fis,->-2( e'-4 dis cis b-1 ais-1 cis-2 fis-3 ais-1 cis-1 fis e) |
  %% 37
  dis-2( e dis cis b-2 ais gis fis e-2 dis cis b) |
  %% 38
  ais( b cis dis e eis fis gis ais b cis-1 dis) |
  %% 39
  e-3( fis e dis cis b-2 ais gis fis-3 e dis cis) |
  %% 40
  b-3( cis dis e fis gis-4 gisis-1 ais-1 b cis-1 dis e) |
  %% 41
  fis( dis cis b-2 ais b cis dis-4 e cis ais e-0) |
  %% 42
  dis'( b ais gis-2 fisis gis ais-1 b cis ais fisis-1 cis) |
  %% 43
  b'\>( gis\! dis b b'\> gis\! e-4 cis b'\> gis\! eis-4 cisis-2) |
  %% 44
  b'\>( ais fisis ais dis, e dis cisis dis e dis\! cisis) |
  %% 45
  dis2~( dis4 r r4. e8-2) |
  %% 46
  fis8-\rit( gis fis eis fis gis fis eis fis g fis eis) |
  %% 47
  fis\f\fermata( g^\aTempo fis eis fis d b-1 d cis ais fis-4 ais) |
  %% 48
  b( cis b ais-1 b_1 fis d-0 fis b, d-0 fis b) |
  %% 49
  fis( ais-4 cis fis b, d-1 fis b fis ais cis-1 fis) |
  %% 50
  e( d cis b-2 ais b cis b gis-2 a b a) |
  %% 51
  a( b a gis a fis d fis e-0 cis a cis) |
  %% 52
  d( e-4 d cis d a fis a-4 d, fis a d) |
  %% 53
  b( d g b a, fis'-3 a d  a, a'-1 cis e) |
  %% 54
  fis( d a fis d e eis fis g fis eis fis) |
  %% 55
  fis( g fis eis fis d b-1 d cis ais-4 fis ais) |
  %% 56
  b( cis b ais-1 b_1 fis d-0 fis b, d-0 fis b) |
  %% 57
  g-1( b d g g,-1 cis e g fis,-1 ais cis fis) |
  %% 58
  fis,( b d fis e,-1 g b e e,-1 g c e-0) |
  %% 59
  a( g fis g f e-0 d c b c e-2 g-4) |
  %% 60
  fis-3( d-1 cis-4 b-3 fis-1 b-4 cis-1 fis-4 fis, ais cis fis) |
  %% 61
    b,-1( cis b ais-1 b-1 cis d e-0 fis gis ais fis) |
  %% 62
  b-2( cis b ais b cis d e fis d cis b-2) |
  %% 63
  cis( ais gis-2 fis b fis d cis b d fis b) |
  %% 64
  ais( fis cis ais fis g fis eis fis e cis d) |
  %% 65
  b( cis b ais b cis d-0 e fis gis ais fis) |
  %% 66
  b-1( cis b ais-1 b-1 cis d-1 e fis d cis-2 b) |
  %% 67
  g'4-4 r <g-2 c,-2 e,-1>1\f | r2 <gis-3 b,-1 eis,-2>1\p |
  %% 69
  r2 <b d, fis,>4\f r <b d, g,> r | <b cis, e,>2 r <ais cis, fis,> |
  %% 71
  <b d, fis, b,> r <d, fis, b,>\p^"pizz." | <b d, b>1 \bar "|."
}

studyXXXIVprologI = ##f
studyXXXIVprologII = ##f

studyXXXIV = \new Voice \relative g'' {
  \violinVoiceSettings
  \time 6/4
  \tempo "Andante, poco allegretto." 4=111
  \key d \major

  \tuplet 3/2 {a8-3-\dolce\>( b a} fis4 \tuplet 3/2 {d8 e d}
  a4 \tuplet 3/2 {fis8 g fis} d'4) |
  %% 2
  \tuplet 3/2 {cis8\<( d cis} a4 \tuplet 3/2 {g'8 a g} e4
  \tuplet 3/2 {cis'8-3 d cis} a4) |
  %% 3
  \tuplet 3/2 {e'8-3\>( fis e} cis4-1 \tuplet 3/2 {a8-3 b a} g4
  \tuplet 3/2 {a,8_0 b a} e'4-4) |
  %% 4
  \tuplet 3/2 {fis8\<( g fis} a4\> \tuplet 3/2 {d,8-1 e d} fis4
  \tuplet 3/2 {a,8_0 b a} d4) |
  %% 5
  \tuplet 3/2 {fis,8\<( g fis} ais4-4 \tuplet 3/2 {cis8 d cis} fis4-3
  \tuplet 3/2 {e8 fis e} cis4-2) |
  %% 6
  \tuplet 3/2 {d8\>( e d} b4 \tuplet 3/2 {fis'8-3 g fis} d4
  \tuplet 3/2 {b'8 cis b} fis4) |
  %% 7
  \tuplet 3/2 {e8\cresc( dis e} fis4 \tuplet 3/2 {g8 fis g} fis4
  \tuplet 3/2 {e8\dim dis e} eis4\!) |
  %% 8
  \tupletSpan 2.
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {fis8\f( gis fis ais b ais cis dis cis}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {ais\dim b ais fis g fis\! g-\rit a g)} |
  %% 9
  \tuplet 3/2 {a-\aTempo\>( b a} fis4 \tuplet 3/2 {d8 e d} a4
  \tuplet 3/2 {fis8 g fis\!} d'4) |
  %% 10
  \tuplet 3/2 {cis8\<( d cis} a4 \tuplet 3/2 {g'8 a g} e4
  \tuplet 3/2 {cis'8-3 d cis\!} a4) |
  %% 11
  \tuplet 3/2 {e'8-3( fis e\>} cis4-1 \tuplet 3/2 {a8-3 b a} g4-2
  \tuplet 3/2 {a,8_0 b a\!} e'4-4) |
  %% 12
  \tuplet 3/2 {fis8( g fis} a4 \tuplet 3/2 {d,8-1 e d} fis4
  \tuplet 3/2 {a,8_0 b a} d4) |
  %% 13
  \tuplet 3/2 {c8( d c} d,4_0 \tuplet 3/2 {fis'8-3\< g fis} d4
  \tuplet 3/2 {c'8 d c} a4) |
  %% 14
  \tuplet 3/2 {b8\>( ais b8} d4 \tuplet 3/2 {g,8-2 fis g\!} b4
  \tuplet 3/2 {d,8 cis d} g4-2) |
  %% 15
  \tuplet 3/2 {a,8-0\f( b a} cis4 \tuplet 3/2 {e8 fis e} g4
  \tuplet 3/2 {e8\dim fis e} cis4-1\!) |
  %% 16
  \tuplet 3/2 {d8-1\>( e d\!} d,4_0 \tuplet 3/2 {fis'8\> g fis\!} d,4
  \tuplet 3/2 {ees'8\> f ees\!} d,4) |
  %% 17
  \tuplet 3/2 {d'8\>( ees d\!} d,4 \tuplet 3/2 {bes'8-3\> c bes\!}
  d,4 \tuplet 3/2 {g8_1\> a g\!} d4) |
  %% 18
  \tuplet 3/2 {fis8_2(\< g fis} d'4 \tuplet 3/2 {c8 d c} a'4
  \tuplet 3/2 {fis8 g fis\!} c'4-3) |
  %% 19
  \tuplet 3/2 {bes8-2( a bes} d4 \tuplet 3/2 {g,8-2 fis g} bes4
  \tuplet 3/2 {d,8 cis d} g4-4) |
  %% 20
  \tuplet 3/2 {fis8-3\>( g fis} d4-1 \tuplet 3/2 {a8_2 bes a} fis4-2
  \tuplet 3/2 {d8 ees d\!} d'4-\0~ |
  %% 21
  d4) \tuplet 3/2 {ees,8_1( f ees} d'4-\0-4~\cresc d
  \tuplet 3/2 {e,8_1 f e} d'4-\0-4~ |
  %% 22
  d4\!)
  \tupletSpan 2
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {f,8_2( g f g a g}
  \tupletSpan 2.
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {a bes a bes c cis-3-\rall d-1 ees-2 e-2)} |
  %% 23
  \tuplet 3/2 {f-3^\aTempo\>( g f} d4 \tuplet 3/2 {bes8-1 c bes}
  f4 \tuplet 3/2 {d8 ees d\!} bes'4-3) |
  %% 24
  \tuplet 3/2 {a8\<( bes a} f4-2 \tuplet 3/2 {ees'8 d ees} cis4
  \tuplet 3/2 {a'8 gis a} f4) |
  %% 25
  \tuplet 3/2 {c'8-3\>( d c} a4 \tuplet 3/2 {f8 g f} ees4
  \tuplet 3/2 {f,8 g f\!} c'4) |
  %% 26
  \tuplet 3/2 {d8-1\<( ees d} f4\> \tuplet 3/2 {bes,8-1 c bes} d4
  \tuplet 3/2 {f,8 g f\!} bes4) |
  %% 27
  \tuplet 3/2 {d,8-0\<( ees d} fis4 \tuplet 3/2 {a8 bes a} d4
  \tuplet 3/2 {c8 d c} a4) |
  %% 28
  \tuplet 3/2 {bes8\>( c bes} g4 \tuplet 3/2 {d'8 ees d} bes4
  \tuplet 3/2 {g'8 a g\!} d4) |
  %% 29
  \tuplet 3/2 {c8\cresc( b c} d4 \tuplet 3/2 {ees8 d ees} d4
  \tuplet 3/2 {c8 b c} cis4\!) |
  %% 30
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {d8\<( e d fis g fis a-1 b a\!}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {d\> c b a g fis e d c-2\!)}
  %% 31
  \tuplet 3/2 {b8\mf( c b} d4 \tuplet 3/2 {g8 a g} fis4
  \tuplet 3/2 {a,8 b a} c4) |
  %% 32
  \tupletSpan 4
  \tuplet 3/2 {d,8( e\< d} a''4-\0-4
  \tuplet 3/2 {fis8\> d c-2\! b c\< b} d'4\> \tuplet 3/2 {b8 g d\!)} |
  %% 33
  \tuplet 3/2 {b8-1( c b} d4 \tuplet 3/2 {g8 a g} fis4
  \tuplet 3/2 {a,8\dim b a} e'4-4\!) |
  %% 34
  \tuplet 3/2 {fis,8( g fis} d'4-\0-4
  \tuplet 3/2 {d,8_0 e_1 d_0 b'_3 g_1 d_2} g,4-0 <d' b' g'>4\f) |
  %% 35
  \tuplet 3/2 {e'8-0\mf( fis e} b4-1
  \tuplet 3/2 {g'8-4 fis e fis g fis} b,4-1 \tuplet 3/2 {a'8 g fis)} |
  %% 36
  \tuplet 3/2 {g8( b g} e4 \tuplet 3/2 {g8 fis e}
  \tupletSpan 2.
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {fis b ais b fis dis} b4) |
  %% 37
  \tupletSpan 4
  \tuplet 3/2 {e8-0( fis e} b4-1 \tuplet 3/2 {g'8-4 fis e fis g fis}
  b,4-1 \tuplet 3/2 {a'8 g fis)} |
  %% 38
  \tupletSpan 2.
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {g8\cresc( b e, fis a g fis e-0 dis}
  \tuplet 3/2 {e b g} e4 <b' e>\!) |
  %% 39
  \tuplet 3/2 {g,8-0\p( d'_0 g_1} b4 \tuplet 3/2 {d8 e d} b'4\<
  \tuplet 3/2 {g8 e\> d} b4\!) |
  %% 40
  \tuplet 3/2 {d,8_2( c'_4 a_0} fis'4 \tuplet 3/2 {d8 e d} e'4-\0\<
  \tuplet 3/2 {d8-4 c\> a} fis4-1\!) |
  %% 41
  \tuplet 3/2 {g8( a g} b4-2 \tuplet 3/2 {d,8 e d} g4
  \tuplet 3/2 {b,8-1 c b} e4) |
  %% 42
  \tuplet 3/2 {a,,8( b a} g'4 \tuplet 3/2 {e8 fis e} cis'4
  \tuplet 3/2 {a8 b a)} g'4->-4~ |
  %% 43
  \tuplet 3/2 {g8(fis d} d,4-0 a''4-4-\0~\> \tuplet 3/2 {a8\! g-4 e} d4)
  \once \override Hairpin.to-barline = ##f
  b'4~\>( |
  %% 44
  \tuplet 3/2 {b8\! a fis} d4 c'~ \tuplet 3/2 {c8 b g} d4) d'4\f~( |
  %% 45
  \tuplet 3/2 {d8 c a} fis4 e'-4-\0\<~
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {e8\>) d-4( c b a g-4 fis e\! d)} |
  %% 46
  \tuplet 3/2 {c_4_( a_2 g_1} fis4-1 e'4-4)~
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {e8\> d( c b-3 a g fis-2 e d\!)} |
  %% 47
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {cis( e d fis\cresc e g fis a-4 gis}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {b a-0 c b d c e-4 dis fis)} |
  %% 48
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {e-0\f( g fis a gis b-2 a c b}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {d b c g-2\dim a eis-1 e-1 cis-2 d\!)} |
  %% 49
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {b8-1\>( c gis a eis fis} d4\!)
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {dis'8\>( e-2 b-3 c-4 gis-1 a-2} d,4-0) |
  %% 50
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {gis'8-2\f( a g fis e d c\dim b a)}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {gis( a g fis e d c b a)} |
  %% 51
  \tuplet 3/2 {g8-0\p( d'_0 g_1} b4-3\< \tuplet 3/2 {d8 e d}
  b'4\> \tuplet 3/2 {g8 e d\!} b4) |
  %% 52
  \tuplet 3/2 {d,8-0\<( c' a_0} fis'4-3\> \tuplet 3/2 {d8-1\! e d}
  e'4-\0\> \tuplet 3/2 {d8-4 c a} fis4-1\!) |
  %% 53
  \tuplet 3/2 {g8( a g} b4-2 \tuplet 3/2 {d,8 e d} g4
  \tuplet 3/2 {b,8-1 c b} e4) |
  %% 54
  \tuplet 3/2 {dis8-1\>( e dis} c'4 \tuplet 3/2 {b8 c b} a4
  \tuplet 3/2 {g8-2 a g} e4\!) |
  %% 55
  \tuplet 3/2 {cis8\>( d cis} b'4-4 \tuplet 3/2 {a8 b a} fis4
  \tuplet 3/2 {d8 e d} b4\!) |
  %% 56
  \tuplet 3/2 {gis8-1\f\>( a gis} fis'4 \tuplet 3/2 {e8 fis e}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {d cis_4 b a gis fis_4 e d b-2\!)} |
  %% 57
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {a-1( gis-1 b-2 a cis b d-4\cresc cis e}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {dis-1 fis-2 e-1 g fis a-4 gis-3 b-1 a-0\!)} |
  %% 58
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {cis( b d cis e-4 dis-3 fis-1 e g}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {fis a g b-\rit a gis b a gis)} |
  %% 59
  \tuplet 3/2 {a8^\aTempo\>( b a} fis4 \tuplet 3/2 {d8 e d} a4
  \tuplet 3/2 {fis8 g fis\!} d'4) |
  %% 60
  \tuplet 3/2 {cis8\<( d cis} a4 \tuplet 3/2 {g'8 a g} e4
  \tuplet 3/2 {cis'8-3 d cis\!} a4) |
  %% 61
  \tuplet 3/2 {e'8-3( fis\> e} cis4 \tuplet 3/2 {a8-3 b a} g4-2
  \tuplet 3/2 {a,8_0 b a\!} e'4-4) |
  %% 62
  \tuplet 3/2 {fis8\<( g fis} a4\> \tuplet 3/2 {d,8-1 e d} fis4
  \tuplet 3/2 {a,8_0 b a\!} d4) |
  %% 63
  \tuplet 3/2 {fis,8\<( g fis} ais4-4 \tuplet 3/2 {cis8 d cis} fis4-3
  \tuplet 3/2 {e8 fis e\!} cis4-2) |
  %% 64
  \tuplet 3/2 {d8( e\> d} b4 \tuplet 3/2 {fis'8-3 g fis} d4
  \tuplet 3/2 {b'8 cis b} fis4\!) |
  %% 65
  \tuplet 3/2 {e8\cresc( dis e} fis4 \tuplet 3/2 {g8 fis g} fis4
  \tuplet 3/2 {e8\dim dis e} eis4\!) |
  %% 66
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {fis8\f( gis fis ais b ais cis dis cis}
  \once \override TupletNumber.text = #tuplet-number::calc-fraction-text
  \tuplet 3/2 {ais b ais fis-1\dim g fis g^\rit a g)}
  %% 67
  \tuplet 3/2 {a8\p\>^\aTempo( b a} fis4 \tuplet 3/2 {d8 e d} a4
  \tuplet 3/2 {fis8 g fis\!} d'4) |
  %% 68
  \tuplet 3/2 {cis8( d\< cis} a4 \tuplet 3/2 {g'8 a g} e4
  \tuplet 3/2 {cis'8-3 d cis\!} a4) |
  %% 69
  \tuplet 3/2 {e'8-3( fis\> e} cis4 \tuplet 3/2 {a8-3 b a} g4
  \tuplet 3/2 {a,8-0 b a\!} e'4) |
  %% 70
  \tuplet 3/2 {fis8( g fis} a4 \tuplet 3/2 {d,8-1 e d} fis4
  \tuplet 3/2 {a,8 b a} d4) |
  %% 71
  \tuplet 3/2 {c8( d c} a4-0 \tuplet 3/2 {fis'8-3\< g fis} d4
  \tuplet 3/2 {c'8 d c} a4) |
  %% 72
  \tuplet 3/2 {b8\>( ais b} d4 \tuplet 3/2 {g,8-2 fis g} b4
  \tuplet 3/2 {d,8 cis d\!} g4-2) |
  %% 73
  \tuplet 3/2 {a,8_0( b a} cis4 \tuplet 3/2 {e8-2 fis e} g4
  \tuplet 3/2 {e8 fis e} cis4-1) |
  %% 74
  \tuplet 3/2 {d8-1\>( e d\!} d,4-0 \tuplet 3/2 {fis'8\> g fis\!} d,4
  \tuplet 3/2 {ees'8\> f ees\!} d,4) |
  %% 75
  \tuplet 3/2 {d'8-1\>( ees d\!} d,4 \tuplet 3/2 {bes'8-3\> c bes\!} d,4
  \tuplet 3/2 {g8-1\> a g\!} d4) |
  %% 76
  \tuplet 3/2 {fis8-2\>( g fis\!} d4 \tuplet 3/2 {a'8-2\> bes a\!} d,4
  \tuplet 3/2 {d'8-1\> ees d\!} d,4) |
  %% 77
  \tuplet 3/2 {c'8-2( d c} d,4 \tuplet 3/2 {bes'8-3 c bes} d,4
  \tuplet 3/2 {g8_1 a g} d4) |
  %% 78
  \tuplet 3/2 {fis8_2( g fis} d4 \tuplet 3/2 {a'8_2\cresc b a} fis4-2
  \tuplet 3/2 {d'8-3 e d} a4-0) |
  %% 79
  \tuplet 3/2 {fis'8-3( g fis} d4 \tuplet 3/2 {a'8-3 b a} fis4
  \tuplet 3/2 {d'8 e d} a4) |
  %% 80
  \tuplet 3/2 {fis'8-4\f( eis fis} d4 \tuplet 3/2 {a8 gis a} fis4
  \tuplet 3/2 {d8 cis d} a4-0) |
  %% 81
  \tuplet 3/2 {fis8-2\p( g fis} d4 \tuplet 3/2 {a'8_2\cresc b a} d,4
  \tuplet 3/2 {d'8-1 e d} d,4\!) |
  %% 82
  \acciaccatura d8 <fis' d'>2\fz r4 r2. \bar "|."
}

studyXXXIIIprologI =  \markup {
  \pad-around #1. {
    \override #'(line-width . 52)
    \wordwrap {
      To practice the staccato also with down-bow one must include the
      8th-note following the six 16th-notes in the same bow.
    }
    \override #'(line-width . 52)
    \wordwrap {
    }
  }
}

studyXXXIIIprologII = ##f

studyXXXIII = \new Voice \relative g'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key c \major

  g8-.->\p a16-.( g-. f-. e-.-0 d-. c-.)
  b8-.-> d16-.( c-. b-. a-.-0 g-. f-.) |
  %% 2
  e8-.-> c16-.( d-. e-. f-. g-. a-.)
  g8-.-> e'16-.( d-. c-. b-. a-.-4 g-.) |
  %% 3
  f8-.-> d'16-.( c-. b-. a-.-4 g-. f-.)
  e8-.-> c'16-.( b-. a-. g-. f-. e-.) |
  %% 4
  d8-.\f g,16-.( b-. d-. g-. b-. d-.)
  g8-.\p g,16-.( a-. b-. c-. d-. e-.) |
  %% 5
  f8-. d'16-.-4( c-. b-. a-. g-.-4 f-.-3)
  e8-.-2 c'16-.( b-. a-. g-. f-. e-.) |
  %% 6
  d8-. b'16-.( a-. gis-.-2 f-.-1 e-.-0 d-.)
  c8-. e16-.( d-. c-. b-. a-. g-.) |
  %% 7
  f8-. a'16-.( g-. f-. e-. d-. c-.)
  b8-. g'16-.( f-. e-. d-. c-. b-.) |
  %% 8
  c8-.\f c'16-.-4( g-.-2 e-. c-. g-. e-.) c4 r |
  %% 9
  a'8-.->\p a16-.( b-. c-.\< d-. e-. f-.\!)
  e8-.-> a,16-.( b-. c-.\< d-. e-. f-.\!) |
  %% 10
  e8-.-> a,16-.( b-. c-. d-. e-. f-.)
  e8-.-> c'16-.-4( b-.-4 a-. g-. f-. e-.) |
  %% 11
  d8-. b16-.( c-. d-. e-. f-. g-.)
  f8-. b,16-.( c-. d-. e-. f-. g-.) |
  %% 12
  f8-. b,16-.( c-. d-. e-. f-. g-.)
  f8-. e16-.( d-. c-. b-. e-. d-.) |
  %% 13
  cis8-. a16-.( b-. c-.\cresc d-. e-. f-.)
  g8-. bes16-.( a-. g-. f-. e-. g-.) |
  %% 14
  f8-. d16-.( e-. f-. g-. a-.-1 bes-.)
  a8-. f'16-.-4( e-.-3 d-.-2 c-.-1 b-.-2 a-.-1) |
  %% 15
  bes8-.\f d16-.( cis-. d-. bes-. f-. ees-.)
  d8-. bes'16-.-4( a-. bes-. f-. d-. bes-.) |
  %% 16
  a8-.\dim a'16-.( gis-. a-. e-. c-. a-.)
  gis8-.\p e'16-.( dis-. e-.-0 fis-. gis-. a-.) |
  %% 17
  b8_\markup{\italic "simile"} e,16-4 dis e-0 fis g a
  bes8 e,16-4 dis e f g bes |
  %% 18
  a8 d,16 cis d e-0 f g aes8 d,16-3 cis d ees f aes |
  %% 19
  g8 c,16\cresc b c d ees d c8 c'16-3 b-2 c-1 d ees d |
  %% 20
  c8\f c,16-2 b c d ees d c8 c,16 b c-1 ees-3 d-2 c-1 |
  %% 21
  b8-2 g'16\p fis g a b c d8 b16 ais b\cresc c d e |
  %% 22
  f8 d16 cis d e-0 f g a8 aes16\dim aes g g fis fis |
  %% 23
  g8\p a16 g f e-0 d c b8 d16 c b a-0 g f |
  %% 24
  e8 c16 d e f g a g8 e'16 d c b a g |
  %% 25
  f8 d'16 c b a g f e8 c'16 b a g f e |
  %% 26
  d8\f g,16 b d g b d g8 g,16\p a b c d e |
  %% 27
  f8 d'16 c b a g f e8 c'16 b a g f e |
  %% 28
  d8 b'16 a gis-2\cresc f-1 e-0 d c8 e16-4 d c b a-0 g\! |
  %% 29
  f8 a'16 g f e-0 d c b8 g'16 f e-0 d c b |
  %% 30
  c8 c'16 g e c g e c4 r |
  %% 31
  c'8 c'16 a fis dis-4 c a-0 fis4 r |
  %% 32
  g8 a'16 g e c g e c4 r |
  %% 33
  g8 f''16-4\cresc d-3 b g f d b4 r |
  %% 34
  c8\f c16 e g c e g c4 r |
  %% 35
  c,8\p c'16 a fis ees-4 c a-0 fis4 r |
  %% 36
  bes,8 bes''16 g ees bes g ees bes4 r |
  %% 37
  b8 aes''16 f d b aes f d4 r |
  %% 38
  c8 g''16 d ees c g ees c4 r |
  %% 39
  <aes ees'>8\f bes'16 bes c c d d ees4 r |
  %% 40
  <g,, e' c'>8 e''16 e f f fis fis g4 r |
  %% 41
  <g,, f' b>8\ff a''16 g f e d c b8 e16\dim d c b a g |
  %% 42
  c8 c,16\f e g c e g c4 r |
  %% 43
  << c,,4 <e c'^~>2\< >> <ees c'> |
  %% 44
  << <e c'>2. {s4\> s s\!} >> r4 \bar "|."
}

studyXXXIIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative g'' {
    \violinVoiceSettings
    \time 3/4
    \key ees \major
    
    g8.-.\upbow bes,16-. ees8.-. g,16-. bes8.-. ees,16-. \bar "||"
    g'8.-.\downbow bes,16-. ees8.-. g,16-. bes8.-. ees,16-. \bar "||"
    g'8.-. bes,16-.( ees8.-.) g,16-.( bes8.-.) s16 \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXXXIIprologII = ##f

studyXXXII = \new Voice \relative g'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro moderato." 4=123
  \key es \major

  g8.-.\f( bes,16-.) ees8.-.( g,16-.) bes8.-.( ees,16-.) |
  %% 2
  g8.-.\dim( bes,16-.) ees8.-.( g,16-.\!) bes8.-.( ees16-.) |
  g8.-.( bes16-.) ees8.-.\cresc( g16-.) bes8.-.( g16-.\!) |
  %% 4
  ees'8.-.-4( d16-.-4) c8.-.( bes16-.) aes8.-.\dim( f16-.\!) |
  %% 5
  aes8.\f d,16-4 f8. bes,16 d8. f,16 | bes8.\dim d,16 f8. bes,16 d8. f16\! |
  %% 7
  bes8. d16-1\cresc f8. bes16 d8. bes16\! |
  %% 8
  f'8.-4 ees16 d8.\dim c16 bes8.-2 aes16\! |
  %% 9
  g8.-4\< bes16-2 des8.-4\! g,16-2\> bes8. e,16\! |
  %% 10
  f8.\< aes16-1 ces8.-3\! f,16-1\> aes8. d,16-4\! |
  %% 11
  ees8.-4 ees16 ges8. ces,16\> ges'8. bes,16\! |
  %% 12
  ges'8. a,16 ges'8. ges16\> f8. ees16\! |
  %% 13
  d8.\p bes,16\< d8. f16 bes8. d16\! |
  %% 14
  ees8. c,16\< ees8. a16 c8. ees16\! |
  %% 15
  f8. d,16\< f8. bes16 d8. f16 |
  %% 16
  aes8.\> g16 bes8. aes16 g8. f16\! |
  %% 17
  g8.\f bes,16 ees8. g,16 bes8. ees,16 |
  %% 18
  g8.\dim bes,16 ees8. g,16\! bes8. ees16 |
  %% 19
  g8.\cresc bes16 ees8. g16 bes8. g16\! |
  %% 20
  ees'8.-4 d16-4\dim c8. bes16 aes8. g16-2\! |
  %% 21
  aes8.\f d,16-4 f8. bes,16 d8. f,16 |
  %% 22
  bes8.\dim d,16 f8. bes,16\! d8. f16 |
  %% 23
  bes8. d16-1 f8. bes16\cresc d8. bes16\! |
  %% 24
  f'8.-4 ees16 d8.\dim c16 bes8.-2 aes16 |
  %% 25
  g8.-4\p bes16 des8.\> des16 c8. bes16\! |
  %% 26
  a8. c16 ees8.-4\> ees16 d8.-4 c16\! |
  %% 27
  b8.-2\f d16-1 g8.-4 b,16-3 d8.-1 g,16-1 |
  %% 28
  c8.-4 ees16-2 g8.-4 g16 ees8. c16 |
  %% 29
  b8.-3\f d16-1 g8.-4 b,16-3 d8.-1 g,16-1 |
  %% 30
  c8.-4 ees16-2 g8. g16 ees8. c16 |
  %% 31
  b8.\ff d16 g8. fis16\dim f8. e16-2 |
  %% 32
  d8.-1 c16-3 b8. a16 g8.-4 f16-3 |
  %% 33
  e8.-2\f c16-2 e8. g,16 c8. e,16 |
  %% 34
  g8.\dim c,16 e8. g,16\! c8. e16 |
  %% 35
  g8. c16 e8.-1 g16-3\cresc c8.-2 d16 |
  %% 36
  e8. b16 d8. c16 e,8.-0 a16-3 |
  %% 37
  f8.\f f16 a8. d,16 f8. a,16 |
  %% 38
  d8.\dim f,16 a8.-4 d,16 f8. a,16\! |
  %% 39
  d8.\cresc f16 a8. d16-1 f8.-3 aes16-1\! |
  %% 40
  d8.-2 e16 f8. cis16\> d8. c16-3\! |
  %% 41
  b8.-2\f g16-4 b8.-2 d,16-1 g8.-4 b,16-1 |
  %% 42
  d8.-3\dim g,16 b8. d,16 g8. b,16\! |
  %% 43
  d8.-4\cresc g,16 b8. d16-0 g8.-3 b16-1 |
  %% 44
  d8.-3 f16-2\! aes8.-4 aes16-4\> g8.-3 f16-2 |
  %% 45
  ees8.-1\p c'16-2\cresc bes8.-1 aes16-4 g8.-3 ees'16-4 |
  %% 46
  d8.-3 c16-2 bes8.-1 g'16-4 f8.-3 ees16-2 |
  %% 47
  d8.-1\f\< f16-3 ees8.-2 d16-1 c8.-3 bes16-2 |
  %% 48
  ees8.-4\> c16 a8.-1 ges16-4 ees8.-2 c16-2 |
  %% 49
  bes8.\mf f'16 ees8. d16 c8. bes16 |
  %% 50
  ees8.\dim c16 a8. ges16 ees8. c16 |
  %% 51
  bes8.\p a16 bes8. c16 d8.-0 ees16 |
  %% 52
  f8.\cresc cis16 d8. ees16 f8. g16 |
  %% 53
  aes8. e16 f8. g16 aes8. bes16 |
  %% 54
  c8. bes16 c8. d16 ees8. f16 |
  %% 55
  g8.\f bes,16 ees8. g,16 bes8. ees,16 |
  %% 56
  g8.\dim bes,16 ees8. g,16\! bes8. ees16 |
  %% 57
  g8.\cresc bes16 ees8. g16 bes8. g16 |
  %% 58
  ees'8.-4 d16-4 c8.\dim bes16 aes8. g16-2\! |
  %% 59
  aes8.\f d,16-4 f8. bes,16 d8. f,16 |
  %% 60
  bes8.\dim d,16 f8. bes,16\! d8. f16 |
  %% 61
  bes8. d16-1 f8. bes16\cresc d8. bes16 |
  %% 62
  f'8.-4 ees16\dim d8. c16 bes8.-2 aes16-1\! |
  %% 63
  g8.-4\f bes16-2 ees8.-4 b16-2 c8.-3 g16-2 |
  %% 64
  bes8.\> aes16 b,8. c16\! g'8.-4\> f16\! |
  %% 65
  f8.\> ees16 g,8.\! ees'16-4 d8.\> c16\! |
  %% 66
  c8.-4\> bes16-3 d,8.-0\! aes'16\> g8. f16\! |
  %% 67
  ees8. g,16 bes8. ees16 g8. bes16 |
  %% 68
  ees8. bes,16 ees8.\cresc g16 bes8. ees16 |
  %% 69
  g8. ees,16 g8. bes16 ees8. g16 |
  %% 70
  bes8.\f g,16-1 bes8.-3 ees16-2 g8.-4 bes16-2 |
  %% 71
  ees4-4\ff r r | <g,,-1 ees'-2>-. <g ees'>-. <g ees'>-. |
  \once \override Hairpin.to-barline = ##f
  <g ees'>2.~\> | <g ees'>4\! <ees g ees'> r \bar "|."
}

studyXXXIprologI = ##f
studyXXXIprologII = ##f
studyXXXI = \new Voice \relative e'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro, molto agitato." 4=123
  \key as \major

  ees16->-4\f( des c bes) c->-4( bes aes g)
  aes->-4( g f ees) f->-4( ees des c) |
  %% 2
  c'->-4( bes aes g) aes->-4( g f ees)
  f->-4( ees des c) des->-4( c bes aes) |
  %% 3
  bes^\p( a bes c des c des e) f\cresc( e f a bes a bes c) |
  %% 4
  des( c des e f e f a-1) bes( a bes c des8\!) r |
  %% 5
  des16->-4\f( c bes aes) bes->-4( aes g f)
  g->-4( f ees des) ees->-4( des c bes) |
  %% 6
  bes'->-4( aes g f) g->-4( f ees des)
  ees->-4( des c bes) c->-4( bes aes g) |
  %% 7
  aes-4\p( g aes f ees d ees c') ees( d ees c aes g aes c) |
  %% 8
  aes'\cresc( g aes f ees d ees aes) c-3( b c aes bes c-1 des ees) |
  %% 9
  f\f( e f d-2) d( cis d b-2) b( ais b aes-3) aes( g aes f) |
  %% 10
  f( e f c) c\dim( b c aes) aes( g aes f) f( e f c\!) |
  %% 11
  b( ais b d-0) f( e f aes) b( ais b d) f( e f aes) |
  %% 12
  c-3( b c aes) ees( d ees c) aes-2( g aes ees) c-3( b c aes) |
  %% 13
  g( aes bes c des e g bes) des( c des bes g e des bes) |
  %% 14
  aes( bes c des c e f aes) c( b c aes f c bes aes) |
  %% 15
  bes-2\p( g'-4) des'-3( g,-4)  bes,( g') des'( g,)
  b,-2\cresc( aes'-4) d-3( aes-4) b,( aes') d( aes) |
  %% 16
  c,\f( g' c e-0) e-0( c g c,) c( g') c-. c-. c8 r |
  %% 17
  ees16-4-\dolce( d ees g aes g aes b-2) c-3( b c aes ees d ees c) |
  %% 18
  aes( g aes f ees-3 d ees c) aes-1( g aes c ees d ees aes) |
  %% 19
  g( fis g a-0 bes a bes d) ees( d ees fis g fis g a-1) |
  %% 20
  bes( a bes c des-4 c des bes) g-4( fis g ees des-3 c-2 des bes) |
  %% 21
  c( b c aes ees d ees c) aes( g aes c ees d ees aes) |
  %% 22
  bes( a bes g ees d ees g) bes( a bes ees g fis g bes) |
  %% 23
  bes->-4( aes g f) g->-4( f ees d)
  ees->-4( d c bes) c->-4( aes-2 f-2 d-0) |
  %% 24
  ees-1\p( f g aes) g-1( aes\cresc bes c)
  bes( c d ees) des-3( c des bes\!) |
  %% 25
  ees-4-\dolce( d ees g aes g aes b-2) c-3( b c aes ees-2 d ees c) |
  %% 26
  aes-2( g aes f ees-3 d ees c) aes-1( g aes c ees d ees aes) |
  %% 27
  g( fis g a-0 bes a bes d) ees( d ees fis g fis g a-1) |
  %% 28
  bes( a bes c des-4 c des bes) g-4( fis g ees des-3 c-2 des bes) |
  %% 29
  c( b c aes ees d ees aes) c( b c ees aes g aes-1 c-3) |
  %% 30
  bes-2( a-1 bes g ees d ees bes) g-3( fis-2 g bes ees d ees g)
  %% 31
  f( g aes-1 bes) c-3( aes-1 f-3 d-1)
  aes'-4( f-3 d-1 bes-3) f'-3( d-1 bes-3 d-1) |
  %% 32
  ees( f g aes bes c des c) bes( aes g f ees d ees d) |
  %% 33
  ees->-4\f( des c bes) c->-4( bes aes g)
  aes->-4( g f ees) f->-4( ees des c) |
  %% 34
  c'->-4( bes aes g) aes->-4( g f ees)
  f->-4( ees des c) des->-4( c bes aes) |
  %% 35
  bes^\p( a bes c des c des e) f\cresc( e f a bes a bes c) |
  %% 36
  des( c des e-0 f e f a-1) bes( a bes c des8\!) r |
  %% 37
  des16->-4\f( c bes aes) bes->-4( aes g f)
  g->-4( f ees des) ees->-4( des c bes) |
  %% 38
  bes'->-4( aes g f) g->-4( f ees des)
  ees->-4( des c bes) c->-4( bes aes g) |
  %% 39
  aes-4\p( g aes f ees d ees c') ees( d ees c aes g aes c) |
  %% 40
  aes'( g aes f ees d ees aes-3) c-3\cresc( b c aes bes c-1 des ees) |
  %% 41
  f-4\f( e-3 d-4 des-2) aes-3( g-2 aes-3 f-1)
  des-3( c-2 des-3 f-1) aes-3( g-2 aes-3 des-2) |
  %% 42
  ees( d ees c) aes( g aes f) ees-2( d ees aes) c( b c aes) |
  %% 43
  des( c des bes) g( fis g ees) des-3( c des bes) g( fis g ees) |
  %% 44
  aes\p( g aes f) ees( d ees c') ees( d ees c) aes( c\cresc des ees) |
  %% 45
  f( e f g) aes( g aes-3 bes-2\!) ces( bes ces aes) f-1( e-0 f-1 d-3) |
  %% 46
  ees( d ees g) aes( g aes b-2) c( b c aes) ees( d ees c-2) |
  %% 47
  des( c des bes) g( fis g f) ees\dim( d ees des) bes( a bes g) |
  %% 48
  aes\p( g aes c ees d ees aes) c( b c aes ees\cresc d ees des) |
  %% 49
  c( b c ees aes g aes c\!) ees( d ees c aes g aes f) |
  %% 50
  ees( d ees g aes g aes b) c( b c d ees d ees g) |
  %% 51
  aes( g aes f ees d ees c) aes\dim( g aes f ees d ees c\!) |
  %% 52
  aes( g \repeat unfold 3 {bes-> g aes g} bes-> g) |
  %% 53
  aes1-> | <aes ees' c' aes'>4\ff r2. \bar "|."
}

studyXXXprologI = ##f
studyXXXprologII = ##f
studyXXX = \new Voice \relative a'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro moderato." 4=123
  \key f \major
  
  \tupletSpan 4
  \override TupletNumber.text = #tuplet-number::calc-fraction-text

  \tuplet 3/2 {
    a16\p_( bes a \repeat unfold 2 { gis-> a gis a-> bes a} gis-> a gis)} |
  %% 2
  \omit TupletNumber
  \tuplet 3/2 {a( bes a g a g f g f e f e d e d cis d cis)} |
  %% 3
  \tuplet 3/2 {
    d_( e d \repeat unfold 2 {cis-> d cis d e d} cis-> d cis)} |
  %% 4
  \tuplet 3/2 {d( e d c d c bes c bes a bes a g a g fis g fis)} |
  %% 5
  \tuplet 3/2 {
    g^( a g \repeat unfold 2 {fis-> g fis g a g} fis-> g fis)} |
  %% 6
  \tuplet 3/2 {g( a g f g f e f e d\cresc e d cis d cis b cis b)} |
  %% 7
  \tuplet 3/2 {a\f( b a cis d cis e f e a b a cis d cis d e d)} |
  %% 8
  \tuplet 3/2 {dis\dim( e dis e f e f g f fis g fis g-\rall a g gis a gis)} |
  %% 9
  \tuplet 3/2 {a\p( bes-\aTempo a \repeat unfold 2 {
    gis-> a gis a bes a} gis-> a gis)} |
  %% 10
  \tuplet 3/2 {a( bes a g a g f g f e f e d e d cis d cis)} |
  %% 11
  \tuplet 3/2 {
    d( e d \repeat unfold 2 {cis-> d cis d e d} cis-> d cis)} |
  %% 12
  \tuplet 3/2 {d( e d c d c bes c bes a bes a g a g fis g fis)} |
  %% 13
  \tuplet 3/2 {
    g^( a g \repeat unfold 2 {fis-> g fis g a g} fis-> g fis)} |
  %% 14
  \tuplet 3/2 {g^( a g fis\> g fis\! g a g f\cresc g f e f e d e d)} |
  %% 15
  \tuplet 3/2 {c\f^( d_4 c b c b c d_4 c d_0 e d e f e f g f)} |
  %% 16
  \tuplet 3/2 {g\dim( a_4 g a_0 bes a b c b c d c d e d e f e)} |
  %% 17
  \tuplet 3/2 {
    f\mf( g f \repeat unfold 2 {g-> a g f g f} g-> a g)} |
  %% 18
  \tuplet 3/2 {f\<( g f a-1 bes a c-1 d c\! f\> e d c bes-2 a g f e\!)} |
  %% 19
  \tuplet 3/2 {d_( e d cis->-2 d cis d e d cis-> d cis d e d cis-> d cis)} |
  %% 20
  \tuplet 3/2 {
    d\<( e d f g f a-1 bes a\! d-4\> c-3 bes-2 a-1 g-4 f-3 e-2 d-1 c-4\!)} |
  %% 21
  \tuplet 3/2 {
    bes-3_( c-4 bes-3 \repeat unfold 2 {a-> bes a bes c bes} a-> bes a)} |
  %% 22
  \tuplet 3/2 {bes( c bes a-> bes a bes c bes a bes a g a g fis_2 g fis)} |
  %% 23
  \tuplet 3/2 {
    g^( a g \repeat unfold 2 {fis-> g fis g a g} fis-> g fis)} |
  %% 24
  \tuplet 3/2 {g^( a g fis-> g fis g a g f g f e f e d e d)} |
  %% 25
  \tuplet 3/2 {
    c\mf^( d c \repeat unfold 2 {b-> c b c d c} b-> c b)} |
  %% 26
  \tuplet 3/2 {c\f^( d_4 c d_0 e d e f e f\dim g f g a_4 g a_0 bes a\!)} |
  %% 27
  \tuplet 3/2 {bes( c bes c d c d e d e f e f g f fis g fis)} |
  %% 28
  \tuplet 3/2 {g_( a g \repeat unfold 2 {fis-> g fis g a g} c-3-> d c)} |
  %% 29
  \tuplet 3/2 {
    f,-1\f_( g f \repeat unfold 2 {a-> bes a f g f} a-> bes a)} |
  %% 30
  \tuplet 3/2 {f_( g f c'-3 d c a bes a f'-4 e f c-1 d c a-1 bes a)} |
  %% 31
  \tuplet 3/2 {
    bes_( c bes \repeat unfold 2 {a-> bes a bes c bes} a-> bes a)} |
  %% 32
  \tuplet 3/2 {bes_( c bes g-2 a g e f e c d c d e d e-0 f e)} |
  %% 33
  \tuplet 3/2 {f_( g f \repeat unfold 2 {a-> bes a f g f} a-> bes a)} |
  %% 34
  \tuplet 3/2 {f_( g f c'-3 d c a bes a f'-4 e f c-1 d c cis d cis)} |
  %% 35
  \tuplet 3/2 {d_( e d \repeat unfold 2 {cis-> d cis d e d} c-> d c)} |
  %% 36
  \tuplet 3/2 {d( e d c d c bes-2\dim c bes a bes a g-2 a g f g f\!)} |
  %% 37
  \tuplet 3/2 {e_( f e \repeat unfold 2 {g-> a g e f e} g-> a g)} |
  %% 38
  \tuplet 3/2 {e( f e g-> a g bes\fz a g f e d c\fz d c bes a g)} |
  %% 39
  \tuplet 3/2 {a\p( c e f-> c a bes d fis g-> d b c e-0 gis a-> e-0 cis)} |
  %% 40
  \tuplet 3/2 {d-1_( f a bes-> f d e g b-2 c-> g e f a cis d-> a f)} |
  %% 41
  \tuplet 3/2 {
    g->-3_( bes-1 e-4 d-3 a-4 f-2 e-> g b c g e d-1-> f bes a e-0 c-2)} |
  %% 42
  \tuplet 3/2 {bes->_( d fis g d bes a-> c f e-> bes g f-> a cis d a f)} |
  %% 43
  \tuplet 3/2 {e->( g c bes-> f d c-> e gis a e c bes-> d g f-> d gis,)} |
  %% 44
  \tuplet 3/2 {a\f( bes a cis d cis e f e a bes a cis d cis e f e)} |
  %% 45
  \tuplet 3/2 {f( g f a bes a f g f d e d a bes a f e d)} |
  %% 46
  \tuplet 3/2 {a( bes a cis d cis e d e a bes a cis d cis a bes a)} |
  %% 47
  \tuplet 3/2 {d( e d cis d cis d e d a bes a f g f d e d)} |
  %% 48
  \tuplet 3/2 {
    a'_2( bes_3 a_2 gis a gis a bes a bes c bes a bes a gis a gis)} |
  %% 49
  \tuplet 3/2 {
    a^( bes a gis-> a gis a bes a gis-> a gis\dim a bes a gis-> a gis\!)} |
  %% 50
  \tuplet 3/2 {a-0( bes-1 a bes c bes b c b c\cresc d c cis d cis d e d\!)} |
  %% 51
  \tuplet 3/2 {dis_( e dis e-0 f e f g f fis g fis g^\rall a g gis a gis)} |
  %% 52
  \tuplet 3/2 {
    a\p_( bes^\aTempo a \repeat unfold 2 {gis-> a gis a bes a} gis-> a gis)}
  %% 53
  \tuplet 3/2 {a( bes a g a g f g f e f e d e d cis d cis)} |
  %% 54
  \tuplet 3/2 {d_( e d \repeat unfold 2 {cis-> d cis d e d} cis-> d cis)} |
  %% 55
  \tuplet 3/2 {d( e d c d c bes c bes a bes a g a g fis g fis\!)} |
  %% 56
  \tuplet 3/2 {g^( a g \repeat unfold 2 {fis-> g fis g a g} fis-> g fis)} |
  %% 57
  \tuplet 3/2 {g( a g fis-> g fis g a g f g f e f e d e d)} |
  %% 58
  \tuplet 3/2 {cis\f^( d cis b cis b a\dim b a cis d cis e f e a gis a\!)} |
  %% 59
  \tuplet 3/2 {f\f( g f e f e d e d f\dim g f a bes a\!) d\>( cis d} |
  %% 60
  \tuplet 3/2 {
    e, d e\!) d'\>( cis d f, e f\!) d'\>( cis d fis, e fis\!) d'\>( cis d} |
  %% 61
  \tuplet 3/2 {
    g, fis g\!) d'\>( cis d gis,_4 f_2 gis_2\!) d'( cis d f\fz e f d cis d)} |
  %% 62
  \tuplet 3/2 {a\<( bes a d e d f g f\! a-1 bes a d\> cis d a-3 gis-2 a\!)} |
  %% 63
  \tuplet 3/2 {f( e f d cis d a_4 gis_3 a f e f e d e d_4 cis_3 d)} |
  %% 64
  \tuplet 3/2 {a( bes a d e d e\cresc f e a bes a d e d e f e)} |
  %% 65
  \tuplet 3/2 {a\f( bes a gis a gis a bes a g\dim a g e f e cis d cis\!)} |
  %% 66
  \tuplet 3/2 {d( e d cis d cis d e d f\cresc g f a-1 bes a d cis d)} |
  %% 67
  \tuplet 3/2 {
    bes\f( a bes f-1 e f d\dim cis d bes a bes f e f d_4 cis_3 d_4)} |
  %% 68
  \tuplet 3/2 {a\mf( bes a d e d f g f a\cresc bes a d e d f g f)} |
  %% 69
  \tuplet 3/2 {a\f( bes a g a g e\dim f e cis d cis a bes a c d c\!)} |
  %% 70
  \tuplet 3/2 {d\ff( e d cis d cis d e d a bes a f g f d e d)} |
  %% 71
  \tuplet 3/2 {d'( e d cis d cis d e d bes c bes f g f d e d)} |
  %% 72
  \tuplet 3/2 {d'\pp( e d cis d cis d e d a bes a f g f d e d)} |
  %% 73
  \tuplet 3/2 {d'( e d cis d cis d e d bes c bes f g f d e d)} |
  %% 74
  \tuplet 3/2 {d'( e d cis d cis d\cresc e d a bes a f g f d e d)} |
  %% 75
  \tuplet 3/2 {d( e d f g f a bes a\f d e d f g f a-1 bes a} |
  %% 76
  d8\ff) r d,,4\fz\fermata r \bar "|."
}

studyXXIXprologI = ##f
studyXXIXprologII = ##f
studyXXIX = \new Voice \relative c' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Moderato." 4=111
  \key c \major

  c8-.\fp\< e-. g-. c-. e-.-1 g-.-3 |
  c-.-2 e,-.-1 g-.-3 c-.-2\! e-4 r |
  %% 3
  b,,-.-2\fp\< d-.-0 g-. b-. d-.-1 g-.-4 | b-. d,-. g-. b-.\! d-. r |
  %% 5
  d,,-.-0\fp\< f-. a-. d-.-1 f-.-3 a-.-1 | d-. f,-. a-. d-.-2 f-.-4\! r |
  a,,,-.\fp\< cis-. e-. a-. cis-. e-. | a-.-1 e-.-0 a-.-1 cis-.\! e-. r |
  d,,-.\> f-.\! a-. d-. f-. a-. | b,,-.\> d-.\! g-. b-. d-. b-. |
  %% 11
  c,-.\> e-.\! g-. c-. e-. g-. | a,,-.\> c-.\! f-. a-. c-. a-. |
  b,-.\> d-.\! f-. b-.-1 d-.-3 f-.-4 | gis,,-.\> b-.\! e-. gis-. b-. gis-. |
  %% 15
  a,-.\> c-.\! e-. a-. c-. e-. | f,-.\> a-.-0\! e'-.-4 dis-. a-. b-. |
  \once \override Hairpin.to-barline = ##f
  e,-.\fp\< gis-. b-. e-.-0 gis-. b-. | e4-\0\! r r |
  %% 19
  a,,,8-.\fp\< c-. e-. a-. c-. e-. | f-. a,-. d-. f-.\! a-. r |
  g,,-.\fp\< b-. d-. g-. b-. d-. | e-. g,-. c-. e-.-0\! g-. r |
  %% 23
  f,-.\> a-.\! c-. f-.\< a-.-1 c-.-3\! |
  d,,-.-0\> f'-.-3\! a-.-1 d-.-1\< f-.-3 a-.-4 |
  %% 25
  g,,,-.\> c-.\! e-.\< g-. c-. e-.-0\! | g-. d-. b-.\> g-. d-. b-.\! |
  c-.\fp\< ees-. g-. c-. ees-. g-.-3 | c-.-2 ees,-.-1 g-.-3 c-.-2\! e-.-4 r |
  %% 29
  b,,-.\fp\< d-. g-. b-. d-.-1 g-.-4 | b-. d,-. g-. b-.\! d-. r |
  %% 31
  bes,,-.\fp\< d-. g-. bes-. d-.-1 g-.-4 | bes-. d,-. g-. bes-.\! d-. r |
  d,,-.\fp\< fis-. a-. d-.-1 fis-.-3 a-.-1 | d-. fis,-. a-. d-.-2\! fis-.-4 r |
  %% 35
  g,,-1\fp\< bes-3 d g bes d\! | ees,,-1\fp\< g-3 c-2 ees-2 g-4 c-3\! |
  %% 37
  f,,-2\fp\< bes d-1 f-3 bes d\! | f,,-2\fp\< a-0 c f a-1 c-3\! |
  %% 39
  d\fp bes f d bes-1 f-2 | d bes' f d bes d''-4 |
  c-3\fp a f-3 c-4 a-2 f-2 | c-3 a'-4 f c a-1 c''-4 |
  %% 43
  b-4\fp aes-3 f d b b' | bes\fp g e cis bes bes' |
  a\fp f d a f a' | g\fp d bes g d g' |
  %% 47
  f\fp c a-4 f c f' | e-0\fp c'-3 bes-2 g-2 e c |
  %% 49
  a'\fp f c a f a'-1 | c\fp g-4 e c-4 g-1 c'-3 |
  %% 51
  b\fp g d b g d''-2 | f-4\fp d-2 b-4 g-2 f-1 f'-4 |
  %% 53
  e-3 c-1 g-2 e'-3 d-2 f,-1 | e-2 c' g e d b' |
  d\fp\> b g f d b-1 | c\< d e-0 f g gis\! |
  %% 57
  a\fp f c a-0 f a' | g\fp e c g e g' |
  bes\fp g d bes g bes' | a\fp f d a-0 f a'-1 |
  %% 61
  d-4\fp bes-2 f-3 d-1 bes-3 d'-4 | c\fp a f c a c' |
  c\fp bes g-4 e-0 f-1 a | g\> e-0\! c bes g e |
  %% 65
  f\fp a c f a c-4 | d,,-0\fp a'-2 d-\0 f-3 a d |
  cis,,-3 e-1 a-0 cis e-0 a | e,^\fp d' f a bes,\> g'\! |
  %% 69
  c,\fp a' f c a-0 f | e\> c'\! bes g e c |
  e^\fp g bes c e-0 g | f a f e-4 d c |
  %% 73
  b-1\> f'-4\! d c b a-4 | g\> d'\! b g f e |
  d\> a'-4\! f e d c | b f'-1 d-0 g,\< a b\! |
  %% 77
  c\fp\< e g c e-1 g-3 | c-2 e,-1 g-3 c-2\! e-4 r |
  %% 79
  b,,\fp\< d g b d-1 g-4 | b d, g b\! d r |
  d,,\fp\< f a d-1 f-3 a | d f, a d-2\! f-4 r |
  %% 83
  a,,,\fp\< cis e a-0 cis e-0 | a-1 e-0 a-1 cis\! e r |
  d,,\fp f a d f a | b,,\> d\! g b d b |
  %% 87
  c,\> e\! g c e g | a,,\> d\! fis a c a |
  g,\>( b d\!) g-.( b-. d-.) | d,\>( fis a\!) c-.( d-. fis-.) |
  %% 91
  a\>( g d\!) b-.( g-. d-.) | g,\<( a b) c-. d-. dis-.\! |
  e-.\fp\< c-. e-. g-. c-. e-. | g-3 e-1 g-3 c-2\! e-4 r |
  %% 95
  b,,\fp\< d g b d-1 g-4 | b d, g b\! d r |
  bes,,-2\fp\< d g bes d-1 g-4 | bes d, g bes\! d r |
  %% 99
  a,,\fp\< e' a-0 cis e-0 a-1 | cis e, a cis\! e r |
  d,,\> f\! a d f a | b,,\> d\! g b d b |
  %% 103
  c,\> e\! g c e-0 g | f,\> a\! d f a f |
  g,,\> c\! e g c e | g,,\> b\! d-0 g b d |
  %% 107
  c,\fp e g c e g-2 | c4-4 r r |
  c8-4\fp( a-3) fis-.( ees-. c-. a-.-0 | fis4-.) r r |
  \once \override Hairpin.to-barline = ##f
  g8-1\fp\<( c-4) e-.-2( g-.-2 c-.-1 e-.-3 | g4-.-4\!) r r |
  %% 113
  a,8-3\fp( g-2) d-.( b-. g-. d-. | b4-.) r r |
  c8( e) g-.\<( c-. e-. g-.\! | c4-4) r r |
  %% 117
  a,,8\fp( c)  ees-.( fis-.\cresc a-. c-. | ees4\!) r r |
  %% 119
  g,,8^\fp( c) e-.( g-. c-. e-.-0 | g4-.) r r |
  a8\ff( g) f-.( e-.-4 d-. c-. | b-. a-.-4 g-. f-. e-. d-.-4) |
  c-.\f e-. g-. c-. e,-. g-. | c-. e-. g,-. c-. e-.-0 g-. |
  %% 125
  c,-. e-. g-.-2 c-.-4 g-.-2 e-. | c-. g'-. e-. c-. g-. e-. |
  c4 r r8. <e' c'>16\ff | <e c'>4 r r8. <c e,>16 |
  \once \override Hairpin.to-barline = ##f
  <c e,>2.~\> | <c e,>4\! r r \bar "|."
}

studyXXVIIIprologI = ##f
studyXXVIIIprologII = ##f
studyXXVIII = \new Voice \relative g {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro assai." 4=123
  \key c \major

  gis16\fp( a) a-- a-- a4:16-- a16\fp( c) c-- c-- c4:16-- |
  %% 2
  c16\fp( e) e e e4:16 e16\fp( a-4) a a a4:16 |
  %% 3
  a16-0\fp( c) c c c\fp( e-4) e e e-0\fp( a) a a a-3\fp( c-4) c( a) |
  %% 4
  a\>( gis) gis( a) a( ais) ais( b\!) b4 r |
  %% 5
  dis,,16\fp( e) e e e4:16 e16\fp( gis) gis gis gis4:16 |
  %% 6
  gis16\fp( b) b b b4:16 b16\fp( d) d d d4:16 |
  %% 7
  d16-3\fp( f-4) f f f-4\fp( e-4) e e e\fp( d) d d d\fp( c) c( b) |
  %% 8
  c\>( c) c( b\!) b( a-0) a-4( gis\!) a4 r |
  %% 9
  b16\fp( c) c c c4:16 fis,16\fp( g) g g g4:16 |
  %% 10
  dis'16\fp( e) e e e4:16 b16\fp( c) c c c4:16 |
  %% 11
  e16\fp( g) g g g\fp( c-2) c c c\fp( e-4) e e e\fp( d-3) d( c-2) |
  %% 12
  c-2\>( b) b( c) c( cis) cis( d\!) d4 r |
  %% 13
  e,16-0\fp( f-1) f f f4:16 cis16\fp( d) d d d4:16 |
  %% 14
  ais'16-4\fp( b-4) b b b4:16 fis16\fp( g) g g g4:16 |
  %% 15
  g16\fp( b-2) b b b\fp( d-2) d d d\fp( f) f f f\fp( e) e( d) |
  %% 16
  d\>( c) c( d) d( dis) dis( e\!) e4 r |
  %% 17
  f16\fp( e) e e e4:16 e16\fp( b-2) b b b4:16 |
  %% 18
  d16\fp( c) c c c4:16 c16\fp( gis-2) gis gis gis4:16 |
  %% 19
  b16\fp( a) a a a\fp( f) f f f\fp( e-0) e e e-4\fp( dis) dis dis |
  %% 20
  dis( e) e e e4:16 e r |
  %% 21
  f16\fp( e) e e e\fp( bes') bes bes bes\fp( a) a a a\fp( e) e e |
  %% 22
  g\fp( fis) fis fis fis-1\fp( c'-4) c c c\fp( b-4) b-. b-. b\fp( fis) fis fis |
  %% 23
  a\fp( g) g g g\fp( dis) dis dis fis-3\fp( e) e e e-2\fp( ais,-1) ais ais |
  %% 24
  ais-1\fp( b-1) b b b4:16 b r |
  %% 25
  b16\fz( c) c c c4:16 c16\fz( g'-4) g g g\fz( c,-2) c c |
  %% 26
  c\fz( b) b b b4:16 b16\fp( f'-4) f f f\fp( d-3) d( b-1) |
  %% 27
  b\fp( a) a a c\fp( b) b b d\fp( c) c c c\fp( dis,) dis-. dis-. |
  %% 28
  dis\fp\>( e) e e e4:16 e\! r8 e32\f\downbow( dis c b |
  %% 29
  gis16\fp a) a a a4:16 a16\fp( c) c c c4:16 |
  %% 30
  c16\fp( e) e e e4:16 e16\fp( a-4) a a a4:16 |
  %% 31
  a16-0\fp( c) c c c\fp( e-4) e e e-0\fp( a) a a a-3\fp( c-4) c( a) |
  %% 32
  a( gis) gis( a) a( ais) ais( b) b4 r8 b,32\f\downbow( a-4 gis fis |
  %% 33
  dis16-1\fp e-1) e e e4:16 e16\fp( gis) gis gis gis4:16 |
  %% 34
  gis16\fp( b) b b b4:16 b16\fp( d) d d d4:16 |
  %% 35
  d16-3\fp( f-4) f f f-4\fp( e-4) e e e\fp( d) d d d\fp( c) c( b) |
  %% 36
  d( c) c( b) b( a-0) a-4( gis) a4 r8 e'32\f\downbow( d c b |
  %% 37
  d16\fp cis) cis cis cis\fp( e-4) e e e-0( g) g\>( bes\!) bes\>( a\!) a\>( g\!) |
  %% 38
  g\fp( f) f f f\fp( d) d d d\fp( bes) bes bes bes\fp( f) f f |
  %% 39
  f\fp( e) e e e\fp( a-0) a c e\fp( e,) a b e\fp( e,) gis b |
  %% 40
  bes\fp( a) a a a\fp( a'-4-\0) a a a4 r |
  %% 41
  r8 a,,16\f\downbow( c e a c e-4) a4.-4-\0 r8 |
  %% 42
  r a,,16\p\upbow( cis e a cis e-4) a2-4-\0~ |
  %% 43
  a4 r <a, e cis>^"pizz." r | <a, e' cis' a'>2 r \bar "|."
}

studyXXVIIprologI = ##f
studyXXVIIprologII = ##f
studyXXVII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegro." 4=123
  \key a \major

  \tupletSpan 4
  
  \tuplet 3/2 {cis8-.->\p b-. a-.-0 gis( a) e-. e'-. d-. cis-.} |
  %% 2
  \tuplet 3/2 {d-.-> b-. a-. gis( b) e-. gis-. b-. gis-.} |
  %% 3
  \omit TupletNumber
  \tuplet 3/2 {a-.->\cresc e-. d-. cis( e-0) a-.-1 cis-.-3 e-.-4 a,-.-1} |
  %% 4
  \tuplet 3/2 {
    gis-2\mf( b-4) e-.-\0 d-.-4 b-.-2 gis-.-4 fis-.-3 e-.-2 d-.-1} |
  %% 5
  \tuplet 3/2 {cis-.->-2\p b-. a-. gis( a) e-. e'-. dis-. cis-.} |
  %% 6
  \tuplet 3/2 {b-.-> a-. gis-. b\cresc( e-4) fis-. gis-. fis-. e-.-0} |
  %% 7
  \tuplet 3/2 {dis( b'\f) a-. fis-.\> dis-. b-. a-.-4 fis-. dis-.}
  %% 8
  \tuplet 3/2 {e->\<( gis) b-. e-.-0 gis-. b-.\!} e-4-\0 r |
  %% 9
  \tuplet 3/2 {e,-.-0\mf\> d'-. cis-. b( a-1) gis-. fis-. e-. d-.\!} |
  %% 10
  \tuplet 3/2 {cis-.-2 a'-. gis-. b->( a) e-.-0 cis-. b-. a-.} |
  %% 11
  \tuplet 3/2 {fis'->( d) a-. fis-. d-. fis-. a-. d-. fis-.} |
  %% 12
  \tuplet 3/2 {e-4( cis-.) a-. e-. cis-. e-. a-.-0 cis-. e-.-4} |
  %% 13
  \tuplet 3/2 {e,\> d''-. cis-. b( a-1) gis-. fis-. e-. d-.\!}
  %% 14
  \tuplet 3/2 {cis-.-2 a'-. gis-. b->( a) e-.-0 cis-. b-. a-.} |
  %% 15
  \tuplet 3/2 {c-.\cresc a'-. gis-. b->( a) fis-. dis-.\> c-. a-.\!} |
  %% 16
  \tuplet 3/2 {gis-. e'-. dis-. fis->( e) d-. b-. gis-. e-.} |
  %% 17
  \tuplet 3/2 {cis-. e-.( a-._4) d,-.-0\< fis-.( a-.)\!} d-. r |
  %% 18
  \tuplet 3/2 {
    dis,-._1\downbow fis-.( b-._1) e,-.-1\< gis-.( b-.)\!} e-. r |
  %% 19
  \tuplet 3/2 {eis,-.\cresc gis-.( cis-.) fis,-. a-.( cis-.)} fis\! r |
  %% 20
  \tuplet 3/2 {gis,-.->\< b-.( e-.) a,-. cis-.( e-.-0\!)}
  \once \override Hairpin.to-barline = ##f
  \once \override DynamicLineSpanner.staff-padding = #3.4
  a4~\> |
  %% 21
  \tuplet 3/2 {a8\! g-.\pp f-. \acciaccatura g f-. e-. f-. d'( c) a-.} |
  %% 22
  \tuplet 3/2 {c( bes) g-.-4 e-. d-. c-. bes'-. a-. g-.} |
  %% 23
  \tuplet 3/2 {a->( g) f-. \acciaccatura g f-. e-.-0 d-. c-. bes-. g-.} |
  %% 24
  \tuplet 3/2 {f-.-> d'( c) e,-.-> c'-. d-. e-. f-. g-.} |
  %% 25
  \tuplet 3/2 {a-.\p g-. f-. \acciaccatura g f-. e-. f-. d'( c) a-.} |
  %% 26
  \tuplet 3/2 {c( bes) g-.-4 e-. d-. c-. bes'-. a-. g-.} |
  %% 27
  \tuplet 3/2 {
    a-.\cresc g-. f-. \acciaccatura g f-. e-.-0 dis-. e-4( cis) a-.} |
  %% 28
  \tuplet 3/2 {a->-4( gis) cis-. cis->( b) e-. d-. fis,-.( gis-.)} |
  %% 29
  \tuplet 3/2 {a-.\mf e-. cis-. a-. cis-. e-. a-.-0\cresc b-. bis-.} |
  %% 30
  \tuplet 3/2 {cis-.\f gis-. eis-. cis-. eis-. gis-. cis-. dis-. eis-.} |
  %% 31
  \tuplet 3/2 {fis-. cis-. a-. fis-.\cresc a-. cis-. fis-. gis-. a-.} |
  %% 32
  \tuplet 3/2 {b-.\ff fis-. dis-. b-. dis-. fis-. b-. cis-. dis-.} |
  %% 33
  \tuplet 3/2 {e-.-\0 e,-. e-. e( d') cis-. b-.\dim a-. gis-.} |
  %% 34
  \tuplet 3/2 {fis->( dis) e-.\! e-.-0 b'-.-2 a-.-1 gis-.-4 fis-.-3 e-.-2} |
  %% 35
  \tuplet 3/2 {d_>-1( bis-1) cis-.-2 cis-. a'-. gis-. fis-. e-.-4 d-.} |
  %% 36
  \tuplet 3/2 {cis->( ais-1) b-.-1 b( gis'-4) fis-.-3 e( d) b-.-1} |
  %% 37
  \tuplet 3/2 {a-.-4\mf e-. cis-. a-. cis-. e-. a-.-0\cresc b-. bis-.} |
  %% 38
  \tuplet 3/2 {cis-.\f gis-. eis-. cis-. eis-. gis-. cis-. dis-. eis-.} |
  %% 39
  \tuplet 3/2 {fis-. cis-. a-. fis-.\cresc a-. cis-. fis-. gis-. a-.} |
  %% 40
  \tuplet 3/2 {b-.\ff fis-. dis-. b-. dis-. fis-. b-. cis-. dis-.} |
  %% 41
  \tuplet 3/2 {e-.-\0 e,-. e-. e-.( d'-.) cis-. b-.\dim a-. gis-.} |
  %% 42
  \tuplet 3/2 {fis->( dis) e-.\! e-.-0 b'-.-2 a-.-1 gis-.-4 fis-.-3 e-.-2} |
  %% 43
  \tuplet 3/2 {d_>-1( bis-1) cis-.-2 cis-. a'-. gis-. fis-. e-. d-.} |
  %% 44
  \tuplet 3/2 {
    cis->( ais-1) b-.-1 b-.( gis'-.-4) fis-.-3 e( d) b-.-3} | R2. |
  %% 46
  \tuplet 3/2 {cis8-.->-2\p b-. a-.-0 gis( a) e-. e'-. d-. cis-.} |
  %% 47
  \tuplet 3/2 {d-.-> b-. a-. gis( b) e-.-0 gis-. b-. gis-.} |
  %% 48
  \tuplet 3/2 {a-. e-. d-. cis\cresc( e) a-.-1 cis-.-3 e-.-4 a,-.-1} |
  %% 49
  \tuplet 3/2 {
    gis-2\mf( b-4) e-.-\0 d-.-4 b-.-2 gis-.-4 fis-.\dim e-. d-.} |
  %% 50
  \tuplet 3/2 {cis-.->-2\p b-. a-. gis( a) e-. e'-. dis-. cis-.} |
  %% 51
  \tuplet 3/2 {b-.-> a-. gis-. b\cresc( e) fis-. gis-. fis-. e-.} |
  %% 52
  \tuplet 3/2 {dis\f( b') a-. fis-. dis-. b-. a-. fis-. dis-.} |
  %% 53
  \tuplet 3/2 {e->( gis) b-. e-. gis-. b-.-4} e-.-4-\0 r |
  %% 54
  \tuplet 3/2 {e,-.\mf\> d'-. cis-. b( a-1) gis-. fis-. e-. d-.\!} |
  %% 55
  \tuplet 3/2 {cis-.-2 a'-. gis-. b->( a) e-.-0 cis-. b-. a-.} |
  %% 56
  \tuplet 3/2 {fis'->( d) a-. fis-. d-. fis-. a-. d-. fis-.} |
  %% 57
  \tuplet 3/2 {e->-4( cis) a-. e-. cis-. e-. a-.-0 cis-. e-.-4} |
  %% 58
  \tuplet 3/2 {e,-. d''-.\> cis-. b( a) gis-. fis-. e-. d-.\!} |
  %% 59
  \tuplet 3/2 {cis-.-2 a'-. gis-. b->( a) e cis-. b-. a-.} |
  %% 60
  \tuplet 3/2 {
    d,-.-> fis-.( b-.) e,-.->\cresc a-.( cis-.) e,-.-> gis-.( b-.)} |
  %% 61
  \tuplet 3/2 {a,-.\mf\downbow cis-. e-. a-. cis-. e-.} a-\0\f r |
  %% 62
  \once \override Slur.eccentricity = #-1.2
  \tuplet 3/2 {cis,\p\>\upbow( bis d cis a e} cis\!) r |
  %% 63
  \tuplet 3/2 {e-.\mf\downbow a-. cis-. e-.\< a-.-1 cis-.} e-4\f r |
  %% 64
  \tuplet 3/2 {e,-2\>\p\upbow( dis fis e cis-2 a} e\!) r |
  %% 65
  \tuplet 3/2 {
    a-.\mf\downbow cis-. e-. a-.-1\cresc a-. a-. a-1 cis-1 e-3} |
  %% 66
  \tuplet 3/2 {gis-4 gis gis}
  \repeat unfold 2 {
    \tuplet 3/2 {\repeat tremolo 3 {gis}}
  } |
  %% 67
  gis4-.\f r r | <e,, cis' a'>-.\ff r r | <cis e a>-. r r | R2. \bar "|."
}

studyXXVIprologI = ##f
studyXXVIprologII = ##f
studyXXVI = \new Voice \relative a' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegro." 4=123
  \key d \major

  a16-.\p b-. a-. fis-. d'-.\> e-.-4 d-. b-.\! |
  %% 2
  a-. b-. a-. fis-. d'-.\> e-.-4\! d-. b-. |
  %% 3
  a-. b-. a-. fis-. g-. a-.-0 b-. cis-. |
  %% 4
  d-.\cresc e-.-0 fis-. g-. a-.-1 b-. cis-. d-.\! |
  %% 5
  b-.\p cis-. b-. g-.-4 a-. b-. a-. fis-.-1 |
  %% 6
  g-. a-. g-. e-. fis-. g-. fis-. d-. |
  %% 7
  e-.-0 fis-. e-. cis-. d-. e-.-4 d-. b-. |
  %% 8
  cis-. d-. cis-. a-. b-.\> cis-. b-. g-.\! |
  %% 9
  \repeat percent 2 {
    a-. b-. a-. fis-. d'-.\> e-.\! d-. b-. |
  }
  %% 11
  a-. b-. a-. fis-. g-. a-.-0 b-. cis-. |
  %% 12
  d-.\cresc e-.-0 fis-. g-. a-.-1 b-. cis-. d-. |
  %% 13
  cis-.\mf d-. cis-. a-. b-. cis-. b-. gis-.-1 |
  %% 14
  a-.-1\cresc cis-. e-. cis-. a-. e-.-0 cis-.-2 a-. |
  %% 15
  cis-.\f d-. cis-. a-. b-. cis-. b-. gis-. |
  %% 16
  a-.-0 cis-. e-. cis-. a8-. r |
  %% 17
  a,16-.\mf b-. cis-. d-.-0 e-. fis-. g-. e-. |
  %% 18
  fis-. g-. a-.-0 b-. cis-. d-. e-.-0 fis-. |
  %% 19
  e-.-4 d-. cis-. d-.-1 e-. fis-. g-. e-. |
  %% 20
  fis\cresc g a b cis-1 d e fis |
  %% 21
  e\f fis e d cis\dim b-2 a g\! |
  %% 22
  fis\< e d e fis g a b |
  %% 23
  cis\f d cis b ais\dim g-2 fis e-4\! |
  %% 24
  d\< cis b cis d e-0 fis g |
  a\f b\dim a g fis e-4 d cis |
  %% 26
  b cis b a-4 g fis e d |
  cis\p e a g\cresc fis d b' a-0 |
  %% 28
  g e cis' b a-0 fis d' cis\! |
  b\fz dis e-0 fis g a ais b |
  %% 30
  a g fis e-4 dis e-0 g e |
  cis\fp bes' a g f e-4 d cis |
  d a b cis d e f e-0 |
  e-> d c bes c-> bes a gis |
  a->-0 b cis\cresc d e fis gis a\! |
  %% 35
  g\> f e-4 d c bes a-4 gis\! |
  a e'-4 cis a g\f fis g e |
  \repeat percent 2 {
    a-0\p b a fis d'\> e-4\! d b |
  }
  a b a fis g\cresc a b cis |
  %% 40
  d e fis g a-1 b cis d\! |
  b\p cis b g-4 a b a fis-1 |
  g a g e fis g fis d |
  e fis e cis d e-4 d b |
  a cis e cis a\cresc cis e fis |
  %% 45
  g\mf a g e fis g fis dis |
  e-0 g b g e b g e |
  dis-1\>( fis-3\!) b-.-2 b-. e,-1\>( g\!) b-. b-. |
  fis\>( a-0\!) d-. d-. g,\>( b\!) d-. d-. |
  gis,\>( b\!) e-. e-. a,\>( cis\!) e-. e-. |
  %% 50
  e( d) b-. gis-. a-0( cis) e-. fis |
  g\mf a g e fis g fis dis |
  e g b g e b g e |
  cis\>( e\!) a-. a-. d,\>( fis\!) a-. a-. |
  e\>( g\!) cis-. cis-. fis,\>( a\!) d-. d-. |
  %% 55
  g,\>( b\!) d-. d-. gis,\>( b\!) e-. d-. |
  d\>( cis\!) b-. a-. a'\fp( g) e-. cis-. |
  \repeat percent 2 {
    a-.\p b-. a-. fis-. d'-.\> e-. d-. b-.\! |
  }
  a-. b-. a-. fis-. g-. a-.-0 b-. cis-. |
  %% 60
  d-.\cresc e-. fis-. g-. a-.-1 b-. cis-. d-. |
  b-.\f cis-.\dim b-. a-. g-. fis-. e-. d-. |
  cis-.-2 b-. a-.\! b-. cis-. d-. e-. fis-. |
  g-.\f a-.\dim g-. fis e-.-4 d-. cis-. b-. |
  a-.-4 g-. fis-.\! g-. a-.\cresc b-. cis-. d-. |
  %% 65
  e-.\f d-. cis dis-. e-. fis g-. a-. |
  ais\>( b\!) a-. g-. fis\>( e\!) g-. e-. |
  d-. a-. b-. cis-. d-. e-. fis-. g-. |
  a\fz( g) e-.-0 cis-. a-4( g) e-. cis-. |
  d8 r <a e' cis'>\ff r |
  %% 70
  <a fis' d'> r <a' cis e> r |
  <d, a' fis'> r <d fis' d'> r |
  r4 <d a' fis'>8 r |
  \once \override Hairpin.to-barline = ##f
  <d d>2~\> | <d d>4\! r \bar "|."
}

studyXXVprologI = ##f
studyXXVprologII = ##f
studyXXV = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key f \major

  d16->\p( e) e( f) f( g) g( a-4\cresc) a-0( b) b( cis) cis( d) d( e-4) |
  %% 2
  e-0( f) f( g) g( a-1) a( b) b( cis) cis( d) d8\! r |
  %% 3
  e16-\0\f\>( bes-2) bes( g-2) g( e) e( bes'\!)
  bes\>( g) g( e) e-4( bes) bes( g'-4\!)  |
  %% 4
  g\>( e) e( bes) bes( g) g( e-1\!) e8 r r4 |
  %% 5
  cis16^>\p( d-4) d-0( e) e( f) f\cresc( g) g( a-4) a-0( b) b( cis) cis( d) |
  %% 6
  d( e-4) e-0( f) f( g) g( a) a( bes) bes( a) a8\! r |
  %% 7
  d16-4\f\>( a) a( f) f( d) d( a'-\0\!) a\>( f) f( d) d( a) a( f'-3\!) |
  %% 8
  f\>( d) d( a) a-4( f-2) f( d) d8\! r r4 |
  %% 9
  a''16\>( bes) bes( a) a( g) g( f) f( e-4) e( d) d8\! r |
  %% 10
  bes'16-2\>( c) c( bes) bes( a) a( g-4) g( f) f( e) e8\! r |
  %% 11
  cis'16-3\>( e) e( cis) cis( bes) bes( g-2) g( e-0) e-4( cis) cis8\! r |
  %% 12
  a'16-1\>( d) d( a) a( f) f( d) d( a-0) a-4( f) f8-2\! r |
  %% 13
  d''16-2\f( f) f( d) d\dim( b) b( gis-4) gis( f-3) f( d-1) d( b-3) b( gis-1\!) |
  %% 14
  a-2\cresc( cis-4) cis( e-2) e( a-1) a( cis-1) cis( e-1) e( a) a8\! r |
  %% 15
  a16-4\f( fis-4) fis( dis-2) dis\dim( c-3) c( a)  a( fis) fis( dis) dis8\! r |
  %% 16
  e'16-\0\f( c) c( a) a\dim( e) e-4( c-2) c( a) a-4( e) e8\! r |
  %% 17
  e''16\f( b) b( a-1) a( e-0) e-4\dim( b) b( a) a-4( e) e8\! r |
  %% 18
  e''16-\0\f( b-2) b( gis-2) gis\dim( e) e-4( b)
  b( gis) gis( e) e( d) d-4( b\!) |
  %% 19
  a( c) c( e) e( a-0) a\cresc( c) c( e,) e( a-0) a( c) c( e-4) |
  %% 20
  e( a,) a( c) c( e-4) e-4( a-4-\0) a8\! r r4 |
  %% 21
  bes16-4\f( g) g( e-0) e\dim( cis) cis( bes) bes( g) g( e) e8\! r |
  %% 22
  a'16\f( f) f( d) d\dim( a-0) a( f) f( d-0) d( a) a8\! r |
  %% 23
  a''16\f( gis) gis( f) f\dim( e-4) e( d) d( c) c( b) b( a) a( gis\!) |
  %% 24
  gis\cresc( a-4) a( cis) cis( e-4) e( a-4-\0) a8\! r r4 |
  %% 25
  d16-4\f( c) c( bes) bes( a) a( g) g\dim( f) f( e) e( d) d( c) |
  %% 26
  c( bes) bes( a) a( g) g( f-2) f( e) e( d) d8\! r |
  %% 27
  e16\p( g) g( bes) bes\cresc( e-4) e-0( g) g( bes,) bes( e-0) e( g) g( bes) |
  %% 28
  bes( e,) e( g) g( bes-4) bes( e-\0) e8\! r r4 |
  %% 29
  e16-\0\f( d-4) d( cis) cis( bes) bes( a) a-3( g) g\dim( f) f( e-4) e( d) |
  %% 30
  d( cis) cis( e-2) e( g,-1) g( bes-3) bes( a) a( gis) a8\! r |
  %% 31
  d,16\mf( f) f( a-0) a( d-1) d( f) f( a,-0) a( d-1) d\cresc( f) f( a-\0) |
  %% 32
  a-\0( d,-1) d( f) f( a-1) a( d) d8\f r r4 |
  %% 33
  bes,,16\mf( d) d( f) f( bes) bes\cresc( d) d( f,) f( bes) bes( d-1) d( f) |
  %% 34
  f( d) d( f) f( bes) bes( d) d8\f r r4 |
  %% 35
  gis,,,16\mf( b) b( d-0) d( f) f( b) b\cresc( f) f( b) b( d-1) d( f) |
  %% 36
  f( d) d( f) f\f( b) b( d) d8 r r4 |
  %% 37
  a,16-0\mf( d-1) d( f) f( a) a\cresc( d-1) d( f-3) f( a-4) a8\! r |
  %% 38
  a,,16-0\mf( d-1) d( e) e( a) a\cresc( cis-1) cis( e-1) e( a) a8\! r |
  %% 39
  d,,,16\ff( f) f( a) a( d-1) d( f-3) f( a) a( d) d( a) a( f) |
  %% 40
  f( d) d( a) a( f-2) f( d) d4\ff( <d c' a'>8) r |
  %% 41
  <d b' gis'>4.-> r8 <d bes' g'>4.-> r8 |
  %% 42
  <d a' e'>4\dim <a' f'>8-.( <a e'>-.) <a f'>2\p~ |
  %% 43
  << {
    \voiceOne <a f'>1 | <a f'> | } \new Voice {
      \voiceTwo d,4_"l. h. pizz." r d r | d r r2 | } >> \oneVoice
  %% 44
  <d f' d'>8\ff^"arco" d r4 \acciaccatura cis8 d4\pp\upbow r |
  %% 45
  \acciaccatura cis8 d1\pp\fermata \bar "|."
}

studyXXIVprologI = ##f
studyXXIVprologII = ##f
studyXXIV = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro assai." 4=123
  \key bes \major

  \repeat volta 2 {
    %% 1
    d16-.->^\markup{\italic "furioso"}\f c-. bes-. a-. bes-.-> a-.-0 g-. fis-.
    g-.-> d-.-0 bes-. d-.-4 g,-.\mf bes-. d-.-0 g-. |
    %% 2
    bes, d-0 g bes d,-0\cresc g bes d g, bes d g a g fis g |
    %% 3
    a->\f g fis e-0 fis-> e-0 d cis d-> a-0 fis a-4 d,\mf fis a d |
    %% 4
    fis, a d fis a,\cresc d fis a d,-1 fis a d c bes a c\! |
    bes-2\fz a-1 g-4 fis-3 g f ees d ees-2 d-1 c-4 bes-3 c bes a g |
    %% 6
    g'-4\fz f-3 ees d ees d c bes c bes aes g aes g f ees |
    c-1 ees-3 aes-2 c-4 ees,-3 aes-2 c-4 ees-2 d ees c aes g aes ees c |
    %% 8
    d-0 g-3 bes-1 d-3 g, bes d g fis a fis d c a fis d |
  }
  %% 9
  d'->\f c bes a bes-> a-0 g fis g-> d-0 bes d-4 g,\mf bes d g |
  %% 10
  bes, d-0 g bes d,\cresc g bes d g, bes d g a g fis g\! |
  %% 11
  a-> g f e-0 f-> e-0 d cis d-> a f a d,\mf f a d |
  %% 12
  f, a d f a, d\cresc f a d,-1 f a d cis d a f |
  %% 13
  d'->\f c b a b-> a g fis g d b d g,\mf b d g |
  %% 14
  g->\f f ees d   ees-> d c b   c-> g ees g   c,\mf ees g c |
  %% 15
  ees,->-1 g c ees d c b c e,-> g bes d c bes a bes |
  %% 16
  f-> bes d f ees d c bes a c ees g f ees d c |
  %% 17
  f->\f ees d c d-> c bes a bes-> f d f bes,\mf d f bes |
  %% 18
  d, f bes d f,\cresc bes d f bes, d f bes-2 c bes a bes |
  %% 19
  bes->-2\f aes g f g->-4 f ees d ees->-2 bes g bes ees,-1\mf g-3 bes ees |
  %% 20
  g, bes ees g bes, ees\cresc g bes ees,-2 g bes ees-4 d-4 c bes c |
  %% 21
  d->\f c bes a bes-> a g fis g-> d bes d g,\mf bes d g |
  %% 22
  g->\f f ees d ees-> d c b c-> g ees g c,\mf ees g c |
  %% 23
  d->\f c-2 bes a-0 bes-> a-0 g fis g-> d bes d g,\mf bes d g |
  %% 24
  d\cresc fis a d fis, a d fis a, d fis a d,-1 fis a d |
  %% 25
  d->\f c bes a bes-> a g fis g-> d bes d g,\mf bes d g |
  %% 26
  bes, d g bes d, g\cresc bes d c bes a bes a g-2 fis-1 g |
  %% 27
  a->\f g fis e fis-> e d cis d-> a fis a d,\mf fis a d |
  %% 28
  fis, a d fis a, d fis a d,-1\cresc fis a d c bes a c |
  %% 29
  d->\f c bes a bes-> a g fis g-> f ees d ees-> d c-2 bes-1 |
  %% 30
  bes'-> a g fis g-> f ees d ees-> d c bes c-> bes a g |
  %% 31
  aes\fz c ees aes g aes ees c b\fz d f b ais b f d |
  c\fz ees g c-3 b c g ees cis-2\fz e-0 g bes a bes g e |
  %% 33
  d-1\fz g-4 bes d c bes a g fis ees d c-2 bes-1 a g fis |
  %% 34
  g\ff g, bes d g g bes d g g d bes g g d bes |
  %% 35
  g4-. <g' bes bes'>-. <c aes'>-. <d, c' fis>-. |
  %% 36
  <ees bes' g'>-. <c-1 c'-4 ees-2>-. <d-2 bes'-3 d-1>-. <fis a,>-. |
  %% 37
  <g g,>-. r <g, d' bes'>-. r | <bes g'>2. r4 \bar "|."
}

studyXXIIIprologI = ##f
studyXXIIIprologII = ##f
studyXXIII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegretto." 4=123
  \key as \major

  \partial 8 aes16.-.\p\upbow( g32-.) |
  %% 1
  f16.-.( e32-.) f16.-.( g32-.) aes16.-.( g32-.) aes16.-.( f32-.) |
  %% 2
  e16.-.( d32-.) e16.-.( g32-.) c16.-.( b32-.) c16.-.( e,32-.) |
  %% 3
  f16.-.( e32-.) f16.-.( aes32-.) c16.-.\cresc( f32-.) aes16.-.( b,32-.) |
  %% 4
  c16.-.\f( b32-.) c16.-.( des32-.) c8 c16.-.\p( ees32-.) |
  %% 5
  g16.-._>( f32-.) ees16.-.( d32-.) c16.-.( b32-.) c16.-.( f32-.) |
  %% 6
  aes16.-._>( g32-.) f16.-.( ees32-.) d16.-.( cis32-.) d16.-.( ees32-.) |
  %% 7
  f16.-._>( ees32-.) d16.-.( c32-.) b16.-.( aes32-.) g16.-.( b32-.) |
  %% 8
  c16.-.\cresc( b32-.) c16.-.( des32-.) c16.-.\dim( bes32-.) aes16.-.( g32-.) |
  %% 9
  f16.-.\p( e32-.) f16.-.( g32-.) aes16.-.( g32-.) aes16.-.( f32-.) |
  %% 10
  e16.-.( d32-.) d16.-.( g32-.) c16.-.( b32-.) c16.-.( e,32-.) |
  %% 11
  f16.-.( e32-.) f16.-.( aes32-.) c16.-.\cresc( f32-.) aes16.-.( b,32-.) |
  %% 12
  c16.-.\f( b32-.) c16.-.( des32-.) c8\p c16.-.( c32-.) |
  %% 13
  des16.-.\>( c32-.\!) bes16.-.( aes32-.) g8 g16.-.( g32-.) |
  %% 14
  c16.-.\>( bes32-.\!) aes16.-.( g32-.) f8 aes16.-.( aes32-.) |
  %% 15
  g16.-.( aes32-.) bes16.-.( g32-.) f16.-.( g32-.) aes16.-.( f32-.) |
  %% 16
  e16.-.\mf( f32-.) g16.-.( e32-.) f8 ees16.-.\p( g32-.) |
  %% 17
  aes16.-.( g32-.) aes16.-.( bes32-.) c16.-.( des32-.) ees16.-.( aes,32-.) |
  %% 18
  g16.-.( fis32-.) g16.-.( bes32-.) ees16.-.-2\cresc( g32-.) bes16.-.( c32-.) |
  %% 19
  des16.-.\f( a32-.) bes16.-.\dim( fis32-.) g16.-.( d32-.) ees16.-.( des32-.) |
  %% 20
  c16.-.-2( b32-.) c16.-.( des32-.) c16.-.( ees,32-.) f16.-.( g32-.) |
  %% 21
  aes16.-.\p( g32-.) aes16.-.( b32-.) c16.-.( d32-.) ees16.-.( aes,32-.) |
  %% 22
  g16. fis32 g16.\cresc bes32 ees16.-2 d32 ees16. g32 |
  %% 23
  bes16.-2\f b32 c16. g32-2 aes16. e32-2 f16.\dim d32 |
  %% 24
  ees16. d32 ees16. f32\! ees8\< ees16.-2( g32-.-4) |
  %% 25
  bes16.\> a32 bes16. aes32\! g16. f32 ees16. des32 |
  %% 26
  c16.-2 b32 c16. des32 c8 ees16.-.-2( aes32-.-1) |
  %% 27
  c16.\> b32 c16. bes32\! aes16. g32 f16. ees32 |
  %% 28
  des16. c32-2 des16. ees32 des8 ees16.-2( g32-.) |
  %% 29
  bes16.-2\> ees,32 a16. ees32\! bes'8  ees,16. aes32 |
  %% 30
  c16.-3 ees,32 b'16.-3 ees,32 c'8-3 c16.-.( c32-.) |
  %% 31
  c16.\> bes32 aes16. g32 f16. e32 f16. aes32\! |
  %% 32
  c16. fis,32-1  g16.-2 e32-0 c16.\p bes32 aes16. g32 |
  %% 33
  f16. e32 f16. g32 aes16. g32 aes16. f32 |
  %% 34
  e16. d32 e16. g32 c16. b32 c16. e,32 |
  %% 35
  f16. e32 f16. aes32 c16.\cresc f32 aes16. b,32 |
  %% 36
  c16.\f b32 c16. des32 c8 c16.\p ees32 |
  %% 37
  g16.-> f32 ees16. d32 c16. b32 c16. f32 |
  %% 38
  aes16.-> g32 f16. ees32 d16. cis32 d16. ees32 |
  %% 39
  f16.-> ees32 d16. c32 b16. aes32 g16. b32 |
  %% 40
  c16.\< b32 c16. des32\! c16.\> bes32 aes16. g32 |
  %% 41
  f16.\p e32 f16. g32 aes16. g32 aes16. f32 |
  %% 42
  e16. d32 e16. g32 c16. b32 c16. e,32 |
  %% 43
  f16. e32 f16. aes32 c16.\cresc f32 aes16. b,32 |
  %% 44
  c16.\f b32 c16. des32 c8 c16.-.( c32-.) |
  %% 45
  des16.\> c32 bes16. aes32\! g8 g16.-.( g32-.) |
  %% 46
  c16.\> bes32 aes16. g32\! f8 aes16.-.( aes32-.) |
  %% 47
  g16. aes32 bes16. g32 f16. g32 aes16. f32 |
  %% 48
  e16.\mf f32 g16. f32 f8 f'16.-.\<( g32-.) |
  %% 49
  aes16.\> f32 d16. b32\! c8 f,16.-.\<( g32-.) |
  %% 50
  aes16.\> f32 d16. b32\! c8 f16.-.( aes32-.) |
  %% 51
  c16. b32 c16. des32 c16. bes32 g16. aes32 |
  %% 52
  f16. c32 g'16. c,32 aes'8 aes'16.-.\<( bes32-.-2) |
  %% 53
  c16.-3\> aes32\! f16. d32 ees8 aes,16.-.-2( bes32-.) |
  %% 54
  c16.\> aes32 f16.-4 d32\! ees8 aes16.-.-2( bes32-.) |
  %% 55
  c16. aes32 c16. f32 ees16. des32 bes16. c32 |
  %% 56
  aes16. ees32-1 bes'16. ees,32 c'8 c16.-.( c32-.) |
  %% 57
  f16.\> c32 g'16. c,32\! aes'8 aes,16.-.-2( aes32-.) |
  %% 58
  des16.\> aes32 ees'16. aes,32\! f'8 f,16.-.-2( f32-.) |
  %% 59
  bes16.\> f32 c'16. f,32\! des'8 bes16.-.( g32-.) |
  %% 60
  c16._\rall c32 aes16. f32 c8 \afterGrace e\trill( {d16 e)} \bar "||"
  %% 61
  f16.\mf^\markup{\bold "Più mosso."} e32 f16. g32 aes16. g32 aes16. f32 |
  %% 62
  e16. d32 e16. g32 c16. b32 c16. e,32 |
  %% 63
  f16. e32 f16. aes32 c16. f32\cresc aes16. b,32 |
  %% 64
  c16.\f b32 c16. des32 c8 c16.-.\p( c32-.) |
  %% 65
  des16.\> c32 bes16. aes32\! g8 g16.-.( g32-.) |
  %% 66
  c16.\> bes32 aes16. g32\! f8 aes16.-.( aes32-.) |
  %% 67
  g8 r <bes e-0>\f\upbow r | <aes c f>4.\downbow r8 |
  %% 69
  f'16-.\ff\downbow f,-. r8 r4 | <f aes,>2\pp\downbow\fermata \bar "|."
}

studyXXIIprologI = ##f
studyXXIIprologII = ##f
studyXXII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro assai." 4=123
  \key e \major

  e16\f\>( dis \repeat unfold 6 {e dis} e dis\!) |
  %% 2
  \repeat tremolo 6 {cis\>( bis} cis bis cis b\!) |
  %% 3
  \repeat tremolo 4 {a\>( gis} \repeat tremolo 4 {a gis\!)} |
  %% 4
  \repeat tremolo 4 {fis\>( eis} fis8\!) r r4 |
  %% 5
  \repeat tremolo 6 {fis'16-3\>( eis} fis eis fis e\!) |
  %% 6
  \repeat tremolo 6 {dis-3\>( cisis} dis cisis dis cis\!) |
  %% 7
  \repeat tremolo 6 {b-3\>( ais} b ais b a\!) |
  %% 8
  \repeat tremolo 4 {gis-3\>( fisis} gis8\!) r r4 |
  %% 9
  \repeat tremolo 6 {gis'16-2\>( fisis} gis fisis gis fis\!) |
  %% 10
  \repeat tremolo 4 {e-4\>( dis} \repeat tremolo 4 {e dis\!)} |
  %% 11
  \repeat tremolo 6 {cis\>( bis} cis bis cis b\!) |
  %% 12
  \repeat tremolo 4 {a-4\>( gis} a8\!) r r4 |
  %% 13
  \repeat tremolo 6 {dis16-3\>( cisis} dis cisis dis cis\!) |
  %% 14
  \repeat tremolo 6 {b-3\>( ais} b ais b gis\!) |
  %% 15
  \repeat tremolo 4 {e'-2\>( dis} \repeat tremolo 4 {e dis\!)} |
  %% 16
  \repeat tremolo 6 {cis-2\>( bis} cis bis cis a\!) |
  %% 17
  \repeat tremolo 6 {fis'16-3\>( eis} fis eis fis e\!) |
  %% 18
  \repeat tremolo 6 {dis-3\>( cisis} dis cisis dis b\!) |
  %% 19
  \repeat tremolo 6 {gis'16-2\>( fisis} gis fisis gis fis\!) |
  %% 20
  \repeat tremolo 6 {eis-4\>( disis} eis disis eis cis\!) |
  %% 21
  \repeat tremolo 6 {fis-3\>( eis} fis eis fis e\!) |
  %% 22
  \repeat tremolo 6 {dis-3\>( cisis} dis cisis dis b\!) |
  %% 23
  \repeat tremolo 4 {e-4\>( dis} \repeat tremolo 4 {e dis\!)} |
  %% 24
  \repeat tremolo 6 {cis-2\>( bis-1} cis-2 bis-1 cis-2 ais-4\!) |
  %% 25
  \repeat tremolo 6 {dis-3\>( cisis-2} dis cisis dis-3 cis-2\!) |
  %% 26
  \repeat tremolo 6 {bis-2\>( aisis-1} bis aisis bis gis-4\!) |
  %% 27
  \repeat tremolo 6 {cis-2\>( bis-1} cis bis cis dis\!) |
  %% 28
  \repeat tremolo 6 {e\f\>( dis} e dis e fis\!) |
  %% 29
  \repeat tremolo 4 {gis\ff\>( fisis}
  \repeat tremolo 4 {gis fisis\!)} |
  %% 30
  gis2 r |
  %% 31
  \repeat tremolo 6 {cis,16\p\>( bis} cis bis cis gis\!) |
  %% 32
  \repeat tremolo 6 {e'\>( dis} e dis e cis\!) |
  %% 33
  \repeat tremolo 6 {dis\>( cisis} dis cisis dis bis\!) |
  %% 34
  \repeat tremolo 6 {fis'16-3\mf\>( eis} fis eis fis dis\!) |
  %% 35
  \repeat tremolo 4 {e\>( dis} \repeat tremolo 4 {e dis\!)} |
  %% 36
  \repeat tremolo 6 {cis-2\>( bis} cis bis cis b\!) |
  %% 37
  \repeat tremolo 4 {a-4\f\>( gis} \repeat tremolo 4 {a gis\!)} |
  %% 38
  \repeat tremolo 4 {fis-2\>( eis} fis8\!) r r4 |
  %% 39
  \repeat tremolo 6 {fis'16-3\>( eis} fis eis fis e\!) |
  %% 40
  \repeat tremolo 6 {dis-3\>( cisis} d cisis d b\!) |
  %% 41
  \repeat tremolo 6 {gis'16-2\>( fisis} gis fisis gis fis\!) |
  %% 42
  cis16\>( bis cis bis cis bis cis b\! a\> gis a gis a gis a fis\!) |
  %% 43
  b-1\>( ais-1 b-2 ais-1 \repeat tremolo 2 {b ais\!}
  b-2\< ais-1 b-1 cis-2 dis-3 e-0 fis gis\!) |
  %% 44
  a\>( gis b a gis a fis dis b cis a-4 fis dis fis-2 a-4 dis,-1 |
  %% 45
  e\p) e\cresc( fis gis a-0 b cis dis e-4) gis,( a-0 b cis dis e-0 fis |
  %% 46
  gis) b,( cis dis e-0 fis gis a b) e,( fis gis a-1 b cis dis |
  %% 47
  e4.-4-\0\ff) b8-.-2\dim( gis-. e-. b-. gis-. |
  %% 48
  e4\p) r <e b' gis'>^"pizz." r | <gis,-1 e'-2 b'-2 e-0>2 r \bar "|."
}

studyXXIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c''' {
    \time 4/4
    \key ees \major
    
    bes2~ bes16 g( aes) bes-. bes-. bes( aes) g-. |
    aes2~ aes16 f( g) aes-. aes-. aes( g) f-. |
    g-. ees( f) g-. g-. g( f) ees-. ees-. ees( d) c-. c-. c( bes) a \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXXIprologII = ##f
studyXXI = \new Voice \relative c''' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key es \major

  bes2~\fz\> bes16\! g( aes bes) bes-. bes( aes g) |
  %% 2
  aes2~\> aes16\! f( g aes) aes-. aes( g f) |
  %% 3
  g-. ees( f g) g-. g( f ees) ees-. ees( d c) c-. c( bes a) |
  %% 4
  bes-. a( bes c) d-. bes( c d) ees-.\cresc c( d-1 ees) f-. d( ees f\!) |
  %% 5
  g2~\> g16\! ees( f g) g-. g( f ees) |
  %% 6
  f2~\> f16\! d( ees f) f-. f( ees d) |
  %% 7
  ees-. c-2( d ees) ees-.\dim ees( d c) c-. c( bes aes) aes-. aes( g fis) |
  %% 8
  g-.\p g( fis g) g,-. g'( fis g) bes-. bes( a bes) des-. des( c bes) |
  %% 9
  aes-. aes( g aes) f-. f-( e f) aes-.-2 aes( g aes) ces-. ces( bes aes) |
  %% 10
  ges-3 ges( f-2 ges-3) ees-. ees( d ees)
  ees'-.\cresc ees( d ees) des-. des( c des) |
  %% 11
  ces-. ces( bes ces) bes-. bes( a bes)
  a-.\f a( bes a) ges'-. ges( f ees) |
  %% 12
  d-. bes\p( c d) ees-. c( d ees) f-. d( ees f) g-. ees( f g) |
  %% 13
  \override DynamicLineSpanner.staff-padding = #2
  aes2~\f\> aes16\! e\<( f g) aes-. e( f g\!) |
  \override DynamicLineSpanner.staff-padding = #0
  %% 14
  aes2~\> aes16\! e( f g) aes-.\< e( f g\!) |
  %% 15
  aes-. aes( bes aes) g-.\dim g( aes g) f-. f( g f) ees-.-2 ees( f ees) |
  %% 16
  d-. d( ees d) c-.-2 c( d c) bes-. bes( c bes) aes-.-2 aes( bes aes\!) |
  %% 17
  g-.-3 g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 18
  g'-. g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 19
  d'-. d( ees f) f-. f( g aes) g-. g( f ees) ees-. ees( d ees) |
  %% 20
  ees'-. ees( d c) c-.\cresc c( bes a) a-. a( bes c) bes-. bes'-2( a bes\!) |
  %% 21
  g-.-4 g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 22
  g'-. g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 23
  d'-. d( ees f) f-.-1 f( g aes) g-. g( f ees) ees-. ees( d c) |
  %% 24
  ees'-.-4 ees( d-4 c-3) c-.\cresc c( bes a)
  a-. a( bes c\!) bes-. bes,-1( a bes) |
  %% 25
  aes'-.\mf aes( g f) e-. e( f g) f-. f( g f) d-. d( e d) |
  %% 26
  bes'-. bes( aes g) fis-. fis( g aes) g-. g( aes g) bes,-. bes( c bes) |
  %% 27
  c'-._>-3 c( bes aes) aes-.-3_> aes( g f) bes-._> bes( aes g) g-._> g( f ees) |
  %% 28
  ees-._> ees( d c) c-._> c( bes a) a-.-> a( bes c) bes-. d( f g) |
  %% 29
  aes-.\p aes( g f) e-. e( f g) f-. f( g f) d-.\cresc d( ees d) |
  %% 30
  bes'-. bes( aes g) fis-. fis( g aes) g-. g( aes g\!) bes,-. bes( c bes) |
  %% 31
  c'-._>-3 c( bes aes) aes-.-3_> aes( g f) bes-._> bes( aes g) g-._> g( f ees) |
  %% 32
  ees-.\f ees( d c) fis-. ees( d c) b-. d( cis d) g-. b( ais\p b) |
  %% 33
  d,-. b'( ais b) c,-. a'( gis a) b,-. d( cis d) g-. b( ais b) |
  %% 34
  d,-. b'\pp( ais b) c,-. a'( gis a) b,-. d( cis d) g-. b( ais b) |
  %% 35
  dis,-.\cresc b'( ais b) e,-.-0 g-2( fis g) ais,-.-1\f e'-0( fis-1 e-0)
  dis-.-3 b-1( c b) |
  %% 36
  a'-. b,( c b) g'-. b,( c b) e-. c( d c) b-. b( c b) |
  %% 37
  b'2~\fz\> b16\! g( a b) b-. b( a g) |
  %% 38
  a2~\fz\> a16\! fis( g a) a-. a( g fis) |
  %% 39
  g-. e( fis g) g-. g( fis e) e-. e( d c) c-. c( b-1 ais-1) |
  %% 40
  b-.-2 ais-1( b-1 cis-2) dis-.\cresc b( cis dis)
  e-. cis( dis-1 e) fis-. dis( e fis\!) |
  %% 41
  g2-4~\fz\> g16\! e( f g) g-. g( f e) |
  %% 42
  f2~\fz\> f16\! d( e f) f-. f( e d) |
  %% 43
  e-.-2 c-2( d e) e-. e( d c) c-.\dim c( b a-0) a-.-4 a( g fis\!) |
  %% 44
  g-. g( fis g) g,-.^\cresc g( aes g) b-. b( c b) d-._0 d( ees d\!) |
  %% 45
  f-. f\p( g aes) d,-. d( ees f) bes,-. bes( c-3 d-4)
  ees-.-1 ees\cresc( f-2 g-1\!) |
  %% 46
  aes-.-2 aes( bes c) f,-.-2\p f( g aes) d,-. d( ees f)
  g-.\cresc g( aes bes\!) |
  %% 47
  c-. c( d ees) aes,-.-2 aes( bes c) f,-.-2\cresc f( g aes)
  d,-. d( ees f\!) |
  %% 48
  bes,-. bes( d f) bes-. a( bes c) d-. cis\cresc( d ees) f-. e( f g\!) |
  %% 49
  \repeat percent 2 {
    aes2~\fz\> aes16\! e( f g) aes-.\< e( f g\!) |
  }
  %% 51
  aes-. aes( bes aes) g-. g( aes g\dim) f-. f( g f) ees-.-2 ees( f ees) |
  %% 52
  d-. d( ees d) c-.-2 c( d c) bes-. bes( c bes) aes-.-2 aes( bes aes) |
  %% 53
  g-.-3\p g( f ees) ees-. ees( d-4 c) bes-. bes( c bes) g-. g( aes g) |
  %% 54
  g'-. g( f ees) ees-. ees( d-4 c) bes-. bes( c bes) g-. g( aes g) |
  %% 55
  d'-. d( ees f) f-. f( g aes) g-. g( f ees) ees-. ees( d ees) |
  %% 56
  ees'-. ees( d c) c-.\cresc c( bes a) a-. a( bes c) bes-. bes'-2( a bes\!) |
  %% 57
  g-.-4\p g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 58
  g'-. g( f ees) ees-. ees( d c) bes-. bes( c bes) g-. g( aes g) |
  %% 59
  d'-. d( ees f) f-. f( g aes) g-. g( f ees) ees-. ees( d c) |
  %% 60
  ees'-.-4\cresc ees( d-4 c-3) c-. c( bes a)
  a-. a( bes c) bes-. bes-1( a bes\!) |
  %% 61
  bes2~\fz\> bes16\! g-2( aes bes) bes-. bes( aes g) |
  %% 62
  aes2~\> aes16\! f( g aes) aes-. aes( g f) |
  %% 63
  g-. ees( f g) g-.\dim g( f ees) ees-. ees( d c) c-. c( bes a\!) |
  %% 64
  bes-. a( bes c) d-. bes( c d) ees-. c\cresc( d-1 ees) f-. d( ees f\!) |
  %% 65
  g2~\> g16\! ees( f g) g-. g( f ees) |
  %% 66
  f2~\> f16\! d( ees f) f-. f( ees d) |
  %% 67
  ees-. c-2( d ees) ees-. ees( d c) c-. c( bes aes) aes-. aes( g fis) |
  %% 68
  g-. g( fis g) g,-. g'( fis g) bes-. bes( a bes) des-. des( c bes) |
  %% 69
  aes-. aes( g aes) f-. f-( e f) aes-.-2 aes( g aes) ces-. ces( bes aes) |
  %% 70
  ges-3 ges( f ges) ees-. ees( d ees)
  ees'-.\cresc ees( d ees) des-. des( c des) |
  %% 71
  ces-. ces( bes ces) bes-. bes( a bes)
  a-.\f a( bes a) ges'-. ges( f ees) |
  %% 72
  d-. bes\p( c d) ees-.\cresc c( d ees) f-. d( ees f) g-. ees( f g) |
  %% 73
  \override DynamicLineSpanner.staff-padding = #2
  aes2~\f\> aes16\! e\<( f g) aes-. e( f g\!) |
  \override DynamicLineSpanner.staff-padding = #0
  %% 74
  aes2~\> aes16\! e( f g) aes-.\< e( f g\!) |
  %% 75
  aes-. aes( bes aes) g-. g( aes\dim g) f-. f( g f) ees-.-2 ees( f ees) |
  %% 76
  d-. d( ees d) c-.-2 c( d c) bes-. bes( c bes) aes-.-2 aes( bes aes\!) |
  %% 77
  g-.-3 g( fis g) bes-.\cresc bes( a bes) ees-. ees( d ees) g-. g( fis g) |
  %% 78
  g-.\f g( fis g) f-.\dim f( e f) ees-. ees( d ees) c-. c( b c\!) |
  %% 79
  c-.\fz c( b c) bes-.\dim bes( a bes) g-. g( fis g) ees-. ees( d ees\!) |
  %% 80
  c'-.-> c( b c) bes-.\dim bes( a bes) aes-. aes( g aes) f-. f( e f\!) |
  %% 81
  ees-.\f ees( d ees) g-. g( fis g) bes-. bes( a bes) d-.\cresc d( cis d) |
  %% 82
  ees-. ees( d ees) g-. g( fis g) bes-. bes( a bes) d,-. d( cis d) |
  %% 83
  ees-.\ff g( f ees) d-. bes( c d) ees-. bes( g ees) d-. f( aes d,) |
  %% 84
  ees-. g( f ees) d-. f( bes d-1) ees-.-2 g( f ees) bes'-. d( c bes) |
  %% 85
  ees4-.\ff <d,, bes' f'>-. <ees bes' g'>-. <d bes' bes'>-. |
  %% 86
  <ees bes' g'>-. <bes aes' d>-. <bes g' ees'>-. <bes d bes'>-. |
  %% 87
  <bes g'> r <bes f'>^"pizz."\pp r |
  %% 88
  <ees-3 g-1> r <bes-2 f'> r8. <g ees'>16^"arco"\ff |
  %% 89
  \once \override Hairpin.to-barline = ##f
  <g ees'>1~\> | <g ees'>4\! r2. \bar "|."
}

studyXXprologI = ##f
studyXXprologII = ##f
studyXX = \new Voice \relative g' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegretto." 4=123
  \key g \major

  <g b>8-.^"(near the bow's nut)"\p fis-. <g b>-. d-. | <a' c> b <fis a> d |
  %% 3
  <b'-3 d-1> g'-4 <c,-4 e-2> a-0 | <d,-0 b'-1> d' <fis, a> c' |
  %% 5
  <g b> fis <g b> d | <g cis> e'-0\cresc <cis a'> g' |
  %% 7
  <d fis>\f a\dim <g e'> cis |
  %% 8
  <fis, d'> a_0^"l. h. pizz." d,-0-"arco" c' |
  %% 9
  <g b>\p fis <g b> d | <a' c> b <fis a> d |
  %% 11
  <b'-3 d-1> g'-4 <c,-4 e-2> a-0 | <d,-0 b'-1> d' <fis, a> c' |
  %% 13
  <g b>\cresc fis <g b> d' | <ais cis>\f fis' <d fis,> b |
  %% 15
  <cis e,>\dim e <d fis,> cis | <b d,>-. <fis>-. b,-. d' |
  %% 17
  <a c>\mf b <c d,> a-0 | <b g> d <g b,>\cresc b |
  %% 19
  <b c,> a <a cis,> g\! | <g d> fis a d,\p |
  %% 21
  <c a> b <c d,> a | <b g> d <g b,>\cresc fis |
  %% 23
  <fis d>^\mf e\dim <d e,> c | <b d,>\cresc d <a fis> ais\! |
  %% 25
  <g b>\p fis <g b> d | <a' c> b <fis a> d |
  %% 27
  <b'-3 d-1> g'-4 <e-2 c-4> a,-0 | <b d,> d <a fis> c |
  %% 29
  <g b>\cresc fis <g b> <f d'> | <e c'>\f b' a ais |
  %% 31
  b\dim g <fis a> d | <g b,>\p^"l. h. pizz." d-0 g,-0 r |
  %% 33
  <g' b e>4\f^"arco" <dis b' fis'> | <e b' g'>8-. fis'-. e-. e'-. |
  %% 35
  d-.\dim c-. b-. a-.-3\! | <g b,>4\>( <fis b,>8\!) r |
  %% 37
  <g b, e,>4\f <gis d> | <a c,>8 b <c-4 a,> a-3 |
  %% 39
  <g b,>\dim b <fis b,> b\! | <ais-3 cis,-2>4\f\>( <a-3 dis,-4>\!) |
  %% 41
  <a-3 e-4>8\p( g) r <e g,>\upbow | r <f-3 a,-2>\upbow r <dis-1 b-3>\upbow |
  %% 43
  e\downbow r <b, fis' b>^"r. h. pizz." r |
  %% 44
  <e g,>4 r8 e'_2^"arco" |
  %% 45
  <e gis,>8\mf( f e\> b-1\!) | <d e,>->( c) c-. b-. |
  %% 47
  b\>( a\!) b-. g-. | <d b'>4\f\>( <d a'>8\!) r |
  %% 49
  <g, d' b' g'>4->\f <d' fis' a>-> | <g' b>8 a-. g-. <fis d'>-. |
  %% 51
  <e d'>\>( c'\!) b-. a-3 | <g b,>4\f\>( <fis a,>8\!) r |
  %% 53
  <g b, g>4-> <gis d e,>-> | <a c,>8 b <c-4 a,> a-3 |
  %% 55
  <g b,>\dim b <fis b,> b\! | <ais-3 cis,-2>4\f\>( <a-3 dis,-4>\!) |
  %% 57
  <a e>8\dim( gis) r <g e>\upbow | r <f a,>\p\upbow r <e ais,>\upbow\cresc |
  %% 59
  <g b,>\downbow r <fis b,> r | <e ais, g cis,>4\f r8 e\p |
  %% 61
  e-.( b-.) b'4-2~\mf( | b8 c4->\f dis,8) |
  %% 63
  <e gis,>\mf\>( f e b-1\!) | <d e,>\>( c\!) c-. b-. |
  %% 65
  b\>( a\!) b-. a-. | <b d,>4\>( <a d,>8\!) r |
  %% 67
  <g, d' b' g'>4->\f <d' fis' a>-> | b''8-. a-. g-. <fis d'>-. |
  %% 69
  <e d'>( cis') b-.( cis-.-2) | e4-4\>( d8) d,,\p |
  %% 71
  <g b> fis <g b> d | <a' c> b <fis a> d |
  %% 73
  <b'-3 d-1> g' <e-2 c-4> a,-0 | <b d,> d <a fis> c |
  %% 75
  <g b> fis\cresc <g b> d' | <c e,> b-. a-.( ais-.) |
  %% 77
  <b d,>\f( g') \repeat unfold 2 {<a, d,>16( <a g'>)} |
  %% 78
  <d, c' a'>4\>( <b' g'>8\!) d,-0-"l. h. pizz." |
  %% 79
  g,-0 <d'' b'>^"arco"[( <b g'>]) d,-0^"pizz."\dim |
  %% 80
  g,-0 <d'' b'>^"arco"[( <b g'>]) d,_0^"pizz."\! |
  %% 81
  << {
    \voiceOne s8 <g b>-"arco"\downbow s <d b'>\downbow |
    s <b g'>\downbow s <b d>\upbow |
    <d b'>2~^"pizz." | <d b'> | <d b'>
  } \new Voice {
    \voiceTwo \repeat unfold 4 {g,8-0 s} | g r4. |
    g8 r g r | g r4.
  }
   >> \oneVoice <g d' b' g'>8^"arco"\ff r4. \bar "|."
}

studyXIXprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c'' {
    \time 4/4
    \key d \major
    
    \mark \default
    b16-. b-. ais-. ais-. b-. b-. cis-. cis-.
    e-. e-. d-. d-. cis-. cis-. b-. b-. \bar "||"
    \mark \default
    b16-. b-.( ais-.) ais-.( b-.) b-.( cis-.) cis-.(
    e-.) e-.( d-.) d-.( cis-.) cis-.( b-.) s \bar "||"
    \mark \default
    b16-.(
    _\markup { Decided, and later with a springing bow. }
    b-.) ais-.( ais-.) b-.( b-.) cis-.( cis-.)
    e-.( e-.) d-.( d-.) cis-.( cis-.) b-.( b-.) \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXIXprologII = ##f
studyXIX = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key d \major

  b8:16-.-1\mf ais:-.-1 b:-.-1 cis:-. e: d: cis: b: |
  %% 2
  ais: cis: e:-0 g: fis: e:-4 d: cis: |
  b: ais:-1 b:-1 a: g:\dim fis: e: g:\! |
  fis: d: cis: b: ais: cis: fis: ais:-4 |
  %% 5
  b:-1\mf ais:-1 b:-1 cis: e: d: cis: b: |
  ais:-1 cis:-2 e:-0 g: fis: e:-4 d: cis: |
  b:\cresc d: fis: b: g: e:-4 b: g: |
  a:\f d: fis: a: g: e:-4 cis: a:-0 |
  d:-> cis: d:\p e:-0 g: fis: e: d: |
  %% 10
  e:->-4 dis:\p e:-0 fis: a: g: fis: e: |
  fis:-> e:\p fis: g: b: a: g: fis: |
  g:\cresc fis: g: a:-1 b: c: d: b: |
  a:\f d: fis,:-3 a:-1 d,:-1 fis:-3 a,:-0 a':-3 |
  g: b: e,: g: cis,:-3 e:-4 a,: cis: |
  %% 15
  d: fis: a,:\dim d: fis,: b: a:-0 fis:\! |
  d:-4 cis: d:-0\cresc e: eis: fis: gis: ais: |
  b:\mf d: cis: b: ais:-1 cis:-3 fis:-2 ais,: |
  a:-0 c:-2 b:-1 a:-0 gis:-1 b:-3 e:-2 gis,:-1 |
  g:-1 bes:-3 a:-2 g:-1 fis:-2 a:-0 d:-3 fis,: |
  %% 20
  g: cis: gis: b: ais:-4 fis:-2 e: cis: |
  b:\p ais: b: cis: e: d:-4 cis: b: |
  ais: cis: e: g: fis: e: d: cis: |
  b: d: fis: b: e,:\cresc g: b: e: |
  fis,: b: d: b: ais:-1\dim cis:-2 ais:-1 fis:-2 |
  %% 25
  b:-1\mf ais:-1 b:-1 cis: e:-4 d: cis: b: |
  ais: cis: e:-0 g: fis: e:-4 d: cis: |
  b: d: fis: b: g:\f e:-0 c: e: |
  g,: c: e,: g: c,: e: g: c: |
  b: fis: d': b: fis': d: cis: b: |
  %% 30
  ais:-4\dim g: fis: eis: fis: e: d:-4 cis:
  \mark \markup { \musicglyph #"scripts.coda" } |
  %% 31
  b:\p b: cis:\cresc d:-0 e: fis: gis: ais:-4 |
  b: b: cis: d: e:-0\f fis: g: e:-4 |
  d: b: fis':-3 d:-1 b':-2 fis:-3 d':-4 b:-2 |
  ais:-1 e':-4 cis:-3 ais:-1 fis:-1 g: gis: ais: |
  b:\ff ais: b: eis,:-1 fis:-1 cis: d: ais:-1 |
  b:-1 cis: d: ais:-1 b:-1 cis: d: ais:-1 |
  %% 37
  b16 b b b \repeat tremolo 4 {b16}
  \repeat tremolo 4 {fis16} \repeat tremolo 4 {d'16} |
  %% 38
  \repeat unfold 2 {\repeat tremolo 4 {b16}}
  \repeat tremolo 4 {fis16} \repeat tremolo 4 {d16} |
  %% 39
  \repeat tremolo 16 {b16} |
  %% 40
  b4 r <b fis' d' b'>\f r \bar "|."
  %% 41
  \break \mark \markup { \musicglyph #"scripts.coda" }
  b16\p b8 b16( cis) cis( d) d( e\cresc) e( fis) fis( gis) gis( ais) ais( |
  %% 42
  b) b8 b16( cis) cis( d) d( e\f) e( fis) fis( g) g( e) e( |
  d) d( b) b( fis'-3) fis( d) d( b') b( fis) fis( d') d( b) b( |
  %% 44
  ais) ais( e') e( cis) cis( ais) ais( fis) fis( g) g( gis) gis( ais) ais( |
  b\ff) b( ais) ais( b) b( eis,-1) eis( fis-1) fis( cis) cis( d) d( ais-1) ais( |
  b-1) b( cis) cis( d) d( ais-1) ais( b-1) b( cis) cis( d) d( ais) ais( |
  b) b8 b16~ b\dim b8 b16( fis) fis8 fis16( d') d8 d16( |
  b) b8 b16~ b b8 b16( fis) fis8 fis16( d) d8 d16( |
  \repeat unfold 4 { b) b8 b16( } |
  b4\!) r <b fis' d' b'>\f r \bar "|."
}

studyXVIIIprologI = ##f
studyXVIIIprologII = ##f
studyXVIII = \new Voice \relative g' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegretto." 4=123
  \key g \major

  \tupletSpan 4
  
  \tuplet 3/2 {g8-.\f b-. c-. d-. b-. g-.}
  \tuplet 3/2 {g'-. d-. b-. b'-. a-. g-.} |
  %% 2
  \tuplet 3/2 {fis-. d,-. fis-. a-._4 fis-. d-.}
  \tuplet 3/2 {c'-. a-. fis-. e'-.-4 d-. c-.} |
  %% 3
  \omit TupletNumber
  \tuplet 3/2 {b-.\p g,-. a-. b-.\cresc c-. d-._0}
  \tuplet 3/2 {e-. fis-. g-. a-.-0 b-. d-.\f} |
  %% 4
  \tuplet 3/2 {c a,-.\p b-. c-.\cresc d-. e-.}
  \tuplet 3/2 {fis-. g-. a-. b-. c-. e-.-4\f} |
  %% 5
  \tuplet 3/2 {d b,-.\p c-. d-.\cresc e-. fis-.}
  \tuplet 3/2 {g-. a-. b-. c-. d-. fis-.\f} |
  %% 6
  \tuplet 3/2 {e-._0 c,-.\p d-. e-.\cresc fis-. g-.}
  \tuplet 3/2 {a-. b-. c-. d-. e-. g-.\f} |
  %% 7
  \override DynamicLineSpanner.staff-padding = #3.8
  \tuplet 3/2 {fis-. d,-.\p\< e-. fis-. a-._0 d-.\!}
  \tuplet 3/2 {b-.\< g-. a-._4 b-. d-. g-.\!} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 8
  \tuplet 3/2 {e-.-0 c-.\cresc d-. e-. c-. a'-.}
  \tuplet 3/2 {fis-.-> d-. b'-. g-.-> e-. c'-.-3} |
  %% 9
  \tuplet 3/2 {a-.-> fis-. d'-. b-.-> c-. d-.}
  \tuplet 3/2 {c-.\f e-.-4-\0 d-.-4 c-. b-. a-.} |
  %% 10
  \tuplet 3/2 {b-. d-. c-. b-. a-. g-.-2}
  \tuplet 3/2 {fis-. e-.-4 d-. c-. b-. a-.-4} |
  %% 11
  \tuplet 3/2 {g-.\f b-. c-. d-. e-.-0 fis-.}
  \tuplet 3/2 {g-. b-. c-. d-. b-. g-.} |
  %% 12
  \tuplet 3/2 {f,-.-> b-. c-. d-. e-.-0 fis-.}
  \tuplet 3/2 {g-. b-.-2 c-. d-. b-. g-.} |
  %% 13
  \tuplet 3/2 {e,-._1^\ff gis-. a-._0 b-. cis-. dis-.}
  \tuplet 3/2 {e->-4 b-. cis-. dis-. e-.-0 fis-.} |
  %% 14
  \tuplet 3/2 {gis-.-> dis-. e-.-0 fis-. gis-. a-.-1}
  \tuplet 3/2 {b-> cis dis e-0 b-2 d} |
  %% 15
  \override DynamicLineSpanner.staff-padding = #3.8
  \tuplet 3/2 {c->\< a,-0 b c d dis\!}
  \tuplet 3/2 {e->\< c d e-0 fis gis\!} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 16
  \tuplet 3/2 {a-> e fis gis a-1 b c-> d e-0 e,-0 a-3 g} |
  %% 17
  \tuplet 3/2 {fis\< d, fis a d c\! b-> g b d\< g fis\!} |
  %% 18
  \tuplet 3/2 {e-0\< c, e g c b\! a-> fis a c\< fis e\!} |
  %% 19
  \tuplet 3/2 {dis b, dis_4 fis b dis e->_4 c, e a-0 c-2 e-4} |
  %% 20
  \tuplet 3/2 {dis-> b dis fis b a g-> b, e-0 g b g} |
  %% 21
  \tuplet 3/2 {fis-> b ais b fis dis b-> fis'-1 eis-1 fis-1 d b} |
  %% 22
  \tuplet 3/2 {c-> a' gis a e-0 c a-> e'-4 dis e c a} |
  %% 23
  \tuplet 3/2 {fis-> d' cis d a fis g-> cis bes g e cis} |
  %% 24
  \tuplet 3/2 {d d' cis d a fis e g bes cis e-0 g} |
  %% 25
  \tuplet 3/2 {fis\fz d fis\p a-1 d c b a g-4 fis e d-1} |
  %% 26
  \tuplet 3/2 {c-4\fz d-1 fis-3 a\p d c b a g fis e d} |
  %% 27
  \tuplet 3/2 {b-3\fz d-1 g-4 b\p d c b a g-2 fis e-4 d} |
  %% 28
  \tuplet 3/2 {a-0\fz d-3 fis-1 a-3\p c-4 a-3 fis-1 e-0 d-3 c b a-4} |
  %% 29
  \tuplet 3/2 {g\f b c d b g g' d b b' a g} |
  %% 30
  \tuplet 3/2 {fis d, fis a_4 fis d c' a fis e'-4 d c} |
  %% 31
  \tuplet 3/2 {b g,\p a b c d_0 e\cresc fis g a-0 b d\f} |
  %% 32
  \tuplet 3/2 {c a,\p b c d_0 e fis\cresc g a_0 b c e-4\f} |
  %% 33
  \tuplet 3/2 {d b,\p c d_0\cresc e fis g a_0 b c d fis\f} |
  %% 34
  \tuplet 3/2 {e_0 c,\p d e fis g a\cresc b c d e g\f} |
  %% 35
  \override DynamicLineSpanner.staff-padding = #3.8
  \tuplet 3/2 {fis d,\p\< e fis a-0 d\!}
  \tuplet 3/2 {b\< g a b d g\!} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 36
  \tuplet 3/2 {e c\cresc a' fis d b' g e-0 c' a fis d'} |
  %% 37
  \tuplet 3/2 {
    b c d-4 ees-4\ff bes-2 g-4 ees-2 bes'-2 g-4 ees-2 bes-1 g-3} |
  %% 38
  \tuplet 3/2 {ees g bes des bes g} ees r <cis'-3 g'-2> r |
  %% 39
  \tuplet 3/2 {d, g b d g b-2 d c b a g-2 fis} |
  %% 40
  \tuplet 3/2 {e d c b a g fis\dim e d c b a\!} |
  %% 41
  \tuplet 3/2 {g\ff b c d_4 b g g' d_0 b b' a g} |
  %% 42
  \tuplet 3/2 {fis d fis a_4 fis d c' a fis e' d c} |
  %% 43
  \tuplet 3/2 {b b c d b g g' d b b' a g} |
  %% 44
  \tuplet 3/2 {fis d fis a fis d c'-4 a-3 fis-1 e'-0 d-4 a-3} |
  %% 45
  \tuplet 3/2 {b d c b c g-2 fis e d c b a-0} |
  %% 46
  \tuplet 3/2 {b d c b a_4 g fis e d_4 c b a} |
  %% 47
  \tuplet 3/2 {g b c d e fis g b c d e fis} |
  %% 48
  \tuplet 3/2 {g d, e fis g a_0 b d e-0 fis g a} |
  %% 49
  \tuplet 3/2 {b g, a-0 b c d e fis g a-1 b c} |
  %% 50
  \tuplet 3/2 {d b g-4 d-1 b-3 g-1 d-0 g-1 b d g b} |
  %% 51
  d4\ff r <d,, c' fis> r |
  %% 52
  <g, d' b' g'> r8. <d'' b'>16 <d b'>4 r8. <b g'>16 |
  %% 53
  <b g'>4 r8. <d, b'>16 <d b'>4 r8. <b g'>16 |
  %% 54
  <b g'>1~ | <b g'>4 r <d b' g'>\ff r | g, r2. \bar "|."
}

studyXVIIprologI = ##f
studyXVIIprologII = ##f
studyXVII = \new Voice \relative d' {
  \violinVoiceSettings
  \time 5/4
  \tempo "Andante, quasi Allegretto." 4=101
  \key bes \major

  \partial 4 f4\p |
  %% 1
  f'2-3(\>^\markup{\italic "melodioso"} \tuplet 3/2 {g8 f d\!)}
  \breathe c4-.-2( ees-.) |
  %% 2
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 3
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-4( ees-.) |
  %% 4
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( d-.-1\mf) |
  %% 5
  d'2\>( \tuplet 3/2 {c8 bes a\!)} \breathe bes4-.( g-.-4) |
  %% 6
  a2-0\>( \tuplet 3/2 {g8-4 f e\!)} \breathe f4-.( d-.) |
  %% 7
  d'2\>( \tuplet 3/2 {c8 bes a\!)} \breathe bes4-.( g-.) |
  %% 8
  a2-0\>( \tuplet 3/2 {g8-4 f e\!)} \breathe  d4-.( f,-.-2)\p |
  %% 9
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 10
  a,2~\>( \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 11
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( g'-.-4\fz) |
  %% 12
  f,2-2~\p\>( \tuplet 3/2 {f8 g a\!)} \breathe bes4-.( d-.\f) |
  %% 13
  \tuplet 3/2 {bes'8-._\markup{\italic "risoluto"} a-. g-.}
  \tuplet 3/2 {fis-. g-. a-.} \tuplet 3/2 {g-.[ r d-.]}
  \breathe ees4-. c-. |
  %% 14
  \tuplet 3/2 {d8-. c-. bes-.} \tuplet 3/2 {a-. bes-. c-.}
  \tuplet 3/2 {bes-.[ r g-.]} \breathe a4-. d-. |
  %% 15
  \tuplet 3/2 {bes'8-. a-. g-.} \tuplet 3/2 {fis-. g-. a-.}
  \tuplet 3/2 {g-.[ r d-.]} \breathe ees4-. c-. |
  %% 16
  \tuplet 3/2 {d8-. c-. bes-.} \tuplet 3/2 {a-. bes-. c-.}
  \tuplet 3/2 {bes-.[( r a-.])} \breathe g4( f\p) |
  %% 17
  \hairpinDolce
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 18
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 19
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( g'-.-4\fz) |
  %% 20
  f,2-2~\p\>( \tuplet 3/2 {f8 g a\!)} \breathe bes4-.( r8 bes-.\f) |
  %% 21
  \tuplet 3/2 {g8-._\markup {\italic "marcato"} f-. g-.}
  \tuplet 3/2 {aes-. g-. aes-.} \tuplet 3/2 {bes[ r g']}
  \breathe f4-. \tuplet 3/2 {ees8-.[( r bes-.])} |
  %% 22
  \tuplet 3/2 {g8-. f-. g-.} \tuplet 3/2 {aes-. g-. aes-.}
  \tuplet 3/2 {bes[ r g']}
  \breathe a4-. \tuplet 3/2 {d,8-.([ r d-.])} |
  %% 23
  \tuplet 3/2 {bes'8-. a-. g-.} \tuplet 3/2 {fis-. g-. a-.}
  \tuplet 3/2 {g-.[ r d-.]} \breathe ees4-.( c-.) |
  %% 24
  \tuplet 3/2 {d8-. c-. bes-.} \tuplet 3/2 {a-. bes-. c-.}
  \tuplet 3/2 {bes-.[ r g-.]} \breathe g4\dim( f\!) |
  %% 25
  f'2-3\p( \tuplet 3/2 {g8 f d)} \breathe c4-.-2( ees-.) |
  %% 26
  a,2~( \tuplet 3/2 {a8 bes c)} \breathe bes4-.( f-.) |
  %% 27
  f'2-3( \tuplet 3/2 {g8\cresc f d)} \breathe cis4-.-2( a-.) |
  %% 28
  a'2-0( \tuplet 3/2 {g8-4 f-3 e)} \breathe f4-.( d-.\f) |
  %% 29
  d'2\>( \tuplet 3/2 {c8 bes a\!)} \breathe bes4-.( g-.) |
  %% 30
  a2-0\>( \tuplet 3/2 {g8 f e\!)} \breathe f4-.( d,-.) |
  %% 31
  f'2-3~\>( \tuplet 3/2 {f8 e d\!)} \breathe c4-.-2\dim( a-.\!) |
  %% 32
  bes2~\>( \tuplet 3/2 {bes8 a g)\!} \breathe f4-.( f-.) |
  %% 33
  f'2-3\p\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 34
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 35
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( g'-.-4\fz) |
  %% 36
  f,2-2~\p\>( \tuplet 3/2 {f8 g a\!)} \breathe bes4-.( r8 c-.\f) \bar "||"
  %% 37
  \key f \major
  \tuplet 3/2 {a8-.-4\mf g-. a-.-0} \tuplet 3/2 {bes-. c-. d-.}
  \tuplet 3/2 {c-. f-. a-.} \breathe \tuplet 3/2 {fis\>( g a}
  \tuplet 3/2 {g) e-. c-.\!} |
  %% 38
  \tuplet 3/2 {a8-.-4\mf g-. a-.-0} \tuplet 3/2 {bes-. c-. d-.}
  \tuplet 3/2 {c-. f-. a-.} \breathe \tuplet 3/2 {fis\>( g c-3}
  \tuplet 3/2 {bes-2\!) g-.-2 e-.} |
  %% 39
  \tuplet 3/2 {f-. a-. g-.} \tuplet 3/2 {f-. e-.-4 d-.}
  \tuplet 3/2 {g-. e-.-0 d-.} \breathe \tuplet 3/2 {b(\> a b}
  \tuplet 3/2 {c\!) e-. g-.} |
  %% 40
  \tuplet 3/2 {gis->( a) f-.} \tuplet 3/2 {fis->( gis) e-.}
  \tuplet 3/2 {e->( f) b,} \breathe c4 r8 c |
  %% 41
  \tuplet 3/2 {bes'8->-. a-. g-.} \tuplet 3/2 {fis-. g-. a-.}
  \tuplet 3/2 {g-. e-. c-.} \breathe \tuplet 3/2 {des( ees des}
  \tuplet 3/2 {c) e-. g-.} |
  %% 42
  \tuplet 3/2 {bes-.-> a-. g-.} \tuplet 3/2 {fis-. g-. a-.}
  \tuplet 3/2 {g-. e-. c-.} \breathe \tuplet 3/2 {des->( ees des}
  \tuplet 3/2 {c) g-. e-.} |
  %% 43
  \tuplet 3/2 {f-. g-. a-.} \tuplet 3/2 {bes-.\cresc c-. d-.}
  \tuplet 3/2 {c-. f-. ees-.} \breathe
  \tuplet 3/2 {cis->( d g} \tuplet 3/2 {bes) a-. g-.} |
  %% 44
  \tuplet 3/2 {f\f( a) c,(} \tuplet 3/2 {f-4) a,( d)}
  \tuplet 3/2 {c( bes) g-.} \breathe
  f4-.\dim( f-.\!) \bar "||" \key bes \major
  %% 45
  \hairpinDolce
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 46
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 47
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 48
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( d-.-1\mf) |
  %% 49
  d'2\>( \tuplet 3/2 {c8 bes a\!)} \breathe bes4-.( g-.-4) |
  %% 50
  a2-0\>( \tuplet 3/2 {g8-4 f e\!)} \breathe f4-.( d-.) |
  %% 51
  d'2\>( \tuplet 3/2 {c8 bes a\!)} \breathe bes4-.( g-.) |
  %% 52
  a2-0\>( \tuplet 3/2 {g8-4 f e\!)} \breathe d4-.( f,-.-2) |
  %% 53
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2( ees-.) |
  %% 54
  a,2~(\> \tuplet 3/2 {a8 bes c\!)} \breathe bes4-.( f-.) |
  %% 55
  f'2-3\>( \tuplet 3/2 {g8 f d\!)} \breathe c4-.-2 g'-.-4\fz |
  %% 56
  r r g-.\pp( \breathe r g-.\fz) |
  %% 57
  f,2-2~\>( \tuplet 3/2 {f8\! g a)} \breathe bes4 r8 f' |
  %% 58
  \tuplet 3/2 {ees'8-.-3\f d-. c-.} \tuplet 3/2 {b-. c-. d-.}
  \tuplet 3/2 {c-. a-. f-.-1} \breathe
  \tuplet 3/2 {ges\fz( aes ges} \tuplet 3/2 {f) a-. c-.} |
  %% 59
  \tuplet 3/2 {ees8-.-3\fz d-. c-.} \tuplet 3/2 {b-. c-. d-.}
  \tuplet 3/2 {c-. a-. f-.-1} \breathe
  \tuplet 3/2 {ges\fz( aes ges} \tuplet 3/2 {f) c-. a-.} |
  %% 60
  \tuplet 3/2 {bes c d} \tuplet 3/2 {ees f g} \tuplet 3/2 {f bes aes}
  \breathe \tuplet 3/2 {fis\fz( g c-3} \tuplet 3/2 {e-.-4) d-.-4 c-.} |
  %% 61
  \tuplet 3/2 {bes( d) c-.} \tuplet 3/2 {bes-. a-. g-.}
  \tuplet 3/2 {f-. ees-. d-.} \breathe \tuplet 3/2 {ees-.\fz c-. a-.}
  \tuplet 3/2 {f-. g-. a-.} |
  %% 62
  bes4 r <d, bes' bes'>\f \breathe <d bes'>\fermata \bar "|."
}

studyXVIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c' {
    \time 6/8
    \key f \major

    c16( e f g a bes) c( d e f g a) |
    a( g bes a g f) e( d c bes a d) \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXVIprologII = ##f

studyXVI = \new Voice \relative c' {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegro." 4=123
  \key f \major

  \repeat volta 2 {
    f16->\p( e f g a-0 bes c d e-0 f g a) |
    %% 2
    a->( g bes a g f e-4 d c bes a-4 g) |
    a->-4( g-3 a-0 bes c d e-0 f g a bes c) |
    c->( bes d c b a g-2 f e-4 d c bes) |
    a\<( bes c d e-0 f g\> f a f d b) |
    c\<( d e-0 f g a-1 bes a c\> bes g-2 e) |
    %% 7
    f\<( e g f a g f\> e f d a b\!) |
  }
  \alternative {
    {
      %% 8
      c\<( b d c e d c\> bes a bes g e\!)
    } {
      %% 9
      c'\<( b d c e d f e g fis\> a g\!)
    }
  }
  %% 10
  f\f( g a g f e-4 d\dim c bes a g f\!) |
  f\>( e g f e g\! g a-0 bes c d-1 e) |
  f\<( e d e f g a b cis d a f) |
  %% 13
  f\>( ees g f ees d d-3 c b c d ees) |
  %% 14
  f\<( d bes'\> a g f ees d c bes a-4 g) |
  fis\<( e d e fis g a-0 bes c d e-0 fis) |
  g\f\>( aes bes aes g f ees d c bes aes g) |
  %% 17
  f\<( d b' f d' b f'-3 d aes'-4 g-4 f d) |
  %% 18
  ees\>( f g f ees d c-2 bes aes g f ees) |
  %% 19
  d-4\<( b g' d b' g d' b f'-3 d g f) |
  %% 20
  ees\>( f g f ees d c_2 bes aes g f fis\!) |
  g\f( g, b d_0 g b d g-> fis g a f) |
  %% 22
  e->\mf( g f e-4 d c b_> d c b a g) |
  c->( g f e d-4 c b c d c b c) |
  %% 24
  a->( c d-0 e f g a_0 b d c b a) |
  fis( g a g fis g e g c e g e) |
  e->-4( d cis d fis a-1 c b d c b a) |
  a->-3( g fis g b a g fis e-4 d cis b) |
  %% 28
  a->( b cis d e-0 fis g fis a g e cis) |
  d\<( dis e\! d c b d\> c a-4 fis d-4 c) |
  b\>( d f g b d f e g\! f e-4 d) |
  %% 31
  e->-4( d c b c-> b a g a_4 g fis e) |
  d( fis a_0 c\> d fis a_3 c_4 b_4 a g fis) |
  %% 33
  a\cresc( gis b a-3 c-4 b-4\! g-2\< gis b a\> g f) |
  %% 34
  e->\mf( g f e-4 d c b-> d c b a g) |
  %% 35
  c->( g f e d-4 c b c d c b c) |
  %% 36
  a->( c d e f g a b d c b a) |
  %% 37
  fis->( g a g fis g e g c e-0 g e-0) |
  %% 38
  e->-4( d cis d f e g f b\> a\! f d) |
  %% 39
  d->( c b c e d f e a g\> e c\!) |
  c->( b ais-1 b-1 e d b g f d-0 b g) |
  c\cresc( b d c e d f e g fis a g\!) |
  %% 42
  bes( a c bes d fis, a-4\dim g bes-4 d,-0 f e) |
  g\cresc( g, bes a c bes d c bes c d-0 e\!) |
  f->\p( e f g a_0 bes c d e-0 f g a) |
  %% 45
  a->( g bes a g f e-4 d c bes a g) |
  a_4( g_3 a_0 bes c d e-0 f g a-1 bes c) |
  c->( bes d c bes a g-2 f e d c bes) |
  %% 48
  a\<( bes c d e-0 f g f\! a f\> c a\!) |
  fis\<( g bes a c bes d\> cis e d bes g) |
  f\<( a d c g' f b-2 a d\> c a f) |
  e_0\<( f_1 g a bes g e\> c bes g e bes) |
  %% 52
  a\<( bes c d-0 ees f g a-0 bes c d ees) |
  ees\>( d bes' a g f e g f e g d) |
  b\>( c d c a f\! e-1 bes'-4 g-3 e c e) |
  %% 55
  f\mf\<( a-0 bes c d e-0 f e g f a8-.\f) |
  d,,16\mf\<( f g a b cis d cis e d-3 f8-4\f) |
  b,,16\mf\<( d f gis-4 b d f-4\> d b gis-4 f d) |
  %% 58
  c\cresc( b d c f e g f bes a d c) |
  c( b c d e-0 f g a bes g e g) |
  f\f( a, c f a f) f\>( e bes'\! g e g) |
  %% 61
  f\>( a, c f a f\!) f\>( e bes' g e g\!) |
  %% 62
  f8-. \repeat unfold 3 {<e bes>-. <f a,>-.}
  \repeat unfold 2 {<bes, g>-. <a f>-.} <bes g>-. |
  %% 64
  <a f>4 r8 <f c' a'>4\ff r8 | <f a,>4.~\> <f a,>4\! r8 \bar "|."
}

studyXVprologI = ##f
studyXVprologII = ##f

studyXV = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key bes \major

  bes8-. c-. d-.-0 ees-. f-. g-. a-.-0 bes-. |
  %% 2
  \repeat unfold 2 { \grace {c16\>^( d} c8\! b16) r }
  \grace {c16\>^( d} c8\! a16) r f'4-> |
  %% 3
  bes,8-.\cresc c-. d-. ees-. f-. g-. a-. bes-.\! |
  %% 4
  \grace {a16\>^( bes} a8\! gis16) r
  \grace {a16\>^( bes} a8\! g16) r
  \grace {f16\>^( g  } f8\! e16) r f4-> |
  %% 5
  g8-.\mf f-. ees-. d-. c-. b-. c-. d-.-1 |
  %% 6
  \repeat unfold 2 { \grace {ees16\>^( f} ees8\! d16) r }
  \grace {c16-2\>^( d} c8\! b16) r c4-> |
  %% 7
  d8-.\cresc c-. bes-. a-.-4 g-. fis-. g-. bes-.\! |
  %% 8
  \repeat unfold 3 { \grace {d16\>^( ees} d8\! cis16) r } d4-> |
  %% 9
  g,,8-.\mf a-. bes-. c-. d-. e-. fis-. g-.-1 |
  %% 10
  \repeat unfold 2 { \grace {a16^\>( bes} a8\! gis16) r }
  \grace {a16^\>( bes} a8\! fis16-2) r d'4-> |
  %% 11
  g,8-. a-.-0 bes-. c-. d-. e-.-0 fis-. g-. |
  %% 12
  \grace {fis16\>^( g} fis8\! eis16) r
  \grace {fis16\>^( g} fis8\! e16) r
  \grace {d16\>^( e} d8\! cis16) r d4-> |
  %% 13
  ees8-. d-. c-. b-. c-. bes-. a-. g-. |
  %% 14
  \repeat unfold 3 { \grace {f16^\>( g} f8\! e16) r } f4-> |
  %% 15
  d'8-. c-. bes-. a-. bes-. a-.-4 g-. f-. |
  %% 16
  \repeat unfold 3 { \grace {ees16^\>( f} ees8\! d16) r } ees4-> |
  %% 17
  c'8-. bes-. a-.-4 g-. fis-. ees-. d-. c-. |
  %% 18
  \repeat unfold 3 { \grace {bes16^\>( c} bes8\! a16) r } bes4-> |
  %% 19
  ees8-. g-. b-. c-. e,-. g-. bes-. c-. |
  %% 20
  \repeat unfold 3 { \grace {f,16^\>( g} f8\! e16) r } f4-> |
  %% 21
  bes,8-. c-. d-. ees-. f-. g-. a-. bes-. |
  %% 22
  \repeat unfold 2 { \grace {c16\>^( d} c8\! b16) r }
  \grace {c16\>^( d} c8\! a16) r f'4-> |
  %% 23
  bes,8 c d ees f g a bes |
  %% 24
  \grace {a16\>^( bes} a8\! gis16) r
  \grace {a16\>^( bes} a8\! g16) r
  \grace {f16\>^( g  } f8\! e16) r f4-> |
  %% 25
  g8 f ees d c b c d-1 |
  %% 26
  \repeat unfold 2 { \grace {ees16\>^( f} ees8\! d16) r }
  \grace {c16-2\>^( d} c8\! b16) r c4-> |
  %% 27
  d8 c bes a gis f e d |
  %% 28
  \grace {a16^\>( bes} a8\! gis16-1) r
  \grace {a16_2^\>( bes} a8\! gis16) r
  \grace {a16^\>( bes} a8\! gis16) r a4-1-> |
  %% 29
  d8 e fis g a b cis d-1 |
  %% 30
  \repeat unfold 2 { \grace {e16\>^( fis} e8\! dis16) r }
  \grace {e16\>^( fis} e8\! cis16-2) r a'4-> |
  %% 31
  d,8 e fis g a-1 b cis d |
  %% 32
  \grace {cis16\>^( d} cis8\! a16) r
  \grace {b16\>^( cis} b8\! gis16-2) r
  \grace {a16\>^( b} a8\! gis16) r a4-> |
  %% 33
  b8 a( g fis e dis e g) |
  %% 34
  \grace {a16\>^( b} a8\! gis16) r
  \grace {a16\>^( b} a8\! g16) r
  \grace {fis16\>^( g} fis8\! e16) r d4-> |
  %% 35
  fis8 e\cresc d cis b ais b d\! |
  %% 36
  \grace {fis16-3\>^( g} fis8\! eis16) r
  \grace {fis16\>^(^\( g} fis8\! eis16) r
	  \grace {fis16\>^( g} fis8\! eis16)\) r fis4->~\downbow |
  %% 37
  fis8 e-.\upbow\(
    dis-. c-.-2 b-.\dim a-. g-. fis-.\! |
    %% 38
    \repeat unfold 2 { \grace {g16\>( a} g8\! fis16) r }
    \grace {g16\>( a} g8\! e16)\) r
  \once \override Hairpin.to-barline = ##f
  e'4->\downbow~\> |
  %% 39
  e8\! d-.\(
    cis-. bes-. a-. g-. f-. e-. |
    %% 40
    \repeat unfold 2 { \grace {f16\>( g} f8\! e16) r }
    \grace {f16\>( g} f8\! d16)\) r
  \once \override Hairpin.to-barline = ##f
  d'4->\downbow~\> |
  %% 41
  d8\! c-.\(
    bes-. a-. bes-. f-. ees-. d-. |
    %% 42
    \repeat unfold 2 { \grace {c16\>( d} c8\! b16) r }
    \grace {c16\>( d} c8\! a16)\) r c'4->\downbow~ |
  %% 43
  c8 bes-.\(
    a-. g-. f-. ees-. d-.-0 c-._1 |
    %% 44
    \grace {d16-2\>( ees} d8\! c16) r
    \grace {d16\>( ees} d8\! c16) r
    \grace {bes16-2\>( c} bes8\! a16)\) r bes4\downbow~ |
  %% 45
  bes8 c d ees f g a bes |
  %% 46
  \repeat unfold 2 { \grace {c16\>^( d} c8\! b16) r }
  \grace {c16\>^( d} c8\! a16) r f'4-> |
  %% 47
  bes,8\downbow c d ees f\cresc g a bes\! |
  %% 48
  \grace {a16\>^( bes} a8\! gis16) r
  \grace {a16\>^( bes} a8\! g16) r
  \grace {f16\>^( g  } f8\! e16) r f4-> |
  %% 49
  g8\mf f ees d c b c d-1 |
  %% 50
  \repeat unfold 2 { \grace {ees16\>^( f} ees8\! d16) r }
  \grace {c16-2\>^( d} c8\! b16) r c4-> |
  %% 51
  d8 c bes a-4 g fis g bes |
  %% 52
  \repeat unfold 3 { \grace {d16\>^( ees} d8\! cis16) r } d4-> |
  %% 53
  g,,8-.\mf a-. bes-. c-. d-. e-. fis-. g-.-1 |
  %% 54
  \repeat unfold 2 { \grace {a16^\>( bes} a8\! gis16) r }
  \grace {a16^\>( bes} a8\! fis16-2) r d'4-> |
  %% 55
  g,8-. a-. bes-. c-. d-. e-. fis-. g-. |
  %% 56
  \grace {fis16\>^( g} fis8\! eis16-1) r
  \grace {fis16\>^( g} fis8\! e16-0) r
  \grace {d16\>^( e} d8\! cis16) r d4-> |
  %% 57
  g8 f ees d ees d c b |
  %% 58
  \grace {c16\>^( d} c8\! b16) r
  \grace {c16\>^( d} c8\! bes16) r
  \grace {a16-2\>( bes} a8\! gis16) r a4-> |
  %% 59
  f'8 ees d c-2 d c bes a |
  %% 60
  \repeat unfold 2 { \grace {bes16\>( c} bes8\! a16) r }
  \grace {g16\>( a} g8\! fis16) r  g4-> |
  %% 61
  ees'8 d c b c ees-2 g f |
  %% 62
  \grace {f16\>^( g} f8\! e16) r
  \grace {f16\>^( g} f8\! ees16) r
  \grace {d16-3\>^( ees} d8\! c16 r
  \grace {bes16\>^( c} bes8\! a16 r |
  %% 63
  g8\cresc c ees g a, c f a\! |
  %% 64
  bes,4 r <d, bes' bes'>\fz r | r2 <bes f' d'>4\p r |
  <bes d bes'>1 \bar "|."
}

studyXIVprologI = ##f
studyXIVprologII = ##f

studyXIV = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante." 4=77
  \key es \major

  \repeat volta 2 {
    \partial 4 \afterGrace bes4\trill\upbow\>( {a16 bes\!)} |
    %% 1
    ees4-. \afterGrace bes\trill\>( {a16 bes\!)} g'4-.
    \afterGrace bes4-2_>\trill( {a16 bes)} |
    %% 2
    d,4-. \afterGrace ees_>\trill( {d16 ees)} f4-.
    \afterGrace bes,_>-1\trill( {a16 bes)} |
    %% 3
    ees4-. \afterGrace g\>^\trillNatural( {fis16 g\!)} a,4
    \afterGrace f'4\>\trill( {e16 f\!)} |
    %% 4
    a8.-.-1\>( bes16-.) c8.-.( d16-.) bes4-.\!
  }
  \afterGrace bes4\mf\trill( {a16 bes)} |
  %% 5
  d,4-. \afterGrace bes'\trill( {a16 bes)} ees,4-.
  \afterGrace bes'\trill( {a16 bes)} |
  %% 6
  e,8.-.-0( f16-.-1) g8.-.( bes16-.) aes4-.
  \afterGrace f4\trill( {e16 f)} |
  %% 7
  g4-. \afterGrace ees_2\trill( {d16 ees)} c4-4
  \afterGrace a4\trill( {g16 a)} |
  %% 8
  a8.-.-0( bes16-.-1) c8.-.( d16-.) bes4-.\p
  \afterGrace bes\trill\>( {a16 bes\!)} |
  %% 9
  ees4-. \afterGrace bes\trill\>( {a16 bes\!)} g'4-.
  \afterGrace bes-2\trill\>( {a16 bes\!)} |
  %% 10
  d,4-. \afterGrace ees\>\trill( {d16 ees\!)} f4-.
  \afterGrace bes,4-1\trill\>( {a16 bes\!)} |
  %% 11
  ees4-. \afterGrace c\>\trill( {b16 c\!)} aes4
  \afterGrace f\>\trill( {e16 f\!)} |
  %% 12
  d8.-.\>( ees16-.) f8.-.( g16-.\!) ees4
  \afterGrace bes''4\mf\trill( {a16 bes)} |
  %% 13
  d,4-. \afterGrace bes'\trill( {a16 bes)} d,4-.
  \afterGrace bes'\trill( {a16 bes)} |
  %% 14
  e,8.-.-0( f16-.) g8.-.( bes16-.) aes4-.
  \afterGrace f\trill( {e16 f)} |
  %% 15
  g4-. \afterGrace ees_2\trill( {d16 ees)} c4-.-4
  \afterGrace a\trill( {g16 a)} |
  %% 16
  a8.-.-0\>( bes16-.-1) c8.-.( d16-.\!) bes4-.\p
  \afterGrace bes\trill\>( {a16 bes\!)}
  %% 17
  ees4-. \afterGrace bes\>\trill( {a16 bes\!)} g'4-.
  \afterGrace bes-2\>\trill( {a16 bes\!)} |
  %% 18
  d,4-. \afterGrace ees\>\trill( {d16 ees\!)} f4-.
  \afterGrace bes,-1\>\trill( {a16 bes\!)} |
  %% 19
  ees4-. \afterGrace c\trill( {b16 c)} aes4-.
  \afterGrace f\>\trill( {e16 f\!)} |
  %% 20
  d8.\>( ees16-.) f8.-.( g16-.\!) ees4\f^\markup {\italic "marcato assai"}
  g,16-.\downbow a-. b-. g-. |
  %% 21
  c-. d-.-0 ees-. f-.   g-. ees-. d-.-4 c-.   f-. g-. aes-. bes-.
  c-. aes-. g-. f-. |
  %% 22
  g-. ees-. d-. c-. b-. c-. d-. c-. b-. c-. d-. b-. g-. a-. b-. g-. |
  %% 23
  c d-0 ees f g ees d c d-0\cresc g bes c d bes a-4 g |
  %% 24
  d g a-0 bes\ff d c bes a-4\dim g d-0 bes a\f g a b g |
  %% 25
  c-. d-.-0 ees-. f-. g-. ees-. d-. c-. f g aes bes c aes g f |
  %% 26
  g ees d c b c d c b c d b g a b g |
  %% 27
  c d-0 ees f g ees d c d g\cresc bes c d bes aes-4 g |
  %% 28
  d g a-0\dim bes d c bes a g bes d fis g\cresc fis g aes |
  \repeat volta 2 {
    %% 29
    bes\ff g ees des bes g ees des' c bes c des ees f g aes |
    %% 30
    g f des c\dim bes c des bes aes c bes aes g ees f g |
    %% 31
    aes bes c des\cresc ees f g aes\! a->( g) g-. g-. g-.\p d-. g-. f-. |
    %% 32
    f->( ees) ees-. ees-. f->( ees) d-. c-.-2 c->( b) d-. b-. g-.\cresc f-. ees-. d-. |
    %% 33
    c\f d ees f g ees d c f g aes bes c a g f |
    %% 34
    g ees d c b c d c b c d b g a b g |
    %% 35
    c d-0 ees f g es d c f aes c f a f ees d |
  }
  \alternative {
    {
      %% 36
      g\dim es d c b c d ees c b c d ees\cresc f g aes\!
    }
    {
      %% 37
      g\dim ees d c b c d ees c4\p
      \afterGrace bes4\>\trill( {a16 bes\!)}
    }
  }
  %% 38
  ees4 \afterGrace bes\>\trill( {a16 bes\!)} g'4-.
  \afterGrace bes-2\>\trill( {a16 bes\!)} |
  %% 39
  d,4-. \afterGrace ees\>\trill( {d16 ees\!)} f4-.
  \afterGrace bes,-1\>\trill( {a16 bes\!)} |
  %% 40
  ees4-.
  \afterGrace g^\trillNatural( {fis16 g)}
  a,4-. \afterGrace f'\trill( { e16 f)} |
  %% 41
  a8.-.\>( bes16-.) c8.-.( d16-.)\! bes4-.\mf
  \afterGrace bes\trill( {a16 bes)} |
  %% 42
  d,4-. \afterGrace bes'\trill( {a16 bes)} ees,4-.
  \afterGrace bes'\trill( {a16 bes)} |
  %% 43
  e,8.-.-0( f16-.-1) g8.-.( bes16-.) aes4-. \afterGrace f\trill( {e16 f)} |
  %% 44
  g4-. \afterGrace ees\trill( {d16 ees)} c4-.-4
  \afterGrace a\trill( {g16 a)} |
  %% 45
  a8.-.-0\>( bes16-.-1) c8.-.( d16-.\!) bes4\p
  \afterGrace bes\trill( {a16 bes)} |
  %% 46
  ees4-. \afterGrace bes\trill( {a16 bes)} g'4-.
  \afterGrace bes_2\trill( {a16 bes)} |
  %% 47
  d,4-.-1 \afterGrace ees\trill( {d16 ees)} f4-.
  \afterGrace bes,-1\trill( {a16 bes)} |
  %% 48
  ees4-. \afterGrace c\trill( {b16 c)} aes4-.
  \afterGrace f\trill( {e16 f)} |
  %% 49
  d8.-.( ees16-.) f8.-.( g16-.) ees4
  \mark \markup { \musicglyph #"scripts.coda" } \bar "||"
  \afterGrace bes'4\trill( {a16 bes)} |
  %% 50
  <bes aes'>2\>( <ees g>4\!) \afterGrace bes\trill( {a16 bes)} |
  %% 51
  <f d'>2\>( <ees ees'>4\!) \afterGrace c'\p\trill( {b16 c)} |
  %% 52
  aes4-. \afterGrace f\trill( {e16 f)} bes4-.
  \afterGrace bes,\trill( {a16 bes)} |
  %% 53
  << {\voiceOne d2\>\(}
      \new Voice {\voiceTwo aes16( bes aes bes aes bes aes bes)}
    >> \oneVoice <g ees'>4\!\)
  \afterGrace bes\trill\upbow\dim( {a16 bes)} |
  %% 54
  \repeat unfold 2 {
    <g ees'>4 \afterGrace bes\trill( {a16 bes\!)}
  }
  %% 55
  <g ees'>2. <ees' bes' g'>4-.\f |
  %% 56
  <d bes' f'>-. r <d bes' bes'> r8. <g ees'>16\upbow\f |
  %% 57
  <g ees'>2. \bar "|."
}

studyXIIIprologI = ##f
studyXIIIprologII = ##f

studyXIII = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Allegretto." 4=123
  \key g \major

  \tupletSpan 4
  
  \tuplet 3/2 {b8\p( d) b-. g-. a-._0 b-. c-. d-. e-.} |
  %% 2
  \tuplet 3/2 {d( g) d-. b-. c-. d-. e-.-0 fis-. g-.} |
  %% 3
  \omit TupletNumber
  \tuplet 3/2 {a( c-4) a-.-3 fis-. a-. fis-. d-. e-.-0 fis-.} |
  %% 4
  \tuplet 3/2 {g( b) a-. g-. fis-. e-.-4 d-. c-. b-.} |
  %% 5
  \tuplet 3/2 {e-4( c) g-. \repeat tremolo 3 {g-.} g'-. fis-. e-.} |
  %% 6
  \tuplet 3/2 {d( b) g-. \repeat tremolo 3 {g-.} g'-. d-. b-.} |
  %% 7
  \tuplet 3/2 {a\cresc( b) cis-. d-. e-.-0 fis-. g-. b-. cis,-.} |
  %% 8
  \tuplet 3/2 {e\dim( d) cis-. e( d) cis-. e( d) c-.} |
  %% 9
  \tuplet 3/2 {b\p( d) b-. g-. a-._0 b-._1 c-. d-. e-.} |
  %% 10
  \tuplet 3/2 {d( g) d-. b-. c-. d-. e-.-0 fis-. g-.}
  %% 11
  \tuplet 3/2 {a( c-4) a-.-3 fis-. a-. fis-. d-. e-.-0 fis-.}
  %% 12
  \tuplet 3/2 {g( b) a-. g-. fis-. e-.-4 d-. c-. b-.}
  %% 13
  \tuplet 3/2 {e->( c) g-. \repeat tremolo 3 {g-.} g'-. fis-. e-.}
  %% 14
  \tuplet 3/2 {d->( b) g-. \repeat tremolo 3 {g-.} g'-. d-. b-.}
  %% 15
  \tuplet 3/2 {a\cresc( c) e-. d( b) g-. c( a_0) fis-.\!} |
  %% 16
  \tuplet 3/2 {a\>( g) fis-.\! g-. d-._0 b-. g-. b-. d-._0} |
  %% 17
  \tuplet 3/2 {g\f( bes) d-. \repeat tremolo 3 {g-.} bes-. g-. d-.} |
  %% 18
  \tuplet 3/2 {cis( e) cis-. \repeat tremolo 3 {a-.} a'-. g-. e-.} |
  %% 19
  \tuplet 3/2 {g( f) e-.-4 \repeat tremolo 3 {d-.} \acciaccatura e8 d8-. cis-. d-.} |
  %% 20
  \tuplet 3/2 {f( e-0) d-. cis-. e-. cis-. \repeat tremolo 3 {a-.}} |
  %% 21
  \tuplet 3/2 {fis'\mf g-. a-.-1 b-. cis-. d-. e,-.-2 fis-.-3 g-.-4} |
  %% 22
  \tuplet 3/2 {a-1 b cis d,-.-1 e-.-0 fis-. g-. a-. b-.} |
  %% 23
  \tuplet 3/2 {cis,-.-2 d-. e-.-0 fis-. g-. a-. b,-. cis-. d-.} |
  %% 24
  \tuplet 3/2 {e-.-0 fis-. g-. a,-. b-. cis-. d-. e-. fis-.} |
  %% 25
  \tuplet 3/2 {a( g) e-.-4 b-. g-. e-. g-. b-. e-.-0} |
  %% 26
  \tuplet 3/2 {g->( fis) d-. a-.-4 fis-. d-. fis-. a-.-0 d-.} |
  %% 27
  \tuplet 3/2 {fis->( e) cis-. a-.-4 g-. e-. cis-. a-. cis-.} |
  %% 28
  \tuplet 3/2 {d->( fis) a-.-0 d\p( e d) cis( d cis)} |
  %% 29
  \tuplet 3/2 {c( d c) a'\cresc( b a)  g( a g)} |
  %% 30
  \tuplet 3/2 {fis( g fis) c'-3( d c) a( b a)} |
  %% 31
  \tuplet 3/2 {fis\dim( g fis) e( fis e) dis( e dis)} |
  %% 32
  \tuplet 3/2 {d( e d^\rall) cis-2( d cis) c( d c)} |
  %% 33
  \tuplet 3/2 {b\p^\aTempo( d) b-. g-. a-.-0 b-. c-. d-. e-.} |
  %% 34
  \tuplet 3/2 {d( g) d-. b-. c-. d-. e-.-0 fis-. g-.} |
  %% 35
  \tuplet 3/2 {a( c) a-. fis-. a-. fis-. d-. e-.-0 fis-.} |
  %% 36
  \tuplet 3/2 {g( b) a-. g-. fis-. e-.-4 d-. c-. b-.} |
  %% 37
  \tuplet 3/2 {e->-4( c) g-. \repeat tremolo 3 {g-.} g'-. fis-. e-.-0} |
  %% 38
  \tuplet 3/2 {d->( b) g-. \repeat tremolo 3 {g-.} g'-. d-. b-.} |
  %% 39
  \tuplet 3/2 {a( c\cresc) e-. d( b) g-. c( a_4) fis-.\!} |
  %% 40
  \tuplet 3/2 {a\>( g fis g\p) d-. b-. g-. b-. d-.} |
  %% 41
  \tuplet 3/2 {g\>( f e f\!) d-. b-. g-. b-. d-.} |
  %% 42
  \tuplet 3/2 {f\>( e d e\!) c-. g-. c-. e-. g-.} |
  %% 43
  \tuplet 3/2 {g\>( fis e fis\!) a-. c-. d-. fis-. a-.} |
  %% 44
  \tuplet 3/2 {a\>( g fis g\!) d-. b-. g-. b-. d-.} |
  %% 45
  \tuplet 3/2 {g\>( f e f\!) d-. b-. g-. b-. d-.} |
  %% 46
  \tuplet 3/2 {f\>( e-4 d e\!) c-. g-. e-. g-. c-.} |
  %% 47
  \tuplet 3/2 {e\>( d cis d\!) c-. a-.-4 fis-. d-._0 fis-.} |
  %% 48
  \tuplet 3/2 {a\>( g fis g\!) d-. b-. \repeat tremolo 3 {g-.}}
  %% 49
  \tuplet 3/2 {g-. b-. d-. \repeat tremolo 3 {g-.\cresc}  \repeat tremolo 3 {g-.}} |
  %% 50
  \tuplet 3/2 {g-. b-. d-. \repeat tremolo 3 {g-.\f} g-. b-. g-.} |
  %% 51
  \tuplet 3/2 {d-. g-. d-. b-. d-. b-. g-. b-. g-.} |
  %% 52
  \tuplet 3/2 {d-. g-. d-. b-. d-. b-. \repeat tremolo 3 {g-.}} |
  %% 53
  g4 r <d' b' g'>\ff | g, r <d' b' b'> | g,2.~ | g4 r r \bar "|."
}

studyXIIprologI = ##f
studyXIIprologII = ##f

studyXII = \new Voice \relative g {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro, ma non tanto." 4=123
  \key g \major

  g16->\mf^\markup {\italic "brillante"}( b\cresc e d-0 b-> d-0 a'-4 g
  d-> g c b g-> b e-4 d\!) |
  %% 2
  d->( c a g' fis d b' a fis-1\dim c'-4 a-3 fis d c a c\!) |
  %% 3
  e->-4( d b a' g d b' g d b g c b g d b') |
  %% 4
  a-0\cresc( d, fis a d fis a fis d\dim c a-0 fis d-4 c a d\!) |
  %% 5
  g,->( b e d-0 b->\cresc d-0 a'-4 g d-> g c b g-> b e d\!) |
  %% 6
  d->( c a g' fis d b' a fis-1\dim c'-4 a-3 fis d c a c\!) |
  %% 7
  e->-4( d b a' g d b e d b g c b\f g e g) |
  %% 8
  b,\ff( dis-4 fis ais-4 b dis fis ais b\dim a fis dis b a fis dis-1\!) |
  %% 9
  e->-1\cresc( g c b g b dis e b e-0 a g e-> g c-4 b-4\!) |
  %% 10
  b->( a fis a fis dis b c b\dim a-4 fis a fis dis-4 b a\!) |
  %% 11
  g->( b dis-1 e-1 b->\cresc e fis g e-> g c b g-> b dis e-0\!) |
  %% 12
  g\fz( f a g f e d c b-1\dim f'-4 d-3 b g f d-0 b\!) |
  %% 13
  c->( e a g e-> g b c g-> c f-4 e-4 c e-4 a g) |
  %% 14
  gis\fz( e b' gis e-4 d b gis e\dim d' b gis e d b gis\!) |
  %% 15
  a->( c f e c->\cresc e gis a e-> a-0 d c a-> c f-4 e-4\!) |
  %% 16
  e\fz( dis b' a g fis e-4 dis e\dim ais,-1 b fis g dis-1 e-1 g\!) |
  %% 17
  f\fz( a, c f a c f a) gis\fz( f d b gis-4 f d b) |
  %% 18
  c\fz( a c e a-0 c e-0 a) bes\fz( g e-0 cis bes g e cis) |
  %% 19
  d-4\fz( a d-0 f a d f a) c-4\fz( a-3 fis-1 dis-4 c a-0 fis dis) |
  %% 20
  e\fz( a-0 c d e a gis a) b\fz( gis e-0 f e d b c) |
  %% 21
  a->\cresc( c f e c-> e-0 b' a\!) a->( g e-4 cis a-4\dim g e cis\!) |
  %% 22
  d->\cresc( f bes a f-> a-0 e'-4 d\!) d->( c a fis' d\dim c a fis\!) |
  %% 23
  g->( b e d b-> d fis g) g->( e-0 cis b' a g e-4 cis) |
  %% 24
  d->\cresc( e d cis   d e fis g)   a-3( b-4 c-4 a-3 fis\dim d c a-0\!) |
  %% 25
  fis( d-4 cis d-0 dis-1 e-1 f-2 fis-2 g-3 gis-4 a-0 ais-1 b-1 c-2 cis-2 d) |
  %% 26
  dis->-4( e-0 fis-1 e-0 b-> c\dim d c gis->-3 a-0 b a-0 fis-> e' c a\!) |
  %% 27
  g->( ees' c a fis-> e' c a g-> ees' c a fis-> e' c a) |
  %% 28
  fis( d-4 cis d-0 e\dim d b c d c gis a b a d b\!) |
  %% 29
  g->\mf( b\cresc e d-0 b->-2 d-0 a'-4 g d-> g c b g-> b e d\!) |
  %% 30
  d->( c a g' fis d b' a fis c'-4 a-3 fis d\dim c a c\!) |
  %% 31
  e->( d b a' g d b e d b g c b g d b') |
  %% 32
  a-0( d, fis a-0 d\cresc fis a fis d c a-0 fis d\dim c a d\!) |
  %% 33
  g,->( b e d b-> d-0\cresc a'-4 g d g c b g-> b e d\!) |
  %% 34
  e,\mf( g c b g\cresc b dis e b e-0 a g e g c-4 b-4\!) |
  %% 35
  b\f( a g e-4 cis a-4 g e) d\cresc( fis b a fis a-0 e'-4 d\!) |
  %% 36
  d\mf( c a-0 fis d-4\dim c a d) g,(b\cresc e d-0 b d-0 a' g\!) |
  %% 37
  e\f( g b c   g c dis e   c\cresc e-0 fis g   a g e-4 c\!) |
  %% 38
  b( d e d   c b a-4\dim g   fis e d-4 c   b c a b\!) |
  %% 39
  g->\mf( b e d   b-> d-0 a'-4 g   d-> g c b   g-> b e d) |
  %% 40
  c->( fis b a fis d c a-4 fis-> a-0\dim e' d c a-4 fis d-4\!) |
  %% 41
  b->( d-0 a'-4 g   d-> g c b   g-> b e d   b-> d fis g) |
  %% 42
  a\f( g e-4 c g e c e) d-0( fis a-0 c d fis a fis) |
  %% 43
  a->\dim( g d b   e-> d b g   c-> b g d   a'->-4 g d-0 b\!) |
  %% 44
  g4 r r8 \hairpinCalmato a''8\>~( a16 g d b |
  %% 45
  e d b g\!) r8 c16->( b g d) r8 a'16->-4( g d-0 b |
  %% 46
  g2.\pp) r4 \bar "|."
}

studyXIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c' {
    \violinVoiceSettings
    \time 2/4
    \key es \major

    \tupletSpan 4
    \override TupletNumber.text = #tuplet-number::calc-fraction-text
    \omit TupletNumber
    
    \tuplet 3/2 {ees16( f g) aes-.( bes-. c-.)}
    \tuplet 3/2 {d( ees f) g-.( aes-. bes-.)} \bar "||"
    %% 2
    \tuplet 3/2 {ees,,-.\f f-.\p( g-. aes-. bes-. c-.)}
    \tuplet 3/2 {d-.\f ees-.\p( f-. g-. aes-. bes-.)} \bar "||"
    %% 3
    \tuplet 3/2 {ees,,->( f) g->( aes) bes->( c)}
    \tuplet 3/2 {d->( ees) f->( g) aes->( bes)} \bar "||"
    %% 4
    \tuplet 3/2 {ees,,-.-> f( g aes->) bes( c}
    \tuplet 3/2 {d->) ees( f g->) s s} \bar "||"
    %% 5
    \tuplet 3/2 {ees,->( f g aes) bes-. c-.}
    \tuplet 3/2 {d->( ees f g) aes-. bes-.} \bar "||"
    %% 6
    \tuplet 3/2 {ees,,->( f) g-. aes-. bes-. c-.}
    \tuplet 3/2 {d->( ees) f-. g-. aes-. bes-.} \bar "||"
    %% 7
    \tuplet 3/2 {ees,,-.\f f-.\p g-. aes-.\f bes-.\p c-.}
    \tuplet 3/2 {d-.\f ees-.\p f-. g-.\f aes-.\p bes-.} \bar "||"
    %% 8
    \tuplet 3/2 {ees,,-. f-.\f g-.\p aes-. bes-.\f c-.\p}
    \tuplet 3/2 {d-. ees-.\f f-.\p g-. aes-.\f bes-.\p} \bar "||"
    %% 9
    \tuplet 3/2 {ees,,-. f-. g-.\f aes-.\p bes-. c-.\f}
    \tuplet 3/2 {d-.\p ees-. f-.\f g-.\p aes-. bes-.\f} \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyXIprologII = ##f

studyXI = \new Voice \relative c' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegro energico." 4=123
  \key es \major

  \tupletSpan 4
  \override TupletNumber.text = #tuplet-number::calc-fraction-text
  
  \tuplet 3/2 {ees16-.\mf\< f-. g-. aes-. bes-. c-.}
  \tuplet 3/2 {d-. ees-. f-. g-. aes-. bes-.} |
  %% 2
  \tuplet 3/2 {aes-.\> g-. f-. ees-. d-. c-.}
  \tuplet 3/2 {bes-. aes-. g-. f-. ees-. d-._4} |
  %% 3
  \omit TupletNumber
  \tuplet 3/2 {c\< d-0 ees f g a-0 b c d ees f g} |
  %% 4
  \tuplet 3/2 {f\> ees d c bes aes g f ees d-4 c bes} |
  %% 5
  \tuplet 3/2 {aes\< bes c d-0 ees f g aes bes c d ees} |
  %% 6
  \tuplet 3/2 {d\> c bes a-4 g f ees d-4 c bes a c\!} |
  %% 7
  \override DynamicLineSpanner.staff-padding = #2.8
  \tuplet 3/2 {bes\< c d ees f g\! aes\> g bes aes f d\!} |
  %% 8
  \tuplet 3/2 {ees\< g aes bes c d\! ees\> d f ees c a\!} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 9
  \tuplet 3/2 {bes\< a c bes d c ees d f e g f} |
  %% 10
  \tuplet 3/2 {aes\f g bes aes e g f\dim c ees d a c} |
  %% 11
  \tuplet 3/2 {bes g bes aes e g f c ees d a c} |
  %% 12
  \tuplet 3/2 {bes\p\< c d ees f g aes bes c d ees f} |
  %% 13
  \tuplet 3/2 {g\> bes aes g f ees d c bes aes g f} |
  %% 14
  \tuplet 3/2 {ees\< g aes bes c d ees g aes bes g f} |
  %% 15
  \tuplet 3/2 {ees\> g f ees d c b aes g f ees d} |
  %% 16
  \tuplet 3/2 {c\< ees f g a b c ees f g ees d} |
  %% 17
  \tuplet 3/2 {c\> ees des c bes aes g f ees des c bes} |
  %% 18
  \tuplet 3/2 {aes\< c des ees f g aes c des ees c bes} |
  %% 19
  \tuplet 3/2 {a\> c ees d c bes a-4 g f ees d c} |
  %% 20
  \tuplet 3/2 {bes\< d ees f g a bes d ees f d c\!} |
  %% 21
  \tuplet 3/2 {b\p d g f ees d ees\cresc c g' ees c bes} |
  %% 22
  \tuplet 3/2 {a c f ees d c d bes f' d bes a-4\!}
  %% 23
  \tuplet 3/2 {g bes ees d c bes c a ees' c a-4 g} |
  %% 24
  \tuplet 3/2 {fis a d c bes a bes g d' bes g f} |
  %% 25
  \tuplet 3/2 {ees\f d ees bes' a bes c b c ees, d ees} |
  %% 26
  \tuplet 3/2 {d\ff fis a d fis a d,\> ees d c bes a} |
  %% 27
  \override DynamicLineSpanner.staff-padding = #3.3
  \tuplet 3/2 {g\f\< bes c d e fis\! g\> ees d c bes a} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 28
  \tuplet 3/2 {g ees d c bes a\! g bes c d bes g} |
  %% 29
  \tuplet 3/2 {des'\< ees g a bes c des g aes bes g des} |
  %% 30
  \tuplet 3/2 {c\> aes' ees des c bes aes ees des c bes aes} |
  %% 31
  \tuplet 3/2 {f'\< a bes c d e f ges f ees des c} |
  %% 32
  \tuplet 3/2 {des\> bes' f ees des c bes f des\! bes c des} |
  %% 33
  \tuplet 3/2 {ees\< ges aes bes c d\! ees\fz d\> ees ges f ees\!} |
  %% 34
  \tuplet 3/2 {d\dim bes' aes ges f ees d ces bes aes ges f\!} |
  %% 35
  \tuplet 3/2 {ees\< ges aes bes c d\! ees\fz d ees a, f' ees} |
  %% 36
  \tuplet 3/2 {d cis d ees->\cresc f ees d cis d a f' ees} |
  %% 37
  \tuplet 3/2 {d c bes a-> bes c bes f d_4 c-> d c\!} |
  %% 38
  \tuplet 3/2 {bes-> d f aes-> g fis g-> f e f-> ees d} |
  %% 39
  \tuplet 3/2 {ees\mf\< f g aes bes c d ees f g aes bes} |
  %% 40
  \tuplet 3/2 {a\> g f ees d c bes aes g f ees d} |
  %% 41
  \tuplet 3/2 {c\< d-0 ees f g a-0 b c d ees f g} |
  %% 42
  \tuplet 3/2 {f\> ees d c bes aes g f ees d-4 c bes} |
  %% 43
  \tuplet 3/2 {aes\< bes c d ees f g aes bes c d ees} |
  %% 44
  \tuplet 3/2 {d\> c bes aes_4 g f ees d_4 c bes a c\!} |
  %% 45
  \override DynamicLineSpanner.staff-padding = #3.3
  \tuplet 3/2 {bes\< c d_0 ees f g aes g bes\! aes\> f d\!} |
  %% 46
  \tuplet 3/2 {ees\< g aes bes c d\! ees\> d f ees c a\!} |
  %% 47
  \tuplet 3/2 {bes\< a bes c b c d cis d ees d ees} |
  %% 48
  \tuplet 3/2 {f e f g fis g aes g\> aes f e f} |
  %% 49
  \tuplet 3/2 {g\< fis g bes a bes\! aes\> g aes c, b c\!} |
  %% 50
  \tuplet 3/2 {bes\< a bes g' fis g\! f\> e-0 f d cis d\!} |
  \override DynamicLineSpanner.staff-padding = #0
  %% 51
  \tuplet 3/2 {ees->\f f g f ees d c-> d ees d c bes} |
  %% 52
  \tuplet 3/2 {aes-> bes c bes aes g f-> g aes f d_0 bes} |
  %% 53
  \tuplet 3/2 {ees-> f g f ees d c-> d ees d_4 c bes} |
  %% 54
  \tuplet 3/2 {aes-> g aes c bes aes bes-> d_0 f bes c d} |
  %% 55
  \tuplet 3/2 {ees-> g ees bes-> c d ees-> bes g aes-> f d} |
  %% 56
  \tuplet 3/2 {ees-> g ees bes-> c d_0 ees-> bes g aes-> bes d} |
  %% 57
  ees8 <d bes' f'>-. <ees bes' g'>-. <d bes' bes'>-. |
  %% 58
  <ees bes' g'>-. <bes aes' d>-. <bes g' ees'>-. <bes aes' d>-. |
  %% 59
  <bes g' ees'>8[ r16 <ees g,>16] <ees g,>8[ r16 <ees g,>16] |
  %% 60
  <ees g,>4. r8 \bar "|."
}

studyXprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c' {
    \time 4/4
    \key c \major

    c16->\p( e) c'( e, c-> e) c'( e, c-> f) b( f c-> f) b( f) |
    g,->( d' b') g'-. g->( b, d,) g,-. g4 r |
    g16->( d' b') f'-. f->( b, d,) g,-. g->( e' c') e-. e->( c e,) g,-. \bar "||"
    \repeat unfold 2 {c16->( e) c'-. e,-.} \repeat unfold 2 {c->( f) b-. f-.} |
    g,->( d') b'-. f'-. f->( b,) d,-. g,-. g4 r |
    \repeat unfold 2 {c16->( e c' e,)} \repeat unfold 2 {c->( f b f)} |
    g,->( d' b' g') g->( b, d, g,) g4 r \bar "||"
  }
  \header {
    piece = "Arpeggio"
  }
  \layout {
    indent = #0
  }
}

studyXprologII = \markup {
  \pad-around #1. {
    \override #'(line-width . 52)
    \wordwrap {
      This Number must also be practiced \italic{staccato,} the elbow
      perfectly steady and the wrist properly bent.
    }
    \override #'(line-width . 52)
    \wordwrap {
      Diese Nummer muss auch bei völliger Ruhe des Elbogens und
      richtiger Biegung des Handgelenks, gestoßen geübt werden.
    }
  }
}

studyX = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro, ma non tanto." 4=123
  \key c \major

  c16\p( e) c'( e,) c( e) c'( e,) \repeat unfold 2 { c( f) b( f)} |
  % 2
  \repeat unfold 2 {c( e) c'( e,)} c( g') e'-4( g,) c,( g') e'( g,)  |
  b,\cresc( g') d'( g,) b,( g') d'( g,) \repeat unfold 2 {d( c') fis( c)} |
  g,\f( d' b' g') g( b, d, g,) g4 r |
  %% 5
  d'16\p( a') f'( a,) d,( a') f'( a,) a\cresc( cis) e-0( cis) a( cis) e( cis) |
  \repeat unfold 2 {d,( d') f( d)} f,( a-0) a'( a,) f( a) a'( a,) |
  %% 7
  \repeat unfold 2 {e( a) g'( a,)} \repeat unfold 2 {d,( a') f'( a,)} |
  a,\f( a'-4 cis e-0) e( cis a a,) a4 r |
  %% 9
  d16\mf( a') f'( a,) d,( a') f'( a,) e\cresc( c') e-0( c) e,( c') e( c) |
  %% 10
  \repeat unfold 2 {f,->( d') a'( d,)} e,->( d') a'( d,) d,->( d') a'( d,) |
  %% 11
  \repeat unfold 2 {e,->( c') a'( c,)} e,->( b') a'( b,) e,->( b') gis'( b,) |
  %% 12
  a,\f( e' cis' a') a( cis, e, a,) a4 r |
  %% 13
  f'16->\p( a) f'( a,) f->( a) f'( a,) g->( bes) f'( bes,) g->( bes) e-0( bes) |
  %% 14
  \repeat unfold 2 {f( c') a'( c,)} \repeat unfold 2 {f,( a) f'( a,)} |
  %% 15
  \repeat unfold 2 {bes,->( f') d'( f,)} bes,->( f') e'( f,) bes,->( f') d'( f,) |
  %% 16
  a,( f') c'( f,) g,( e'-2) bes'-1( e,) f-2( a-0) f'-1( a,) d,( a') f'( a,) |
  g,\mf( d' b'-2 f'-1) f( b, d, g,) g( e'-1 c'-2 e-0) e( c e, g,) |
  %% 18
  g\f( ees' c' a') a( c, ees, g,) g\p( d' b' g') g( b, d, g,) |
  %% 19
  g\mf( d' b'-2 f'-1) f( b, d, g,) g( e'-1 c'-2 e-0) e( c e, g,) |
  %% 20
  g\f( d' c' fis) fis( c d, g,) g\mf( d' b' g') g( b, d, g,) |
  c\p( e) c'( e,) c( e) c'( e,) \repeat unfold 2 {c( f) b( f)} |
  %% 22
  \repeat unfold 2 {c( e) c'( e,)} \repeat unfold 2 {a,( e') c'( e,)} |
  %% 23
  b\cresc( g') e'-4( g,) b,( g') e'( g,) b,( fis') e'( fis,) b,( fis') dis'( fis,) |
  %% 24
  e( b') e( b) e,( b') gis'( b,) e,4\! r |
  %% 25
  a,16\p( e') c'( e,) a,( e') c'( e,) a-4\cresc( c) e-0( c) a-4( c) f( c) |
  %% 26
  e,\f( c') g'( c,) \repeat unfold 2 {e,( c') g'( c,)} f,( c') a'( c,) |
  g,\mf( f') d'( f,) g,( f') d'( f,) g,( f') e'( f,) g,( f') d'( f,) |
  %% 28
  a,( e') d'( e,) a,\cresc( e') d'( e,) a,( e') c'( e,) b( g') d'( g,\!) |
  %% 29
  c,( g') e'( g,) a-4( c) e-0( c) a-4\cresc( c) e-0( c) a( c) f( c) |
  %% 30
  e,\f( c') g'( c,) \repeat unfold 2 {e,( c') g'( c,)} f,( c') a'( c,) |
  g,\mf( f') d'( f,) g,( f') d'( f,) g,( f') e'( f,) g,( f') d'( f,) |
  g,\f( d' b'-2 f'-1) f( b, d, g,) g( d' b' f') f( b, d, g,) |
  c\p( e) c'( e,) c( e) c'( e,) \repeat unfold 2 {c( f) b( f)} |
  %% 34
  \repeat unfold 2 {c( e) c'( e,)} \repeat unfold 2 {c( g') e'( g,)} |
  b,( g') d'( g,) b,\cresc( g') d'( g,) \repeat unfold 2 {d( c') fis( c)} |
  g,\f( d' b' g') g( b, d, g,) g4 r |
  %% 37
  \repeat unfold 2 {d'16( a') f'( a,)} a-4\cresc( cis) e-0( cis) a( cis) e( cis\!) |
  d,\mf( d') f( d) d,( d') f( d) \repeat unfold 2 {f,( d') a'( d,)} |
  %% 39
  g,,\f( e' c' g') g( c, e, g,) g( d' b'\dim g') g( b, d, g,\!) |
  c( e c' e-0) e( c e, c) c\cresc( g' bes e) e( bes g c,) |
  c\f( f a f') f( a, f c) c\dim( d b' g') g( b, d, c) |
  %% 42
  c\p( e c' e) e( c e, c) c\cresc( g' bes e) e( bes g c,) |
  %% 43
  c\f( f a f') f( a, f c) c\dim( d b' g') g( b, d, c\!) |
  \repeat percent 2 {
    c( e c' e-0) e( c e, c) c->( g' c e) e( c g c,) |
  }
  \repeat percent 2 {
    \repeat unfold 2 {
      c->( e) c'( e,) g,->( e') c'( e,)
    }
  }
  c->( e) c'( e,) g,->( e') c'( e,) c4-> r \bar "|."
}

studyIXprologI = ##f
studyIXprologII = ##f

studyIX = \new Voice \relative c' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegro assai." 4=123
  \key g \major

  g16-.\mf b-. a-._\markup {\italic "sempre stacc."} c-. b-. d-. c-. a-. |
  %% 2
  g b a c b d c a | g\cresc b a c b d-4 c e | d-0 fis e g\! fis a g b |
  %% 5
  a-0\mf c b d c e-4 d b | a c b d c e-4 d b |
  a\cresc c b d c e-4 d fis | e-0 g fis a\! g b a c-4 |
  %% 9
  b-4\dim g fis a g e-4 d fis | e-4 c b d\! c a-4 g b |
  a-4 fis e g fis-2 d c e | d-4 b a c b g a d-4 |
  %% 13
  g,\cresc b a c b d-4 c a | g b a c b d-4 c a\! |
  g b a c b d c e | d-0 fis e g fis a-4 g b |
  a-0 c b d c e d b | a-0 c b d c e-4 d b |
  a-0 c b d c e d-3 fis | e-0 g fis a g b a c-4 |
  %% 21
  b-4\dim g fis a g e-4 d fis | e-4 c b d\! c a g b |
  a-4 fis e g fis d-4 c e | d-4 b a c b g a d-4 |
  %% 25
  g,\mf bes a c bes d-4 c a | g bes a c bes d-4 c a |
  %% 27
  g bes a\cresc c bes d-4 c ees | d-0 f ees g f a g bes\! |
  %% 29
  a-0\mf c bes d c ees d bes | a-0 c bes d c ees d bes |
  a-0 c bes\dim g f a-4 g ees | d-0 f ees c bes d c a\! |
  %% 33
  bes\mf d-4 c ees d-0 f ees c | bes d-4 c ees d-0 f ees c |
  bes d-4 c ees d-0\cresc f ees g | f a-4 g bes a-0 c bes d\! |
  %% 37
  c\mf ees d b c\cresc ees d b | c g' fis g\! a g ees c |
  %% 39
  cis\cresc e d b cis e d b\! | cis e-4 dis e-0 fis e-0 cis a |
  %% 41
  d,\p fis e g fis a g e | d fis e g fis a g e |
  d fis e g fis a g b | a cis b d cis e d fis |
  %% 45
  e\mf g fis a g b a fis | e g fis a g b a fis |
  e g fis d cis\dim e d b | a cis b g fis a g e |
  d\p f e g f a g e | d\cresc f e g f a f d\! |
  %% 51
  g, bes a c bes d c a | g bes\cresc a c bes d bes g |
  %% 53
  ees'\mf g f aes g bes aes f | ees\cresc g f aes g bes g ees |
  %% 55
  aes\f c bes des c ees des bes | aes c bes des c ees des bes |
  %% 57
  aes  c bes des c\cresc ees des f | ees g f aes g bes aes f |
  ees\ff g f aes g bes aes f | ees g f aes g bes aes f |
  %% 61
  ees\dim g f des c  ees des bes | a\f c bes des c ees des bes |
  a c bes des c ees des bes | a\< f' e f\! ges\> f ees c\! |
  %% 65
  bes\< des c des\! ees\> des bes aes\! | g\mf ees d aes' g ees d aes' |
  %% 67
  g ees d aes' g ees d aes' | g ees d ees f ees d ees |
  c aes g aes bes aes g aes | g\cresc bes des e g bes des e-0 |
  %% 71
  g\ff bes g e g bes g e | f aes f\dim d b aes f d\! |
  b d f d b d f d | c dis-1 fis-2\cresc a-0 c dis-4 fis a |
  %% 75
  c-4\ff a-3 fis a c a fis a | g-> b g e-0 c-> e-4 c a |
  %% 77
  g-> b g e fis-> a fis dis-1 | e-1\p g fis a-4 g b a-0 fis |
  e g fis a g b a fis | e g fis a g\cresc b a c |
  b dis cis e dis fis e g | fis\mf a g b a c-4 b-4 g |
  fis a g b a c-4 b-4 g | fis a g e-0 dis\dim fis e-0 c |
  %% 85
  b d c a-0 g b a-0 fis\! | g\mf b, a c b d-4 c a |
  g b a c b d-4 c a | g\cresc b a c b d c e |
  %% 89
  d fis e g fis a g b\! | a c b d c e d b |
  a c b d c e d b | a c b\cresc g fis a g e |
  %% 93
  d fis e c b d c a\! | g\mf b a c b d c a |
  g b a c b d-4 c a | g b a c b d-4 c e |
  d fis e g fis a g b | a\mf c b d c e d b |
  a c b d c e d b | a\cresc c b d c e d fis |
  e g fis a g b a c-4 | b-4\f g fis a g e-4 d fis |
  e-4\dim c b d c a g b | a fis e g fis d-4 c e |
  d b a c b g a d |
  g,\p g g g \repeat unfold 3 {\repeat tremolo 4 {g}} |
  g8 r <g d' b' g'>\f r | R2 \bar "|."
}

studyVIIIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative c' {
    \time 3/4
    \key d \major

    d8( e fis g a b | a fis' e d cis d)
    e( b g' e b' a | g fis e d cis b) \bar "|."
  }
  \layout {
    indent = #0
  }
}

studyVIIIprologII = ##f

studyVIII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 3/4
  \tempo "Commodo." 4=111
  \key d \major

  d8\mf( e fis g a-0 b) | a-0( fis' e-0 d cis d) |
  %% 3
  e-4( b g' e-0 b' a) | g( fis e-4 d cis b) |
  %% 5
  a-4( fis cis' a-0 e' d) | cis( b a-4 g fis g) |
  %% 7
  b( a-0 fis d' a fis') | d( b a-0 fis d-0 cis) |
  %% 9
  b( cis d-0 e fis g) | fis( d' cis b ais b) |
  %% 11
  cis( a\cresc fis a cis fis) | a( gis fis e-4 dis cis) |
  %% 13
  b\f( cis dis e-0 fis gis) | b( a gis fis e-4 dis) |
  %% 15
  e-4\dim( gis e b gis e') | e,( fis gis a-0 b bis) |
  %% 17
  cis\p( a-4 gis a e cis') | a( fis' e-4 cis b' a) |
  %% 19
  a( gis b, fis' e-4 d) | b( gis e d' cis b) |
  %% 21
  cis( a-4 gis a e cis') | a( fis' e-4 cis b' a) |
  %% 23
  a->( gis b, fis' e-4 d) | b( gis e d' cis b) |
  %% 25
  cis( a-4\cresc gis a-0 fis' e) | dis( b-1 ais-1 b-1 gis' fis) |
  %% 27
  e-0( cis bis cis a' gis) | fis( dis cisis dis b' a) |
  %% 29
  gis\f( b a gis fis e-0) | cis( fis a fis cis a) |
  %% 31
  gis\dim( b e-4 b gis e) | dis-1( fis-2 a-4 fis-2 dis-4 b) |
  %% 33
  e-1\cresc( dis-1 e-1 fis gis a-0) | b( cis d e fis gis) |
  %% 35
  a( ais b a\dim gis fis) | e-4( d cis b ais b) |
  %% 37
  cis\p( a-4 gis a e cis') | a( fis' e-0 cis b' a) |
  %% 39
  a->( gis b, fis' e-4 d) | b( gis e d' cis b) |
  %% 41
  cis( a-4 gis a e cis') | a( fis' e-0 cis b' a) |
  %% 43
  a->( gis b, fis' e-4 d) | b( gis e d' cis b) |
  %% 45
  cis( a-4\cresc gis a-0 fis' e) | d( b ais b gis' fis) |
  %% 47
  e-4( cis bis cis\! b' a) | gis( fis eis\dim fis d b) |
  %% 49
  cis( d dis e cis a) | gis( a-0 ais b gis e\!) |
  %% 51
  fis\fz( a-0 cis fis a gis) | eis->( fis e-4 d cis b) |
  %% 53
  dis->( e d cis b a) | cis->( d cis b a-4 gis) |
  %% 55
  a-0( e'-4 cis a e cis) | a\cresc( b cis d e eis) |
  %% 57
  fis\mf( e fis g a-0 b) | a( fis' e-0 d cis d) |
  %% 59
  e-4( b g' e-0 b' a) | g( fis e-4 d cis b) |
  %% 61
  a-4( e cis' a-0 e' d) | cis( b a-4 g fis g) |
  %% 63
  b( a-0 fis d' a fis') | d( b a-0 fis d-0 cis) |
  %% 65
  b( cis d e fis g) | fis( d' cis b ais b) |
  %% 67
  cis( a\cresc fis a cis fis) | a( gis fis e-4 d cis) |
  %% 69
  b( cis d dis-4\dim fis-1 e-0) | d( b gis e d-4 b) |
  %% 71
  a\p( b\cresc cis d-0 e fis) | g( fis a g fis e) |
  %% 73
  d\mf( e fis g a-0 b) | a( fis' e-0 d cis d) |
  %% 75
  e( b g' e-0 b' a) | g( fis e-4 d cis b) |
  %% 77
  a( e cis' a-0 e' d) | cis( b a-4 g fis g) |
  %% 79
  b( a-0 fis d' a fis') | d( b a-0 fis d-0 cis) |
  %% 81
  b\f( d g b d g) | g->( e cis g e cis) |
  %% 83
  ais->( cis fis ais-4 cis fis) | fis->( d b fis d-4 b) |
  %% 85
  g->( b e g b e) | e->( cis a-4 g\dim e cis) |
  %% 87
  d-0( fis a d fis b) | a( fis d a-4 fis d\!) |
  %% 89
  b\f( d g b d g) | g->( e cis g e cis) |
  ais->( cis fis ais-4 cis fis) | fis->( d b fis d-4 b) |
  g->( b e g b e) | e->( cis a-4 g e cis) |
  d( fis a d fis b) | a( fis d b a-4 fis) |
  d\dim( b' a-4 fis d b') | a-4( fis d b' a-4 fis) |
  d4\! r r | <d a' fis'>\ff r r | <d d>2.~ | <d d>4 r r \bar "|."
}

studyVIIprologI = ##f
studyVIIprologII = ##f

studyVII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key bes \major

  bes8-.\mf f'-. d-. bes'-. f d' bes f' | d bes' f d bes f' d bes |
  %% 3
  f c' a f' c a' f-1 c'-4 | a-3 f c a' f c a-0 f |
  %% 5
  d bes' f d' bes f' d bes | g d' bes g' d bes' g d |
  %% 7
  ees,\cresc c' g ees' c g' ees c | e, bes'-4 g-3 e' bes g' e-4 bes |
  %% 9
  a\f f' c a-4 f c a\dim c | f a-0 c e f fis\cresc g a |
  %% 11
  bes\> d, f bes, d f, bes d, | f\< bes, d-0 f bes d f bes |
  a\> c, f a, c f, a-4 c, | f\< a, c f a-0 c f ees |
  %% 15
  d\> bes f' d\! bes' f d bes | aes\> bes f' d\! bes' f d bes |
  %% 17
  g bes g' ees bes' g ees bes | f\> bes f' d\! aes' f d bes |
  %% 19
  ees,\mf bes' g ees' bes g' ees bes' | g ees bes g' ees bes g ees |
  %% 21
  d b' f d' b f'-4 d aes'-2 | f d b d b aes f d-0 | c g' ees c' g ees' c g' |
  %% 24
  ees c g ees' c g ees c | cis-4 g'-3 e cis' g e'\cresc cis g'-1 |
  %% 26
  e-0 cis g e'-4 cis g e cis\! | d-0 a'-0 fis d' a fis' d\dim a' |
  %% 28
  g d bes' g d bes g bes\! | a-0\f d, fis d a' fis d' a |
  %% 30
  g\dim bes d bes g d-0 bes g\! | d'\fz fis a fis d' a fis' d |
  d,\fz f a f d' a f' d | f\fz ees c a' f ees c a |
  %% 34
  f\dim ees' c a f ees c a | bes\mf f' d bes' f d' bes f' |
  %% 36
  d bes' f d bes f' d bes | f c' a f' c a' f-1 c'-4 |
  %% 38
  a-3 f c a' f c a f | d bes' f d' bes f' d bes |
  %% 40
  g d' bes g' d bes' g d | e,\cresc cis' g e' cis bes' g e |
  %% 42
  g f d bes a-0 f ees c | b\f aes' f d' b f'-4 d-3 b-1 |
  %% 44
  c, g' ees c' g ees' c g | a, ges' ees c' ges ees' c a |
  %% 46
  bes, f' d bes' f d' bes f | g\ff b c ees f, a-0 bes d |
  %% 48
  ees,\dim g a c d, fis g bes | ees,\cresc g bes c e, g bes cis |
  %% 50
  f,\f bes d g f ees c a | bes\ff bes' aes f d\dim bes aes f |
  %% 52
  ees g' ees c a f ees c | bes\f bes' aes f d' bes aes f' |
  %% 54
  g, f' ees\dim ges, f ees' d f,\! | e d' c ees, c bes'-1 a-0 f |
  %% 56
  c'\cresc bes f ees' d bes g' f\! | d bes' f d\dim c bes f d-0 |
  %% 58
  bes4\! r <d' f> <d f> | <d bes'>\mf r <f a, f> r |
  %% 60
  <d f, bes,>2 <f, a,>4 <f a,> | <bes d, bes> r <f a,> r |
  %% 62
  \once \override Hairpin.to-barline = ##f
  <d bes>1~\> | <d bes>4\! r4 <d' bes'> <d bes'> |
  <bes' d, f, bes,>\f^\markup {\italic "sec."} r2. \bar "|."
}

studyVIprologI = ##f
studyVIprologII = ##f

studyVI = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro molto." 4=123
  \key es \major

  \once \override Hairpin.to-barline = ##f
  \partial 4 \tuplet 3/2 {g8\downbow\f\<( fis g} |
  %% 1
  aes4)\! \tuplet 3/2 {g8\<( fis g} ees4)\!
  \once \override Hairpin.to-barline = ##f
  \tuplet 3/2 {c8\<( b c} |
  %% 2
  g4)\! \tuplet 3/2 {c8(\< b c} ees4)\! \tuplet 3/2 {g8( fis g} |
  %% 3
  ees'4) \tuplet 3/2 {d8( ees d} c4) \tuplet 3/2 {bes8( c bes} |
  %% 4
  aes4) \tuplet 3/2 {g8( aes g} f4) \tuplet 3/2 {ees8( f ees} |
  %% 5
  d4) \tuplet 3/2 {aes'8( g aes} g4) \tuplet 3/2 {f8( ees f} |
  ees4) \tuplet 3/2 {g'8( fis g} ees4)\dim \tuplet 3/2 {c8( b c} |
  %% 7
  a4) \tuplet 3/2 {d8( cis d} d,4) \tuplet 3/2 {fis'8\mf( e fis} |
  g4) \tuplet 3/2 {bes8( a bes} g4) \tuplet 3/2 {bes,8\p( a bes} |
  d4) \tuplet 3/2 {ees8( d ees} f4) \tuplet 3/2 {aes8\cresc( g aes} |
  %% 10
  g4) \tuplet 3/2 {f8( g f} ees4) \tuplet 3/2 {d8( ees d} |
  c4) \tuplet 3/2 {bes8( c bes} a4) \tuplet 3/2 {f'8\f( e f} |
  d4) \tuplet 3/2 {c8( d c} bes4) \tuplet 3/2 {bes8\p( a bes} |
  d4) \tuplet 3/2 {ees8( d ees} f4) \tuplet 3/2 {aes8\cresc( g aes} |
  g4) \tuplet 3/2 {f8( g f} ees4) \tuplet 3/2 {d8( ees d} |
  %% 15
  c4) \tuplet 3/2 {c8\f( b c} ees4) \tuplet 3/2 {ees8( d c} |
  b4) \tuplet 3/2 {d8( cis d} g4) \tuplet 3/2 {b8\p( ais b} |
  %% 17
  d,4) \tuplet 3/2 {b'8( ais b} c,4) \tuplet 3/2 {a'8( gis a} |
  %% 18
  b,4) \tuplet 3/2 {c8( b c} d4) \tuplet 3/2 {b'8\cresc( ais b} |
  d,4) \tuplet 3/2 {b'8( ais b} a4) \tuplet 3/2 {fis8( eis fis} |
  %% 20
  g4\f) \tuplet 3/2 {d8( cis d} g,4) \tuplet 3/2 {b8\p( c b} |
  %% 21
  dis4) \tuplet 3/2 {b8\cresc( c b} e4) \tuplet 3/2 {b8( c b} |
  b'4\dim) \tuplet 3/2 {a8( b a} g4) \tuplet 3/2 {g8( fis e} |
  d4\p) \tuplet 3/2 {e8( d b} a4) \tuplet 3/2 {d8( c a} |
  ais4\>) \tuplet 3/2 {ais8( b c\!} b4) \tuplet 3/2 {b8( c b} |
  %% 25
  b'4\f) \tuplet 3/2 {a8( b a} g4) \tuplet 3/2 {fis8( g fis} |
  a4\dim) \tuplet 3/2 {g8( a g} e4) \tuplet 3/2 {c8( d c} |
  e4) \tuplet 3/2 {d8( e d} c4) \tuplet 3/2 {a8( b a} |
  g4) \tuplet 3/2 {g8\p( fis g} g,4) \tuplet 3/2 {g'8( fis g} |
  b4) \tuplet 3/2 {c8( b c} d4) \tuplet 3/2 {g8\cresc( fis g} |
  %% 30
  f4) \tuplet 3/2 {ees8( d ees} d4) \tuplet 3/2 {c8( b c} |
  ees4\f) \tuplet 3/2 {ees8( d c} a'4) \tuplet 3/2 {ees8\dim( d c} |
  b4) \tuplet 3/2 {d8( cis d} g4\p) \tuplet 3/2 {g,8( fis g} |
  b4) \tuplet 3/2 {c8( b c} d4) \tuplet 3/2 {g8\cresc( fis g} |
  f4) \tuplet 3/2 {ees8( d ees} d4) \tuplet 3/2 {c8( b c} |
  %% 35
  ees4\f) \tuplet 3/2 {ees8( d c} fis4) \tuplet 3/2 {ees8\dim( d c} |
  b4) \tuplet 3/2 {d8( cis d} g4) \tuplet 3/2 {g8\<( a g} |
  b4\f) \tuplet 3/2 {g8( a g} e4\dim) \tuplet 3/2 {cis8( d cis} |
  d4) \tuplet 3/2 {f8( g f} a4) \tuplet 3/2 {f8\<( g f} |
  aes4\f) \tuplet 3/2 {f8( g f} d4\dim) \tuplet 3/2 {b8( c b} |
  %% 40
  c4) \tuplet 3/2 {d8( c d} ees4) \tuplet 3/2 {c8\p( b c} |
  ees4) \tuplet 3/2 {c8( b c} aes4) \tuplet 3/2 {f8( e f} |
  g4) \tuplet 3/2 {g8( fis g} g,4) \tuplet 3/2 {g'8( fis g} |
  b4\cresc) \tuplet 3/2 {g8( fis g} c4) \tuplet 3/2 {g8( fis g} |
  %% 44
  d'4\f) \tuplet 3/2 {g,8\p( fis g} g,4) \tuplet 3/2 {g'8( fis g} |
  c4) \tuplet 3/2 {g8( fis\cresc g} d'4) \tuplet 3/2 {g,8( fis g} |
  %% 46
  ees'4\f) \tuplet 3/2 {g,8\p( fis g} g,4) \tuplet 3/2 {g'8( fis g} |
  d'4\cresc) \tuplet 3/2 {g,8( fis g} ees'4) \tuplet 3/2 {g,8\f( fis g} |
  %% 48
  c4\dim^\rall) \tuplet 3/2 {g8( fis g} b4\p)
  \once \override Hairpin.to-barline = ##f
  \tuplet 3/2 {g8\f\<^\aTempo( fis g} |
  %% 49
  aes4)\! \tuplet 3/2 {g8\<( fis g} ees4\!)
  \once \override Hairpin.to-barline = ##f
  \tuplet 3/2 {c8\<( b c} |
  %% 50
  g4)\! \tuplet 3/2 {c8( b c} ees4) \tuplet 3/2 {g8( fis g} |
  ees'4) \tuplet 3/2 {d8( ees d} c4) \tuplet 3/2 {bes8( c bes} |
  aes4) \tuplet 3/2 {g8( aes g} f4) \tuplet 3/2 {ees8( f ees} |
  %% 53
  d4) \tuplet 3/2 {aes'8( g aes} g4) \tuplet 3/2 {f8( ees f} |
  %% 54
  ees4) \tuplet 3/2 {g'8( fis g} ees4) \tuplet 3/2 {c8( b c} |
  %% 55
  aes'4) \tuplet 3/2 {f8( e f} g4) \tuplet 3/2 {b,8( a b} |
  c4) \tuplet 3/2 {e8\p( f e} g4\cresc) \tuplet 3/2 {bes8( a bes} |
  aes4\dim) \tuplet 3/2 {f8( e f} c4) \tuplet 3/2 {aes8( g aes} |
  f4\cresc) \tuplet 3/2 {f8( g aes} g4) \tuplet 3/2 {g,8\f( a b} |
  %% 59
  c4) \tuplet 3/2 {ees8\p( d ees} g4) \tuplet 3/2 {c8( b\cresc c} |
  %% 60
  e4-4) \tuplet 3/2 {f8( e-0 f} g4) \tuplet 3/2 {bes8( a bes} |
  %% 61
  aes4\dim) \tuplet 3/2 {f8( e f} c4) \tuplet 3/2 {aes8( g aes} |
  f4\cresc) \tuplet 3/2 {f8( g aes} g4) \tuplet 3/2 {g,8( a b} |
  %% 63
  c4) \tuplet 3/2 {c8( b c} ees4) \tuplet 3/2 {g8( fis g} |
  c4) \tuplet 3/2 {c8( b c} ees4) \tuplet 3/2 {g8( fis g} |
  c1\f) | <c, ees,>2\p <c ees,> | <c ees,>2.->\fermata \bar "|."
}

studyVprologI = ##f
studyVprologII = ##f

studyV = \new Voice \relative c''' {
  \violinVoiceSettings
  \time 6/8
  \tempo "Allegro vivace." 8=136
  \key a \major

  a8-.\f gis8-. fis-. e-.-4 d-. cis-. | b-. cis-. b-. a-.-4 e-. cis-. |
  %% 3
  b cis d-0 e fis gis | a-0 b cis d4 r8 |
  %% 5
  b'8 a-. gis-. fis-. e-.-4 d-. | cis d cis b gis d-0 |
  %% 7
  cis d e fis gis a | b cis d e4 r8 | fis8\mf d a a'-. gis-. fis-. |
  %% 10
  e-4 cis a-0 e' d cis | b cis d e, fis gis | a e d-4 cis b a |
  %% 13
  fis' d a a' gis fis | e fis gis a b cis | b\cresc cis dis e fis gis |
  %% 16
  a gis b a fis dis | e\ff fis e dis cis dis | e gis b b, cis dis |
  %% 19
  e fis e dis cis dis | e gis b b, cis dis | e b' a gis\dim fis e-4 |
  %% 22
  dis cis b a-4 gis fis | e\mf fis gis a ais b |
  %% 24
  gis\cresc a ais b c cis | d cis e d b gis | e gis b e fis gis |
  %% 27
  a\f gis fis e-4 d cis | b cis b a-4 e cis | b cis d e fis gis |
  %% 30
  a b cis d4 r8 | b'8 a gis fis e-4 d | cis d cis b gis d-0 |
  cis d e fis gis a | b cis d e4 r8 | e-4 cis e-0 g-> a g |
  %% 36
  fis d b b b cis | d\dim b d f-> g f | e-4 c a a a b | c b a a b c |
  b\p gis e e gis b | c-> b a a b c | b gis e d-4 c b |
  %% 43
  a\mf b c d-0 e f | e fis gis a-0 b c | a b c d e-0 f |
  %% 46
  e fis gis a4 r8 | b,,8\cresc c d-0 e f g | d e f g a-0 b |
  f g a-0 b c d | b d e-0 f4 r8 | c,8\f d e f g a-4 |
  %% 52
  g a-0 b c d e-4 | c d e-0 f g a | g a b-4 c4-4 r8 |
  %% 55
  c-4\ff a-3 g fis e-4 dis | e b a-4 g fis e | dis fis a-0 b dis fis |
  %% 58
  e b' a g fis e | f d c b a-4 gis | a-0 e'-4 d c b a-0 |
  %% 61
  a-4\dim g f f e dis | e\cresc gis b e fis gis |
  a\f gis fis e-4 d cis | b cis b a-4 e cis | b cis d-0 e fis gis |
  %% 66
  a b cis d4 r8 | b'8 a gis fis e-4 d | cis d cis b gis d-0 |
  %% 69
  cis d e fis gis a-0 | b cis d e4-4 r8 | fis8\mf d a a' gis fis |
  %% 72
  e-4 cis a e' d cis | b cis d e, fis gis | a e d-4 cis b a |
  %% 75
  fis' d a a'-4 gis fis | e fis\cresc gis a b cis | b cis d e fis gis |
  %% 78
  a\f b a gis fis gis | a e-0 cis d e d | cis\dim b a-4 gis fis gis |
  a e cis b cis b | a cis\cresc d-0 e fis gis |
  a-4 e fis gis a-0 b | cis gis a-0 b cis d | e cis d e-0 fis gis |
  a\f b a gis fis gis | a e-0 cis a-0 e cis | a4 r8 r4. |
  <e' cis' a'>4 r8 r4. | a,2.\fermata \bar "|."
}

studyIVprologI = ##f
studyIVprologII = ##f

studyIV = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro." 4=123
  \key c \major

  e16\p( g \repeat unfold 5 {e g} f-> a f a) |
  %% 2
  e( g e g f-> a f a e g e g f-> a f a) |
  e( g e g c-> e\cresc c e b-> d b d a-> c a c) |
  %% 4
  gis\f( b e-0 fis \repeat unfold 4 {gis b} a-> c-4 a c) |
  gis( b-4 gis b a-> c-4 a c gis b-4 gis b a-> c-4 a c) |
  %% 6
  gis\dim( b gis b a f a f e g e g f-1 d-3 f-4 d-3) |
  c\p( e \repeat unfold 5 {c e} b-> d b d) |
  %% 8
  c( e c e b-> d b d c e c e b-> d b d) |
  a( c \repeat unfold 5 {a c} b-> e b e) |
  %% 10
  a,( c a c b-> e\cresc b e a, c a c bes-> c bes c) |
  a\f( c a c \repeat unfold 4 {f a} g-> bes g bes) |
  %% 12
  f( a f a g-> bes g bes f a f a e-> g e g) |
  d-3( f-4 \repeat unfold 5 {d f} cis-> e-4 cis e) |
  %% 14
  d-3( f-4 d f c-> e c e b d b d a-> c a c) |
  b\p( g d-4 b \repeat unfold 4 {g b} a-> d a d) |
  %% 16
  g,( b g b a-> d a d g, b g b a-> d a d) |
  b( d-0 g a-0 \repeat unfold 4 {b d} c-> e c e) |
  %% 18
  b( d b d a-> c a c b g d-4 b d-> c a b) |
  g\mf( b \repeat unfold 5 {g b} d-> g d g) |
  %% 20
  dis\cresc( g dis g \repeat unfold 4 {e g} f g f g\!) |
  e\p( g \repeat unfold 5 {e g} f-> a f a) |
  %% 22
  e( g e g f-> a f a e g e g f-> a f a) |
  e( g e g c-> e\cresc c e b-> d b d a-> c a c) |
  %% 24
  gis\f( b e-0 fis \repeat unfold 4 {gis b} a-> c a c) |
  gis( b gis b a-> c a c gis b gis b a-> c a c) |
  %% 26
  gis\dim( b gis b a-> f a f e g e g f-1 d-3 f-4 d-3\!) |
  cis\f( e \repeat unfold 5 {cis e} bis-> dis bis dis) |
  %% 28
  cis( e cis e bis-> dis bis dis cis e cis e g-> e-0 g e) |
  f\ff( a \repeat unfold 5 {f a} e gis e gis) |
  %% 30
  f( a f a e-> gis e gis f a f a e-> g e g) |
  f\f( d a-4 f \repeat unfold 4 {d f} e-> a e a) |
  %% 32
  d,( f d f e-> a e a d, f d f a-> d a d) |
  b\mf( d \repeat unfold 5 {b d} ais->-1 cis-2 ais cis) |
  %% 34
  b( d b d ais->-1 cis\cresc ais cis b d b d b-> dis b dis) |
  c\f( e \repeat unfold 5 {c e} b-> dis b dis) |
  %% 36
  c( e c e b-> dis b dis c e c e b-> d b d) |
  a( c \repeat unfold 5 {a c} b-> e b e) |
  %% 38
  a,( c a c b-> e b e a, c a c bes-> c bes c) |
  a\ff( c a c \repeat unfold 4 {f a} e-> gis e gis) |
  f( a f a e-> g e g d->-3 f-4 d f c-> e c e) |
  b( d \repeat unfold 5 {b d} ais-> cis ais cis) |
  b( d b d ais-> cis ais cis b d b d d,-> f d f) |
  e\f( g \repeat unfold 3 {e g} c-> e c e c e c e) |
  a,->( c a c a c a c f-> a f a f a f a) |
  g->( c g c g c g c g-> e g e c-> e c e) |
  f( b f b f b f b f->-1 d-3 f-4 d-3 b-> d b d) |
  c->( e c e c e c e c g e g e g e g) |
  c->\dim( e c e c e c e c g e g e g e g\!) |
  c4_\markup {\italic "poco rall."} r <c, g' c e>^\markup {\upright "pizz."} r |
  c2.^\markup{\upright "arco"} r4 \bar "|."
}

studyIIIprologI = ##f
studyIIIprologII = ##f

studyIII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 2/4
  \tempo "Allegretto." 4=123
  \key f \major

  f8-.\mf g16-._\markup {\italic "semplice"} a-.-0 bes8-. c16-. d-. |
  %% 2
  c8-. a'16-. g-. f8-. e16-.-4 d-. | c8-. a16-. d-. c8-. a16-. f-. |
  fis8-. g16-. a-.-4 g8-. c16-. bes-. |
  %% 5
  a8-4\cresc g16 a-0 bes8 c16 d | c8\f a'16 g f8 e16-4 d |
  %% 7
  c8\dim d16 dis e8-4 d16 b | a8\p c16 b a8 bes16\fz g |
  %% 9
  f8\f g16 a-0 bes8 c16 d | c8 a'16 g f8 e16-4 d | c8 a16 d c8 a16 f |
  %% 12
  fis8 g16 a-4 g8 c16 bes | a8-4 g16 a-0 bes8 c16 d |
  c8 a'16 g f8 e16-4 d | g8 e16-4 c g8 a16-0 b |
  %% 16
  c8 e16-4 d c8 e16-0\p f | g8\< g16 a bes8\> g16 f\! |
  %% 18
  e8 g16\p f e8 g,16 a | bes8\< bes16 c d8\> bes16 g\! | e8 g16 e c8 d16 e |
  %% 21
  f8\cresc g16 a bes8 c16 d | c8\f f16 ees d8 bes'16 g |
  f8\dim e16 d c8 bes16 g\! | f8 a16-4 g f8 a16-0\f cis |
  d8 cis16 d e8-4 d16 e-0 | f8 e16-4 d cis8 d16 e-0 |
  %% 27
  f8 e16 f g8 f16 g | a8 g16 f g8 g16\ff a | bes8 a16 g a8 g16 f |
  %% 30
  g8 f16 e f8 e16 d | e8-4 d16 cis d8 d16 f | a8 a,16 a a8 a,16\p a |
  a8 b16 cis d8-0 f16 g | a8-0 b16 cis d8 e16-0 f |
  %% 35
  a8\f g16 f g8 f16 e | f8 e16-4 d cis8 b16\p cis |
  d8 cis16 d e8-4 d16 e-0 | f8 e16-4 d cis8 d16\cresc e-0 |
  f8 e16 f g8 f16 g | a8 g16 f g8 g16\ff a | bes8 g16 e a8 f16 d |
  %% 42
  e8-4\dim cis16 a d8 a16 f\! | ees8 g16 bes a8 cis16 e-4 |
  d8 a16 f d8 d'16 d | ees8\fz c16 a f8 g'16 a |
  bes8\fz f16 d bes8 c16 cis | d8\fz c16 a fis8 e16 fis |
  %% 48
  g8\fz d16 bes g8 g'16\p f | e8\cresc bes'16-4 a-4 g8 e'16-4 d |
  %% 50
  c8 g'16 f e8-0 bes'16 a | g8\dim g16 f e8-0 e16-4 d |
  c8 c16 bes a8-0\mf a16-4 g | f8 g16 a-0 bes8 c16 d |
  c8 a'16 g f8 e16-4 d | c8 a16 d c8 a16-4 f |
  fis8 g16 a-4 g8 c16 bes | a8-4\cresc g16 a-0 bes8 c16 d |
  %% 58
  c8\f a'16 g f8 e16-4 d | g8 e16-4 c g8 a16-0 b |
  c8 e16-4 d c8 e16-0\p f | g8\< g16 a bes8\> g16 f\! |
  %% 62
  e8-0 g16\p f e8 g,16 a | bes8\< bes16 c d8\> bes16 g\! |
  %% 64
  e8 g16 e c8 d16 e | f8\cresc g16 a-0 bes8 c16 d |
  %% 66
  c8\f f16 ees d8 bes'16 g | f8\dim e16-4 d c8 bes16 g |
  f8 a16 c f8 c16\cresc f | a8 g16 e f8 a,16 d |
  %% 70
  f8 ees16 c d8 bes'16\dim g | f8 e16-4 d c8 bes16 g |
  f8 a16 c g8 f16\cresc g | a8-4 g16 e f8 a,16 d-0 |
  f8 ees16 c d8 bes16 g\dim | c8 a'16-4 f e8 d16 e |
  %% 76
  f8\cresc g16 bes a8 e'16-0 g | f8\f g16 bes a8 e16 g |
  f8 <f, a,>\p <f a,> <f a,> | <f a,> e16\pp g f8 e16 g | f4. r8 \bar "|."
}

studyIIprologI = ##f
studyIIprologII = ##f

studyII = \new Voice \relative c' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Andante, quasi Adagio." 4=77
  \key f \major

  s1*1/3\p\< f1*1/3\> s1*1/3\! | s1*1/3\< g1*1/3\> s1*1/3\! |
  %% 3
  a2.\<( f4\>) | f2\>( e) | c'2.~(\< c8 cis) | d4.\>( c8 bes4. a8-0) |
  %% 7
  g2\<( a4.\> g8\!) | bes2-4\>( e,-1) | f1\< | f'2-4\fz\>( b,-1\!) |
  %% 11
  c4( d8.-> e16 c4 b->) | d2\>( c) | bes'2.\<( e,4)\> | g2.\>( f4) |
  e-4\>( d c bes) | a2\<( g4.\> gis8) |
  %% 17
  \fingerNumberSpanner "1" a8-0\<( c f\startTextSpan g a\> f8 c\stopTextSpan a) |
  %% 18
  bes\<( c e g bes\> g f e) | f\<( e d c d\> c bes a\!) |
  g\>( a-0 bes b c d c bes) | a\<( c f g a g f e) |
  %% 22
  g( e f fis g a bes g) | g\>( f e f\! a4.\> f8\!) |
  %% 24
  g2\>( f4\!) r8 a, | c4.\>( e8-0\!) f4.\>( a,8\!) |
  c4.\>( e,8\!) f4.\<( a8) |
  f4.(^\markup {\italic "morendo"} a8\!) f4-.(_\rit f-.) | f2. r4 \bar "|."
}

studyIprologI = \score {
  \new Staff \with {
    fontSize = #-3
    \override StaffSymbol.staff-space = #(magstep -3)
    \override StaffSymbol.thickness = #(magstep -3)
    \override VerticalAxisGroup.default-staff-staff-spacing =
    #'((basic-distance . 1)
    (minimum-distance . .5)
    (padding . .2))
  } \new Voice \relative e'' {
    \time 4/4
    \key c \major

    e8-. g( e) c( b) d( b) g( \bar "||"
    e') g-.( e-.) c-.( b-.) d-.( b-.) g-.( \bar "||"
    e')( g-) e-. c-. b( d) b-. g-. \bar "||"
    e'-. g-. e( c) b-. d-. b( g) \bar "||"
    e'( g e) c-. b( d b) g-. \bar "||"
    e'-. g( e c) b-. d( b g) \bar "||"
  }
  \layout {
    indent = #0
  }
}

studyIprologII = ##f

studyItheme = {
  \fingerNumberSpanner "1"
  %% 1
  e8-0\f g e c b d b g |
  %% 2
  c\dim b a-4 g f e d-4 c\! |
  %% 3
  \override DynamicLineSpanner.staff-padding = #3
  b\< d-0 g b\! d\> c a fis\!
  \override DynamicLineSpanner.staff-padding = #0
  %% 4
  g\< a-0 b c d e-0 f g\! | e\p g e c b d b g |
  %% 6
  c b a-4 g f e d-4 c |
}

studyI = \new Voice \relative c'' {
  \violinVoiceSettings
  \time 4/4
  \tempo "Allegro moderato." 4=123
  \key c \major

  \studyItheme
  %% 7
  e a-0 c f e-4 d b gis |
  %% 8
  a-4\< a-0 b c d e-0 fis gis |
  %% 9
  a-3\f c-4 a-3 g fis a g fis | g b g fis e-0 g e-4 d |
  %% 11
  c\dim e-4 c b a-0 c a-4 g |
  %% 12
  fis a-4 fis e\! d fis g a |
  %% 13
  \override DynamicLineSpanner.staff-padding = #1
  b\< d g b\! a\> fis d a-0\! |
  %% 14
  \override DynamicLineSpanner.staff-padding = #3.3
  g\< b e-0 g\! fis\> d \fingerNumberSpanner "1" b fis\! |
  %% 15
  \override DynamicLineSpanner.staff-padding = #2
  e\< g c e-4\! d\> b g d\! |
  %% 16
  \override DynamicLineSpanner.staff-padding = #2
  c'\> a b g\! fis\< g a ais\! |
  %% 17
  \override DynamicLineSpanner.staff-padding = #2.5
  b\p\< d g b\! a\> fis dis a\! |
  %% 18
  \override DynamicLineSpanner.staff-padding = #2.8
  g\< b e-0 g\! f\> d b f\! |
  %% 19
  e-> g c e-4 d,-> a' c fis |
  %% 20
  a-> g d b g\< b c d |
  %% 21 ... 26
  \studyItheme
  %% 27
  a\cresc b c d-0 e fis gis a-4 |
  %% 28
  d, e f g a-0 b cis d |
  %% 29
  g, a-0 b c d e-0 fis g |
  %% 30
  c, d e-0 f g a b-4 c-4 |
  %% 31
  a\f b a g f e-4 d c | b a-4 g a-0 b c d e-0 |
  %% 33
  f g f e-4 d c b a-4 |
  %% 34
  g f e f g a-0 b c | a\ff b c d e-0 f g a |
  %% 36
  g f e-4 d c b a g |
  %% 37
  e' c b a-4 g f e d-4 | c2. r4 \bar "|."
  \override DynamicLineSpanner.staff-padding = #0
}

%%% ------------

\header {
  arranger = \markup \column {
    \halign #RIGHT
    "Revised and fingered by Louis Svećenski"
    \halign #RIGHT
    "Overwhelming instructions removed by Philipp Büttgenbach"
  }
  composer = \Composer
  copyright = \copyrightText
  tagline = \taglineText
  enteredby = "Philipp Büttgenbach"
%  opus = \Opus
  source = "http://imslp.org/"
  title = \markup \pad-around #3. \center-column {
    "Thirty-Six Elementary and Progressive Studies"
    \smaller "For the Violin"
  }
}

include(`foreach.m4')

define(`EmitStudy', `
   $(if study$1prologI #{ \study$1prologI #} )
   $(if study$1prologII #{ \study$1prologII #} )
\score {
  \new Staff \study$1
  \header {
    opus = \Opus
    piece = "$1."
  }
  \layout {
    indent = #0
  %%  ragged-last = ##t
  }
}')

define(`EmitPart', `
  \bookpart{
    \header {
      subtitle = "Book $1."
    }
    foreach(`Study', StudiesPart$1, `EmitStudy(Study)') 
  }')

dnl define(`StudiesPartI', `(II)')
define(`StudiesPartI', `(I, II, III, IV, V, VI, VII, VIII, IX, X, XI, XII)')

define(`StudiesPartII', `(XIII, XIV, XV, XVI, XVII, XVIII, XIX, XX, XXI, XXII, XXIII, XXIV, XXV, XXVI)')

define(`StudiesPartIII', `(XXVII, XXVIII, XXIX, XXX, XXXI, XXXII, XXXIII, XXXIV, XXXV, XXXVI)')

define(`Parts', `(I, II, III)')

\book {
  \bookOutputName "Kayser_Opus-20"

  foreach(`Item', Parts, `EmitPart(Item)')
}

\include "articulate.ly"

define(`EmitMidi', `
\book {
  \bookOutputName "Kayser_Opus-20-$1"
  \score {
    \articulate \unfoldRepeats
    \new Staff \study$1
    \midi {}
  }
}')

foreach(`Study', StudiesPartI, `EmitMidi(Study)')
foreach(`Study', StudiesPartII, `EmitMidi(Study)')
foreach(`Study', StudiesPartIII, `EmitMidi(Study)')

