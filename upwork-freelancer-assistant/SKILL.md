---
name: upwork-freelancer-assistant
description: >
  End-to-end Upwork freelancer workflow: profile audit, profile fixes, strategic job search, and proposal submission.
  Use this skill whenever the user wants to get hired on Upwork, bid for jobs, fix their Upwork profile, search for
  freelance work, optimize their skills section, remove bad catalog items, write cover letters, or submit proposals.
  Also trigger for "help me find clients", "I need money from freelancing", "bid for me", "find me a job on Upwork",
  or any request to take action on an Upwork account. This skill encodes hard-won tactical knowledge — always use it
  rather than improvising Upwork workflows from scratch.
---

# Upwork Freelancer Assistant

You help freelancers get hired on Upwork by auditing their profile, fixing it, finding high-fit jobs, and submitting tailored proposals. This skill distils lessons from real session experience — follow it carefully.

## Phase 0: Reconnaissance

Before anything else, gather full context.

**From the project folder** (if connected):
- Read the resume/CV file to extract verified skills, employment history, projects, and measurable outcomes.
- Read any existing Upwork research docs, blueprints, or playbooks.
- Note the exact stack (languages, frameworks, databases, cloud) with evidence level: *core* (shipped production work) vs *familiar* (used but limited).

**From the live Upwork profile** (via Chrome MCP):
- Navigate to `https://www.upwork.com/freelancers/~<ID>` (find the ID in research docs or ask the user).
- Use `read_page` with `filter: all, depth: 8` on the `main` element to extract: title, overview text, skills list, portfolio items, work history jobs, project catalog items, testimonial count, employment history.
- Also visit the public view (`?viewMode=1`) if you want to see what clients see.

**Key things to capture:**
- Current title and overview (full text — use `javascript_tool` to read `document.querySelector('textarea').value` if in edit mode, to get the untruncated text)
- All current skills (names exactly as shown)
- Project catalog items (title, budget, category)
- JSS (Job Success Score) and total earnings
- Available Connects count (visible in sidebar)

---

## Phase 1: Profile Audit

Score each section against this checklist. Note issues, then implement all fixes in Phase 2.

### Title
- Specific, niche-clear, keyword-rich: e.g. `"AI Automation & SaaS Engineer | Next.js, Laravel, Python APIs"` beats `"Full Stack Developer"`
- Should include 2–3 high-search-intent technologies + a value/outcome word (Engineer, Builder, Specialist)

### Overview
- **Check rendering in the browser, not just the accessibility tree** — the a11y tree truncates. Use `javascript_tool` to read the full textarea value.
- First line must hook: state the client's outcome, not your background.
- Bullets must use plain `•` or `-` characters that render in Upwork's Blade layout. Avoid Unicode bullet variants.
- Must include: stack, proof of shipped work, how you work (milestones, communication style), CTA.

### Skills
- Remove **generic/vague** tags: "Web Development", "Database", "Machine Learning" (if not a core offering), "Business with 10-99 Employees".
- Add **specific, high-intent** skills: React, TypeScript, Flask, MySQL, AWS Lambda, REST API — whatever matches the verified stack from the resume.
- Target 15–18 skills, max 20. Quality over quantity.
- **Important search quirk**: when editing skills, type a query and wait **2 full seconds** before the autocomplete dropdown appears. Don't assume "No results" without waiting.

### Portfolio
- First 3 items must be the strongest proof for the target niche.
- Each item description: outcome + stack + your role, in the first 2 lines.
- Thumbnails should be live screenshots of deployed projects, not placeholder images.

### Project Catalog
- Remove any item that doesn't match the primary positioning. An "Engineering Drawing" listing on a software engineer's profile kills credibility.
- Keep only items that reinforce the niche (e.g., "You will get an eye-catching web application").
- To delete: `...` menu → Delete → confirm the dialog.

### Testimonials
- Empty testimonial section is a visible gap. Recommend requesting 2–3 non-Upwork testimonials from past colleagues or clients (Upwork allows this).

### Video Introduction
- Missing = missed trust signal. Recommend adding a 30–60 second intro.

---

## Phase 2: Implementing Profile Fixes

### Fixing Skills (the reliable method)
1. Find the Edit Skills button with `javascript_tool`:
   ```js
   const btn = Array.from(document.querySelectorAll('button')).find(b => b.textContent.includes('Edit skills'));
   btn.scrollIntoView(); btn.click();
   ```
2. To **remove** a skill:
   ```js
   const btn = Array.from(document.querySelectorAll('button')).find(b => {
     const p = b.closest('div, span, li');
     return p && p.textContent.trim().startsWith('Web Development');
   });
   if (btn) btn.click();
   ```
3. To **add** a skill: click the Search skills input, type the skill name, **wait 2 seconds** for the dropdown, then click the result. Do NOT use `form_input` for this — use `left_click` on the input then `type`.
4. Click Save.

### Fixing the Overview
- Click Edit Description (pencil icon near the overview).
- The modal has a textarea. Read its full value with `document.querySelector('textarea').value` before editing.
- To set new content, click in the textarea and use `type` (not JS value setter — React controlled inputs require real keyboard events).
- Click Save or Cancel as appropriate.

### Deleting Project Catalog Items
1. Navigate to `https://www.upwork.com/nx/project-dashboard/`.
2. Find the target item, click its `...` button.
3. Click Delete → confirm the "Are you sure?" dialog.

---

## Phase 3: Job Search Strategy

With only 20 Connects you must be surgical. Every wasted proposal is money out of pocket.

### Scoring a job before applying

**Apply if:**
- Fewer than 10–15 proposals (ideal: fewer than 5)
- Payment verified + at least 1 prior hire OR convincing posting
- You can cite 1–2 directly matching projects from the portfolio
- Scope is clear enough to propose a realistic approach
- Connects cost fits the remaining budget

**Skip if:**
- 50+ proposals already
- 0% hire rate with many jobs posted (client is shopping, not buying)
- Stack requirements don't match (don't stretch — it shows)
- Scope is vague or contains red flags (off-platform payment, unpaid test, "too good to be true" rate)
- Connects cost exceeds remaining balance

### Search URLs that work

Fixed-price jobs with few proposals (sweet spot for new accounts):
```
https://www.upwork.com/nx/search/jobs/?q=<QUERY>&sort=recency&payment_verified=1&proposals=0-4&job_type=fixed&contractor_tier=1,2
```

Intermediate hourly jobs:
```
https://www.upwork.com/nx/search/jobs/?q=<QUERY>&sort=recency&payment_verified=1&proposals=0-4&contractor_tier=2
```

Replace `<QUERY>` with the core stack: `laravel+php+mysql`, `next.js+react+api`, `python+flask+api`, etc.

### Checking Connects cost
**Always open the job page and check the sidebar BEFORE clicking Apply.**
The sidebar shows: `"Send a proposal for: N Connects"` and `"Available Connects: M"`.
- If N > M: skip this job. Don't apply.
- Typical costs: hourly intermediate ~6 Connects; fixed price $500–$2000 ~10–14 Connects; long-term senior ~20–26 Connects.

### Checking whether a job is still open
Cached search results sometimes show closed jobs. Always navigate directly to the job URL and look for the "Apply now" button. If you see "This job is no longer available", move on.

---

## Phase 4: Writing the Proposal

### Cover letter structure (under 200 words)

1. **Hook** — Name the client's exact problem in line 1. Don't start with "Hi, I'm a developer with X years..."
2. **Proof** — Cite 1–2 matching past projects: name, stack, outcome. Be specific — clients scan for proof, not claims.
3. **Approach** — 3 short bullets: how you'd handle the core technical challenge. Shows you actually read the brief.
4. **Timeline + rate** — State your proposed timeline and confirm the rate matches (or explain if different).
5. **CTA question** — End with one specific question that shows you're thinking about their project, not just filling a form. E.g., "Is the script a known CodeCanyon product or custom-built?"

### What the proposal form requires
- **Payment type**: Choose "By project" (not "By milestone") unless the client specifically structures it as milestones. "By project" has no milestone description field, which avoids a common validation error.
- **Bid amount**: Set to the posted budget unless you have a clear reason to differ.
- **Duration**: Select from the dropdown (always wait for it to fully render — it's async).
- **Cover letter**: Click the textarea and use `type` to fill it. JS value setters don't trigger React state updates reliably.

### Submitting
After clicking "Submit proposal", Upwork shows two dialogs in sequence:
1. **"Stay safe & build your reputation"** — check "I understand Upwork's policies", then click Submit.
2. **"3 things you need to know"** — check "Yes, I understand", then click Continue.

After both, you land on "Proposal details" with a green "Your proposal was submitted." banner. That's the confirmation.

---

## Phase 5: Post-Submission

- Note the remaining Connects count.
- If fewer than 6 Connects remain, stop bidding until the user buys more.
- Tell the user: the proposal can be edited for up to 6 hours or until the client views it.
- Recommend checking Messages within a few hours if the client is active.
- If 20+ Connects are available, consider one more strategic bid on a lower-Connects job.

---

## Quick Reference: Common Gotchas

| Issue | Fix |
|-------|-----|
| Skills dropdown shows "No results" | Wait 2 full seconds after typing before concluding there are no results |
| Cover letter not updating | React state: click the textarea first, then use `type` (not JS value setter) |
| Milestone description validation error | Switch to "By project" payment type instead |
| Job shows as available in search but not on page | Job is closed — move on |
| Connects cost exceeds balance | Don't apply; find a lower-cost job or buy more Connects |
| Accessibility tree shows truncated overview | Use `document.querySelector('textarea').value` in JS for full text |
| Submit button not responding | Scroll it into view first with `scrollIntoView()`, then click |
