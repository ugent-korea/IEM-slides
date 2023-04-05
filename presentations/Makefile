.PHONY: all

%.pdf: %.qmd
	quarto render $<
	decktape reveal --size='2048x1536' ../html/presentations/$(basename $<).html $(basename $<).oversized.pdf
	pdfjam --paper a4paper --landscape --outfile $@ $(basename $<).oversized.pdf
	rm -rf $(basename $<).oversized.pdf $(basename $<)_files/

all: 01a-trigonometry-basic-identities.pdf 01b-trigonometry-formulas.pdf 01c-trigonometry-triangles.pdf 01d-trigonometry-trigonometric-eqns.pdf 01e-trigonometry-inverse-functions.pdf 02-coordinate-geometry.pdf 03a-limits-continuity.pdf 03b-limits-continuity.pdf 04a-derivatives.pdf 04b-derivatives.pdf 05-complex-numbers.pdf 06a-polynomials.pdf 06b-polynomials.pdf 07a-integration-definitions.pdf 07b-integration-techniques.pdf 07c-integration-partial-fractions.pdf 07d-integration-inverse-trig.pdf 07e-integration-applications.pdf 08-proof-techniques.pdf 09-binomial-theorem.pdf
