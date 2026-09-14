# Deep Blue XeLaTeX Report Template

A restrained technical-report template with a stronger navy/yellow cover and a quiet blue body.

## Compile

```bash
make
```

or directly:

```bash
xelatex -interaction=nonstopmode -halt-on-error main.tex
bibtex main
xelatex -interaction=nonstopmode -halt-on-error main.tex
xelatex -interaction=nonstopmode -halt-on-error main.tex
```

## Main customization points

1. Edit the report metadata in `main.tex`.
2. Replace files under `sections/` with your own chapters.
3. Put graphics under `figures/`.
4. Adjust colors and geometry in `report-theme.sty`.

## Table styling

Use `\ReportTableRows` immediately before `tabularx`, then make the header row `\rowcolor{LightBlue}`. The body alternates between `PaleBlue` and white. The default table width in the examples is `\textwidth`.

## Fonts

The template uses system fonts through `fontspec`:
- DejaVu Serif for body text, the cover title, chapter labels/titles, and emphasized page numerals
- DejaVu Sans for section-level headings, metadata, headers, and restrained UI-like accents
- DejaVu Sans Mono for code at 85% of the normal text size

No font files are bundled with this project.
