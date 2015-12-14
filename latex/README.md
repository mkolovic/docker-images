#latex

A Docker image with a basic 2015 TexLive install plus some useful packages.

## USE:

From your host...
```bash
host$ docker run --rm -it -v $(pwd):/home/ubuntu/files latex
container$ pdflatex main.tex
container$ makeindex main.glo -s main.ist -t main.glg -o main.gls
container$ bibtex main
container$ pdflatex main
```

### Package List:
* ae: Virtual fonts for T1 encoded CMR-fonts.
* algorithm2e: Floating algorithm environment with algorithmic keywords
* amscls: AMS document classes for LaTeX.
* amsfonts: TeX fonts from the American Mathematical Society.
* amsmath: AMS mathematical facilities for LaTeX.
* appendix: Extra control of appendices
* babel: Multilingual support for Plain TeX or LaTeX
* babel-english: Babel support for English.
* babelbib: Multilingual bibliographies.
* biblatex: Bibliographies in LaTeX using BibTeX for sorting only
* bibtex: Process bibliographies for LaTeX, etc.
* bibtex.x86_64-linux: x86_64-linux files of bibtex
* bigfoot: Footnotes for critical editions
* caption: Customising captions in floating environments
* carlisle: David Carlisle's small packages.
* cleveref: Intelligent cross-referencing.
* cm: Computer Modern fonts.
* collection-basic: Essential programs and files
* collection-latex: LaTeX fundamental packages
* colortbl: Add colour to LaTeX tables.
* datatool: Tools to load and manipulate data.
* dvipdfmx: An extended version of dvipdfm
* dvipdfmx-def: Configuration file for dvipdfmx graphics
* dvipdfmx.x86_64-linux: x86_64-linux files of dvipdfmx
* dvips: A DVI to PostScript driver
* dvips.x86_64-linux: x86_64-linux files of dvips
* enctex: A TeX extension that translates input on its way into TeX.
* enumitem: Control layout of itemize, enumerate, description.
* etex: An extended version of TeX, from the NTS project.
* etex-pkg: E-TeX support package
* etoolbox: e-TeX tools for LaTeX
* fancyhdr: Extensive control of page headers and footers in LaTeX2e.
* fix2col: Fix miscellaneous two column mode features
* fp: Fixed point arithmetic.
* geometry: Flexible and complete interface to document dimensions.
* glossaries: Create glossaries and lists of acronyms
* glossaries.x86_64-linux: x86_64-linux files of glossaries
* glyphlist: (shortdesc missing)
* graphics: Standard LaTeX graphics.
* gsftopk: Convert "ghostscript fonts" to PK files.
* gsftopk.x86_64-linux: x86_64-linux files of gsftopk
* hyperref: Extensive support for hypertext in LaTeX.
* hyph-utf8: Hyphenation patterns expressed in UTF-8
* hyphen-base: (shortdesc missing)
* ifluatex: Provides the \ifluatex switch.
* ifxetex: Am I running under XeTeX?
* isodate: Tune the output format of dates according to language.
* knuth-lib: A small library of MetaFont sources.
* knuth-local: Knuth's local information
* kpathsea: Path searching library for TeX-related files
* kpathsea.x86_64-linux: x86_64-linux files of kpathsea
* l3kernel: LaTeX3 programming conventions
* l3packages: High-level LaTeX3 concepts
* latex: A TeX macro package that defines LaTeX
* latex-bin: LaTeX executables and man pages.
* latex-bin.x86_64-linux: x86_64-linux files of latex-bin
* latex-fonts: A collection of fonts used in LaTeX distributions.
* latexconfig: (shortdesc missing)
* listings: Typeset source code listings using LaTeX.
* logreq: Support for automation of the LaTeX workflow.
* ltxmisc: Miscellaneous LaTeX packages, etc.
* lua-alt-getopt: Process application arguments the same way as getopt_long.
* luatex: The LuaTeX engine
* luatex.x86_64-linux: x86_64-linux files of luatex
* makeindex: Makeindex development sources.
* makeindex.x86_64-linux: x86_64-linux files of makeindex
* metafont: A system for specifying fonts
* metafont.x86_64-linux: x86_64-linux files of metafont
* mfirstuc: Uppercase the first letter of a word
* mflogo: LaTeX support for Metafont logo fonts
* mfnfss: Packages to typeset oldgerman and pandora fonts in LaTeX.
* mfware: Supporting tools for use with Metafont.
* mfware.x86_64-linux: x86_64-linux files of mfware
* microtype: Subliminal refinements towards typographical perfection.
* mptopdf: mpost to PDF, native MetaPost graphics inclusion
* mptopdf.x86_64-linux: x86_64-linux files of mptopdf
* natbib: Flexible bibliography support.
* ntheorem: Enhanced theorem environment.
* oberdiek: A bundle of packages submitted by Heiko Oberdiek.
* parskip: Layout with zero \parindent, non-zero \parskip.
* pdftex: A TeX extension for direct creation of PDF
* pdftex-def: Colour and Graphics support for PDFTeX.
* pdftex.x86_64-linux: x86_64-linux files of pdftex
* plain: The Plain TeX format
* pslatex: Use PostScript fonts by default.
* psnfss: Font support for common PostScript fonts.
* pspicture: PostScript picture support.
* relsize: Set the font size relative to the current font size.
* scheme-basic: basic scheme (plain and latex)
* scheme-minimal: minimal scheme (plain only)
* setspace: Set space between lines.
* siunitx: A comprehensive (SI) units package
* substr: Deal with substrings in strings.
* tetex: scripts and files originally written for or included in teTeX
* tetex.x86_64-linux: x86_64-linux files of tetex
* tex: A sophisticated typesetting engine
* tex.x86_64-linux: x86_64-linux files of tex
* texconfig: (shortdesc missing)
* texconfig.x86_64-linux: x86_64-linux files of texconfig
* texlive-common: TeX Live documentation (common elements)
* texlive-docindex: top-level TeX Live doc.html, etc.
* texlive-en: TeX Live manual (English)
* texlive-msg-translations: translations of the TeX Live installer and TeX Live Manager
* texlive-scripts: TeX Live infrastructure programs
* texlive-scripts.x86_64-linux: x86_64-linux files of texlive-scripts
* texlive.infra: basic TeX Live infrastructure
* texlive.infra.x86_64-linux: x86_64-linux files of texlive.infra
* textcase: Case conversion ignoring mathematics, etc.
* titlesec: Select alternative section titles.
* tocloft: Control table of contents, figures, etc.
* tools: The LaTeX standard tools bundle
* ulem: Package for underlining.
* unicode-data: Unicode data and loaders for TeX
* url: Verbatim with URL-sensitive line breaks.
* xdvi: A DVI previewer for the X Window System.
* xdvi.x86_64-linux: x86_64-linux files of xdvi
* xfor: A reimplementation of the LaTeX for-loop macro.
* xkeyval: Extension of the keyval package.
