Introduction to Engineering Mathematics
=======================================

Viewing and working on the presentations
----------------------------------------

Slide decks for the weekly lectures can be found in the `presentations`
folder. They are rendered by Quarto to Beamer format.

The slide decks can be edited with any text editor. It is recommended to follow
the standard Quarto workflow by running `quarto preview
<name-of-slidedeck.qmd>` in the background, and observing the effect of your
changes directly in the browser. Visual Studio Code with the Quarto extension makes this particularly easy.

Setting up a Conda environment
------------------------------

Some slide decks come with embedded Python code. Upon re-rendering, Quarto will
execute this code and insert the output into the document. This requires that a
number of Python packages are present. A working (Conda) environment named
`engineering-math` can be created as follows:
```bash
conda create --yes -n engineering-math python=3.10 jupyter matplotlib numpy
```

After activating the environment (`conda activate engineering-math`) all quarto commands can then be run.

Publishing to GitHub pages
--------------------------

The full rendered output can be published to GitHub pages by running the following command from the root of the repository:
```bash
   quarto publish gh-pages
```

Notes
-----

1. Mathematical drawings are made with InkScape. Apart from the standard black
   and white, colors should come from the [5-shade IBM colorblind-friendly
   palette](https://davidmathlogic.com/colorblind/#%23648FFF-%23785EF0-%23DC267F-%23FE6100-%23FFB000). A GIMP color palette file with these colors (suitable for use with inkscape) can be found in the tools folder.
1. Beamer is used as the presentation format from the semester 2 installment of the 2023-24 course. Before that, the presentations were rendered to reveal.js, which was more convenient as a presentation format but posed significant problems when exporting to PDF. To view the latest version of the reveal.js slides, check out the `reveal.js` tag.

License
-------

<p xmlns:cc="http://creativecommons.org/ns#" >This work is licensed under <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">CC BY-NC-SA 4.0<img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1"><img style="height:22px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/sa.svg?ref=chooser-v1"></a></p>
