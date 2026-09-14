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

Use `reporttable` with the number of columns, and put `\ReportTableHeader` at the start of the header row. The environment supplies the full text width, automatic equal-width columns, top and bottom rules, header styling, and alternating `PaleBlue`/white body rows. Configure those visual choices in `report-theme.sty`.

## Fonts

The template uses system fonts through `fontspec`:
- DejaVu Serif for body text, the cover title, chapter labels/titles, and emphasized page numerals
- DejaVu Sans for section-level headings, metadata, headers, and restrained UI-like accents
- DejaVu Sans Mono for code at 85% of the normal text size

No font files are bundled with this project.
