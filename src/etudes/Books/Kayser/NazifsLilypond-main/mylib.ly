%%% -*- coding: utf-8 -*-
%%%
%%% Copyright © 2016 Philipp Büttgenbach
%%%
%%% This work is licensed under the Creative Commons
%%% Attribution-ShareAlike 4.0 International License.  To view a copy of
%%% this license, visit http://creativecommons.org/licenses/by-sa/4.0/.
%%%

\version "2.18.2"

violinVoiceSettings = {
  \set Staff.midiInstrument = #"violin"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \accidentalStyle modern-cautionary
}

dolce = \markup{\italic "dolce"}
pDolceText = \markup { \hspace #4.8 p \normal-text \italic "dolce" }
pDolce = #(make-dynamic-script pDolceText)
rall = \markup{\italic "rall."}
aTempo = \markup{\italic "a tempo"}
molto = \markup{\italic "molto"}
rf = #(make-dynamic-script "rf")
rit = \markup { \italic "rit. " }
rall = \markup {\italic "rall. "}
ritSpan = {
  \override TextSpanner.bound-details.left.text = \rit
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
}
trillFlat = \markup { \musicglyph #"scripts.trill" \super \flat }
trillSharp =  \markup{\musicglyph #"scripts.trill" \super \sharp}
trillNatural = \markup{\musicglyph #"scripts.trill" \super \natural}

hairpinWithCenteredText =
#(define-music-function (parser location text) (markup?)
  #{
  \once \override Voice.Hairpin.after-line-breaking =
  #(lambda (grob)
    (let* ((stencil (ly:hairpin::print grob))
	   (par-y (ly:grob-parent grob Y))
	   (dir (ly:grob-property par-y 'direction))
	   (new-stencil (ly:stencil-aligned-to
			 (ly:stencil-combine-at-edge
			  (ly:stencil-aligned-to stencil X CENTER)
			  Y dir
			  (ly:stencil-aligned-to (grob-interpret-markup grob text) X CENTER))
			 X LEFT))
	   (staff-space (ly:output-def-lookup (ly:grob-layout grob) 'staff-space))
	   (staff-line-thickness
	    (ly:output-def-lookup (ly:grob-layout grob) 'line-thickness))
	   (grob-name (lambda (x) (assq-ref (ly:grob-property x 'meta) 'name)))
	   (par-x (ly:grob-parent grob X))
	   (dyn-text (eq? (grob-name par-x) 'DynamicText ))
	   (dyn-text-stencil-x-length
	    (if dyn-text
	     (interval-length
	      (ly:stencil-extent (ly:grob-property par-x 'stencil) X))
	     0))
	   (x-shift
	    (if dyn-text
	     (-
	      (+ staff-space dyn-text-stencil-x-length)
	      (* 0.5 staff-line-thickness)) 0)))

     (ly:grob-set-property! grob 'Y-offset 0)
     (ly:grob-set-property! grob 'stencil
      (ly:stencil-translate-axis
       new-stencil
       x-shift X))))
  #})

hairpinCalmato =
\hairpinWithCenteredText \markup { \italic "calmato" }
hairpinDolce =
\hairpinWithCenteredText \markup { \italic "dolce" }

fingerNumberSpanner =
#(define-music-function (parser location FingerNumber) (string?)
  #{
  \override TextSpanner.style = #'solid
  \override TextSpanner.font-size = #-5
  \override TextSpanner.bound-details.left.stencil-align-dir-y = #CENTER
  \override TextSpanner.bound-details.left.text = \markup { \finger #FingerNumber }
  #})

copyrightText = \markup \center-column {
  {\small "Copyright © 2017 Philipp Büttgenbach"}
  \with-url #"http://creativecommons.org/licenses/by-sa/4.0/"
  {\small "Creative Commons Attribution-ShareAlike 4.0"}
}

taglineText =  \markup {
  \with-url #"http://www.lilypond.org/"
  {\small "LilyPond … music notation for everyone!"}
}
