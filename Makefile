.PHONY: clean run present

LATEXMK=latexmk -lualatex -latexoption=-shell-escape

run: present

present: talk-mda-lod-arch-2019-08-03.pdf

talk-mda-lod-arch-2019-08-03.pdf: talk-mda-lod-arch-2019-08-03.tex
	$(LATEXMK) $<

clean:
	BIBINPUTS=$(BIBROOT) $(LATEXMK) -C
	rm -f *.{bbl,aux,ps,dvi,log,toc,out,vrb,snm,nav} *~ ~* *.bak *.synctex.* *.thm *-joined.pdf *.wbk *_latexmk *.fls
	# cd pics && make clean
