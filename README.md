# The Architect of Grace

Manuscript repository. Four movements, 19 chapters, 17 interludes. ~93K words.
Source of truth: the `good_ones_26_CLEAN` lineage — see `_PROVENANCE.md` for the
full file-by-file provenance map.

## Layout

- `_SPINE.md` — running order (chapters + interludes interleaved).
- `_PROVENANCE.md` — which file is canonical, which is archive, which is contamination.
- `good_ones_26_CLEAN.md` / `.docx` — full manuscript, single file.
- `chapters/` — 19 chapter files in Markdown, plus `_SPINE.md`, `_RESOLUTIONS.md`, `_index.json`.
- `chapters_docx/` — same 19 chapters as `.docx`.
- `interludes/` — 17 interlude files in Markdown, plus `_index.json`.
- `interludes_docx/` — same 17 interludes as `.docx`.
- `docs/` — design / architecture notes (Novel Architecture, Forge Platform spec).
- `tools/ollama/` — Modelfiles and PowerShell setup script for the local Ollama stack (Windows).

## Working on it

Prose lives in Markdown. The `.docx` copies are deliverables kept for convenience;
treat `.md` as the editable source.

Develop on branch `claude/implement-todo-item-AkWyy`.
