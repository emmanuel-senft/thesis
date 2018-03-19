# PhD-thesis
The source for my PhD thesis (conducted at Plymouth University, U.K.) titled 'Teaching Robots Social Autonomy from in-situ Human Guidance'. Please note that the copyright for many of the images is held by various publishers. Nothing should be published without consent from myself, or the relevant publisher (notes in the text about copyright where relevant).

Basic build steps:
1. (install glossaries package to your TeX distribution)
2. Run latex against 00_thesis.tex
3. Build the glossary (makeglossary %) against 00_thesis.tex
4. Build the document as usual (PDFLaTeX, BibTeX, PDFLaTeX, PDFLaTeX)

Whenever you modify the glossary make sure to rebuild it as in step 3, otherwise you can continue to just build as usual using PDFLaTeX and BibTeX.

Be sure to use an up to date version of latex or the number for sessions might
be missing.
