# Project Guidelines

## What this repo is for
This workspace is a documentation + automation repo used to improve and maintain Syed Salman Reza’s Upwork profile and supporting evidence (resume, GitHub repo inventory, profile review notes, screenshots).

## Ground rules for profile content
- **Be evidence-based.** Only claim skills/experience that are supported by:
  - `Syed_Salman_Reza_Resume.md`
  - `github_profile_comprehensive_review.md`
  - live project links / repository links
- **Avoid unverifiable claims** (certifications, compliance statements, revenue numbers, client names) unless the repo includes proof you can cite.
- **Keep wording policy-safe.** Prefer neutral, factual phrasing and avoid anything that could be interpreted as misleading.

## Writing & formatting
- Prefer Markdown docs with clear headings and short bullet points.
- Keep a dated “Update Log” section when changing a profile-related doc.
- **Link, don’t embed:** link to sources instead of pasting large excerpts.

## Key files & data sources
- `Syed_Salman_Reza_Resume.md` — primary source of truth for experience and projects.
- `github_profile_comprehensive_review.md` — generated GitHub profile/repo analysis.
- `_github_repo_inventory.json`, `_org_*_inventory.json` — inventories used for analysis.
- `upwork_specialized_profile_update_2026-04-01.md` — prior Upwork edits + rationale.
- `assets/project_thumbnails/` — screenshots/thumbnails for portfolio items.

## Automation (PowerShell)
- `generate_profile_review.ps1` calls GitHub APIs and writes/updates `github_profile_comprehensive_review.md`.
  - Keep paths stable; the script expects the repo root path.
  - If you change filenames/locations, update the script accordingly.

## Online research notes
When adding research (Upwork Help Center, policies, guides, terms):
- Record **date**, **URL**, and a short **paraphrased** takeaway.
- Don’t copy/paste long text from sources; summarize and cite.
- If guidance changes, add an “Updated on …” note rather than overwriting history.

## Browser automation & high-impact actions
For Upwork edits (saving profile changes) or proposal submission:
- Prepare and review the text first.
- Get explicit confirmation before clicking “Save” / “Submit”.
- Never store credentials, cookies, or tokens in the repo.

## Quality bar
- **Consistency:** profile title/overview/skills should match the resume and highlighted projects.
- **Relevance:** prioritize AI automation + Next.js full-stack + APIs/FinTech systems evidence.
