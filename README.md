# LNbits Box Prague Presentation

Markdown-based presentation materials for the talk **"Building Without Permission in the Age of AI"**.

## Generate

Use the bundled script to regenerate the notes PDF, slide PDF, and HTML presentation:

```sh
./scripts/generate.sh
```

This creates or updates:

- `notes_sheet.pdf`
- `presentation.pdf`
- `index.html`

Required tools:

- Pandoc
- wkhtmltopdf
- Node.js / npm for `npx`, unless Marp CLI is installed globally

On macOS, install the missing tools with:

```sh
brew install pandoc
```

`wkhtmltopdf` is also required for the notes PDF. If it is missing, install it before running the script.

## Files

- `presentation.md` - main slide deck source, authored for Marp.
- `index.html` - generated Marp HTML presentation.
- `notes_sheet.md` - speaker notes / handout source.
- `notes_sheet.pdf` - generated PDF notes sheet.
- `images/` - images, GIFs, and video assets used by the deck.
- `scripts/` - helper CSS and wrappers for Pandoc, Mermaid, and Marp-related exports.
- `.marprc.yml` - Marp configuration.

## Create the Slide PDF

The generation script above is the normal path. For a manual export, use Marp CLI directly:

```sh
npx @marp-team/marp-cli presentation.md --pdf --allow-local-files -o presentation.pdf
```

To regenerate the HTML deck:

```sh
npx @marp-team/marp-cli presentation.md --html --allow-local-files -o index.html
```

## Create the Notes PDF

The generation script above is the normal path. For a manual export, use Pandoc with `wkhtmltopdf`:

```sh
pandoc notes_sheet.md \
  --standalone \
  --css scripts/pandoc.css \
  --pdf-engine=wkhtmltopdf \
  -o notes_sheet.pdf
```

If the notes include Mermaid diagrams, use the Mermaid filter and wrapper scripts:

```sh
pandoc notes_sheet.md \
  --standalone \
  --css scripts/pandoc.css \
  --filter scripts/pandoc-mermaid-filter.py \
  --pdf-engine=wkhtmltopdf \
  -o notes_sheet.pdf
```

## Requirements

- Node.js / npm for `npx` and Marp CLI.
- Pandoc for notes-sheet PDF generation.
- Mermaid CLI (`mmdc`) only if rendering Mermaid diagrams.

## Notes

Marp needs `--allow-local-files` so local assets from `images/` can be embedded during export.
