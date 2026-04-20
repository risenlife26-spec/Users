# Travis Allen — Manuscript Workspace

This repository holds two works by the same author (Eligio Hernandez,
writing as **Travis Allen**) plus standing legal reference material for the
publication track.

## Layout

```
works/
  architect-of-grace/    Novel: full review pipeline + reference
  journal/               Handwritten prayer/poetry: archival only
templates/               Copy these when new material arrives
```

## Source of truth

- **This repo is canonical.** Everything committed here is the authoritative
  archive — manuscripts, feedback, transcriptions, legal reference.
- **NotebookLM is parallel, not synced.** No integration exists between
  Claude and NotebookLM. Use NotebookLM for research, audio overviews, and
  study-guide features. Material that should be preserved gets pasted into
  this repo.
- **Paste-in workflow.** New chapters, journal pages, and reference material
  are dropped into chat; Claude files them under the structure below per
  the templates in `templates/`.

## Scope

- **`works/architect-of-grace/`** — *The Architect of Grace: Eternity's Fall —
  A Triptych in Four Movements*. Literary novel. Full editorial pipeline:
  editor, structural, agent, crowd, AI-ism, publishability passes. Legal/IP
  reference under `reference/`.
- **`works/journal/`** — handwritten leather-notebook prayers and poems.
  **Archival only.** Transcribe verbatim and file. Do not critique.

## Workflow

**New novel chapters:**
1. Copy `templates/chapter-template.md` to
   `works/architect-of-grace/manuscript/NN-slug.md`.
2. Append chapter-level notes to
   `works/architect-of-grace/feedback/editor.md`.
3. Revisit `feedback/structural.md` when arc-shifting chapters arrive.
4. Update `works/architect-of-grace/summary.md`.

**New journal pages:**
1. Copy `templates/transcription-template.md` to
   `works/journal/transcriptions/NN-slug.md`.
2. Transcribe verbatim. Flag unclear handwriting as `[unclear: best-guess]`.
3. Commit. **No critique.**
