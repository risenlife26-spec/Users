# Ollama setup (Windows)

These files set up a local LLM stack on the Windows workstation. They are
reference artifacts — not used from this Linux repo.

## Files

- `MaxwellPerkins.Modelfile` — editorial persona (structural feedback, line edits), built from `llama3.3:70b`.
- `CodeArchitect.Modelfile` — senior-architect coding persona, built from `qwen2.5-coder:7b`.
- `setup-models.ps1` — pulls the core model set and builds the two custom personas.

## Usage

Prereqs: Ollama installed from <https://ollama.com/download>, models directory
set to something with space (e.g. `OLLAMA_MODELS=E:\OllamaModels`).

```powershell
cd E:\OllamaSetup       # wherever you keep these three files
.\setup-models.ps1
```

Pulling `llama3.3:70b` is ~40GB — plan for an overnight download.

## After setup

Install Open WebUI for a ChatGPT-style interface:

```powershell
pip install open-webui
open-webui serve
```

Then hit <http://localhost:8080> and select `maxwell-perkins` or `code-architect`.
