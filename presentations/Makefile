%.pdf: %.qmd
	quarto render $<
	decktape reveal --size='2048x1536' $(basename $<).html $(basename $<).oversized.pdf
	pdfjam --paper a4paper --landscape --outfile $@ $(basename $<).oversized.pdf
	rm -rf $(basename $<).oversized.pdf $(basename $<).html $(basename $<)_files/
