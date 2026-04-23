# ============================================
# Ollama Model Setup Script for Travis
# Run this in PowerShell after Ollama is installed
# ============================================

Write-Host "=== Pulling Core Models ===" -ForegroundColor Cyan

# Writing & Editorial
Write-Host "`nPulling writing models..." -ForegroundColor Yellow
ollama pull llama3.3:70b
ollama pull llama3.1:8b
ollama pull mistral
ollama pull gemma2:9b

# Coding & Technical
Write-Host "`nPulling coding models..." -ForegroundColor Yellow
ollama pull qwen2.5-coder:7b
ollama pull deepseek-r1:32b

# Utility
Write-Host "`nPulling utility models..." -ForegroundColor Yellow
ollama pull phi4
ollama pull nomic-embed-text

Write-Host "`n=== Building Custom Personas ===" -ForegroundColor Cyan

# Build custom models from Modelfiles (must be in same directory)
ollama create maxwell-perkins -f MaxwellPerkins.Modelfile
ollama create code-architect -f CodeArchitect.Modelfile

Write-Host "`n=== All Done ===" -ForegroundColor Green
Write-Host "Your models:" -ForegroundColor Green
ollama list
