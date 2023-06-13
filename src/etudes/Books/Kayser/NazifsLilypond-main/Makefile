#! /usr/bin/make -f

BaseName = Kayser_Opus-20

SourceFiles = $(BaseName).ly foreach.m4 mylib.ly
DistFiles = $(SourceFiles) Makefile
CleanFiles = $(BaseName)*.midi $(BaseName)*.pdf $(BaseName).zip

all: $(SourceFiles)
	m4 $< | lilypond -dno-point-and-click -

clean:
	rm -f $(CleanFiles)

maintainer-clean: clean
	rm -f foreach.m4

dist: $(DistFiles)
	zip -9 $(BaseName).zip $?

foreach.m4: /usr/share/doc/m4/examples/foreach.m4
	ln -s $<

#mylib.ly: $(HOME)/lilypond/mylib.ly
#	ln -s $<

.PHONY: all clean dist maintainer-clean
