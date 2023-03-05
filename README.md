Introduction to Engineering Mathematics
=======================================

Viewing and working on the presentations
----------------------------------------

Slide decks for the weekly lectures can be found in the `presentations`
folder. They are rendered by Quarto to reveal.js format.

The slide decks can be edited with any text editor. It is recommended to follow
the standard Quarto workflow by running `quarto preview
<name-of-slidedeck.qmd>` in the background, and observing the effect of your
changes directly in the browser.

Setting up a Conda environment
------------------------------

Some slide decks come with embedded Python code. Upon re-rendering, Quarto will
execute this code and insert the output into the document. This requires that a
number of Python packages are present. A working (Conda) environment named
`engineering-math` can be created as follows:
```bash
conda create --yes -n engineering-math python=3.10
conda install -n engineering-math jupyter matplotlib numpy
```

After activating the environment (`conda activate engineering-math`) all quarto commands can then be run.

Building PDF versions of the presentations
------------------------------------------

The students generally prefer a PDF version of the presentations over the
standard web format, because it is easier to take notes on a PDF.

Unfortunately, the standard PDF export from reveal.js is badly broken. To
generate PDFs that match the HTML version of the presentation, I use the
[decktape](https://github.com/astefanutti/decktape) and
[pdfjam](https://github.com/rrthomas/pdfjam) utilities to create a PDF that is
a carbon copy of the reveal.js format.

With these two utilities installed, the Makefile in the `presentations` folder can be used to produce good-looking PDFs for the slide decks. To create a single PDF, run e.g.
```bash
    make 01a-trigonometry-basic-identities.pdf
```
To create all PDFs, run `make all`.

Publishing to GitHub pages
--------------------------

The full rendered output can be published to GitHub pages by running the following command from the root of the repository:
```bash
   quarto publish gh-pages
```

Conventions
-----------

1. Mathematical drawings are made with InkScape. Apart from the standard black
   and white, colors should come from the [5-shade IBM colorblind-friendly
   palette](https://davidmathlogic.com/colorblind/#%23648FFF-%23785EF0-%23DC267F-%23FE6100-%23FFB000). A GIMP color palette file with these colors (suitable for use with inkscape) can be found in the tools folder.

License
-------

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/80x15.png" /></a>

The content of this repository is made available under the [Creative Commons
BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license. The
material may not be used for commercial purposes.
