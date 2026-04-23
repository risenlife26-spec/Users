# The Forge Platform: Architecture, Philosophy, and Technical Handoff

**Target Environment:** Microsoft 365 / Azure Ecosystem Integration
**Document Type:** Internal Update & Technical Specification
**Status:** Architecture Locked

## 1. Platform Philosophy: The Mind vs. The Program

To understand Forge is to understand the strict boundary between "The Mind" and "The Program." Blurring these two concepts leads to architectural contamination.

- **The Program (Deterministic Infrastructure):** Rigid, state-driven, devoid of ambiguity. It executes. Zero-trust environments, S3 chunked uploaders, IndexedDB persistence.
- **The Mind (The Writing Layer):** Fluid, accommodates non-linear human thought, prose, and narrative architecture. Relies on the Program for heavy lifting but must remain cleanly separated from it.

## 2. Technical Specifications

- **The Configuration Triad:** Resolution (`env.ts`), Validation (`validateConfig.ts`), Preflight (`preflight.ts`).
- **Controller State Machine:** `OFFLINE -> STARTING -> RUNNING -> STOPPING -> CRASHED`. Strict ownership discipline (`releaseOwnedProcess`).
- **Ingestion Layer:** Chunked uploads directly to cloud storage, bypassing RAM bottlenecks.
- **Observability:** Server-Sent Events (SSE) for log and state streaming.

## 3. Microsoft 365 Integration

- **Compute:** Azure App Service (Linux containers).
- **Storage:** Azure Blob Storage for chunked uploads. Azure Cosmos DB for metadata.
- **Identity:** Microsoft Entra ID (MSAL) replacing lightweight API keys.
- **Integration:** Microsoft Graph API (SharePoint/OneDrive ingestion) and Word Add-ins for the literary diagnostic engine.
