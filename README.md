Introduction to Engineering Mathematics
=======================================

Presentations
-------------

Slide decks for the weekly lectures can be found in the `presentations`
folder. They are rendered by Quarto to reveal.js format.

One unfortunate aspect is that the standard PDF export from reveal.js is badly
broken. To generate PDFs that match the HTML version of the presentation, I use
the decktape and pdfjam utilities. The Makefile in the presentations folder
will create a good-looking PDF for each slide deck.

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

The content of this repository is made available under the [Creative Commons
BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license. The
material may not be used for commercial purposes.
