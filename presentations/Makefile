.PHONY: html
html:
	rm -rf html/
	quarto render
	cp -Rav html/* ../../jvkersch.github.io/course/math-0
	cd ../../jvkersch.github.io && git add course/math-0 && git commit -m "automatic" && git push origin main

%.pdf: %.qmd
	quarto render $<
	decktape reveal --size='2048x1536' html/$(basename $<).html $(basename $<).oversized.pdf
	pdfjam --paper a4paper --landscape --outfile $@ $(basename $<).oversized.pdf
	rm -rf $(basename $<).oversized.pdf $(basename $<)_files/
