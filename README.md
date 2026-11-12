# MadPy Welcome Slides

The slides shown at the start of each [MadPy](https://madpy.com) meetup:
welcome, organizers, Code of Conduct, a short Python warm-up, sponsors, and
the night's talk.

**See the current deck at <https://madpy.com/welcome>.**

## How it works

- `welcome.qmd` is the deck: [Quarto](https://quarto.org) markdown, rendered
  to [reveal.js](https://revealjs.com) slides.
- Code cells really run. Their outputs are saved in `_freeze/`, which is
  committed, much like the outputs saved inside a Jupyter notebook.
- On every push, GitHub Actions renders the deck from `welcome.qmd` +
  `_freeze/` and publishes it to GitHub Pages. CI never runs Python code, so
  the deck can demo a Python release that isn't out yet.

| File | Purpose |
| --- | --- |
| `welcome.qmd` | Slide content |
| `_quarto.yml` | Render settings (reveal.js options, slide size, freeze) |
| `styles.scss` | Fonts, sizes, and layout |
| `title-slide.html` | Title slide template (adds the logo from `title-logo:`) |
| `_freeze/` | Saved outputs of the code cells (commit this) |
| `pyproject.toml`, `uv.lock`, `.python-version` | Quarto + the Python that runs the code cells |
| `img/` | Organizer photos, logos, the current sponsor's logo |
| `archive/` | Past decks kept as examples (not rendered). `2026-07-welcome.qmd` shows code cells, click-to-reveal fragments, and a pre-release demo. |

The look (News Cycle headings, Noto Sans body, layout) recreates the earlier
Jupyter/nbconvert deck. Fonts load from Google Fonts, so the deck needs a
network connection to look right.

## Monthly update

1. Edit `welcome.qmd`: sponsor, social card, warm-up.
2. Render locally (this runs the code cells and refreshes `_freeze/`):

   ```sh
   uv run quarto render
   ```

   (`uv run quarto preview` live-reloads in a browser while you edit.)

3. Check `index.html` in a browser, then commit `welcome.qmd` **and**
   `_freeze/`.

Render after *every* edit, even text-only ones. CI checks that `_freeze/`
matches `welcome.qmd` and fails if it doesn't.

## Demoing a pre-release Python

```sh
uv python pin 3.16.0a1
```

Then render as usual. `uv run` rebuilds the environment on the new Python.
The `quarto-cli` package normally pulls in all of Jupyter, which often won't
build on alphas and betas, so `pyproject.toml` overrides that dependency
away. Quarto only needs `nbclient` and `ipykernel` to run cells.

## Gotchas

- Keep the `title:` in `welcome.qmd`'s front matter. Without it, Quarto's
  Jupyter engine (1.11.9) takes the first `##` heading after a code cell and
  makes it the document title.
- Use `##` for every slide title. A `#` heading starts a section, which nests
  the following slides and changes their URLs (`#/3/1` instead of `#/4`).
- Put the current sponsor's logo in `img/`. `img/old_logos/` is ignored by
  git, so anything referenced from there is missing on the live site.

## History

Until November 2026 the deck was a Jupyter notebook (`welcome.ipynb`) rendered
with nbconvert, with `cog` copying the slides into this README. It's all in
the git history.
