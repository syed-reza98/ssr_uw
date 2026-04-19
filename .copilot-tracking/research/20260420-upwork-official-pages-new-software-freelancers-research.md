<!-- markdownlint-disable-file -->

# Task Research Notes: Upwork official pages for new software-development freelancers

## Research Executed

### File Analysis

- (none)
  - This task is web-research focused; no code changes required.

### Code Search Results

- (none)
  - No workspace code search needed.

### External Research

- #fetch:https://support.upwork.com/hc/en-us/search
  - Used as the primary discovery entrypoint via topic-specific search queries (documented per section below).

- #fetch:https://support.upwork.com/hc/en-us/articles/211068358-All-about-your-Job-Success-Score
  - Verified Upwork’s current definition of JSS, what’s considered “good,” and the rolling time windows used.
- #fetch:https://support.upwork.com/hc/en-us/articles/38437458199059-How-is-my-Job-Success-Score-calculated
  - Verified the high-level JSS formula and the “best of 6/12/24-month scores” display rule.

- #fetch:https://support.upwork.com/hc/en-us/articles/211063228-How-to-become-a-Rising-Talent-on-Upwork
  - Verified Rising Talent eligibility + benefits relevant to new freelancers.
- #fetch:https://support.upwork.com/hc/en-us/articles/211068468-How-to-become-Top-Rated-on-Upwork
  - Verified Top Rated eligibility criteria + benefits.
- #fetch:https://support.upwork.com/hc/en-us/articles/360049625454-What-is-Expert-Vetted-status-on-Upwork
  - Verified Expert-Vetted definition, invitation/screening, and interview guidance.

- #fetch:https://support.upwork.com/hc/en-us/articles/211062538-Learn-about-the-Freelancer-Service-Fee
  - Verified fee range, where it appears in offers/proposals, and refund behavior.

- #fetch:https://support.upwork.com/hc/en-us/articles/211068288-How-Hourly-Payment-Protection-works-for-freelancers
  - Verified eligibility requirements (tracker usage, memos, activity, weekly limit, identity verification, billing verification).
- #fetch:https://support.upwork.com/hc/en-us/articles/211064098-Log-time-with-Time-Tracker
  - Verified what the desktop time tracker does/doesn’t record and the impact on Hourly Payment Protection.

- #fetch:https://support.upwork.com/hc/en-us/articles/211063748-How-Fixed-Price-Payment-Protection-works-for-freelancers-on-Upwork
  - Verified “project funds (formerly escrow)” concept, protected conditions, and the 14-day review/auto-release trigger.
- #fetch:https://support.upwork.com/hc/en-us/articles/211068528-Dispute-non-release-of-a-milestone-payment
  - Verified fixed-price dispute eligibility + key deadlines and the non-binding resolution → arbitration path.
- #fetch:https://www.upwork.com/legal#fp
  - Verified the official legal “Fixed Price Service Contract Escrow Instructions” and key release/dispute program mechanics.

- #fetch:https://support.upwork.com/hc/en-us/articles/211068588-What-to-do-if-a-client-disputes-your-hours-on-Upwork
  - Verified how hourly disputes pause contracts, how payment is decided, and when disputes can impact JSS.

- #fetch:https://support.upwork.com/hc/en-us/articles/34262508186899-How-to-request-changes-to-an-offer
  - Verified the official negotiation mechanism for offers (editable terms, limits, and what happens next).
- #fetch:https://support.upwork.com/hc/en-us/articles/360052511833-Get-to-know-each-other-before-a-contract
  - Verified interview/scoping rules pre-contract (keep comms on Upwork; no contact info yet).
- #fetch:https://support.upwork.com/hc/en-us/articles/360052511133-Circumvention-and-why-it-s-against-the-rules
  - Verified rules/penalties around off-platform contact/payment and safe responses.

- #fetch:https://support.upwork.com/hc/en-us/articles/211067668-How-to-stay-safe-on-Upwork
  - Verified scam-avoidance guidance, including “free work” red flags and reporting.
- #fetch:https://support.upwork.com/hc/en-us/articles/1500007578942-What-kind-of-jobs-aren-t-allowed-on-Upwork
  - Verified Upwork’s explicit prohibition of “free work” (contests/unpaid internships/under-minimum-rate).

- #fetch:https://support.upwork.com/hc/en-us/articles/360058234233-How-to-get-started-with-Project-Catalog-as-a-freelancer
  - Verified how Project Catalog works for freelancers (listings, review, visibility, and how it ties into fees/payments).
- #fetch:https://support.upwork.com/hc/en-us/articles/360023544173-How-to-propose-or-respond-to-milestone-changes-as-a-freelancer
  - Verified official workflow for scope/milestone changes and the “don’t work until accepted & funded” principle.

### Project Conventions

- Standards referenced: Repo guideline to paraphrase and link (no long copy/paste)
- Instructions followed: `.github/copilot-instructions.md` (evidence-based, link-only, include date/URL)

## Key Discoveries

### Project Structure

- Research outputs are stored under `./.copilot-tracking/research/`.

### Implementation Patterns

- Prefer Upwork-owned domains (`support.upwork.com`, `www.upwork.com`, `community.upwork.com`, `upwork.com/legal`).
- Use one authoritative page per topic where possible; avoid duplicates/overlap.

### Complete Examples

```text
N/A (documentation research only)
```

### API and Schema Documentation

N/A

### Configuration Examples

```text
N/A
```

### Technical Requirements

- Output must be: URL + 2–4 paraphrased takeaways per page.
- Focus on “missing topics beyond proposals/profile basics”: JSS, badges, fees, payments protection, tracking, escrow, interviews/negotiation, avoiding free work, scope changes, disputes, project catalog.

### Authoritative Upwork Pages (Curated)

Note: All takeaways below are paraphrased from the fetched pages (April 20, 2026) and intentionally avoid long direct quotes.

- https://support.upwork.com/hc/en-us/articles/211068358-All-about-your-Job-Success-Score
  - Defines JSS as a client-satisfaction metric based on your Upwork contract history.
  - Calls out that $\ge 90\%$ is “excellent,” and that dropping below the high-70s can make winning work harder.
  - Explains JSS is calculated daily over 6-, 12-, and 24-month histories and the best score is displayed.
  - Notes higher-earning contracts can carry more impact and flagged/suspended clients’ feedback may not count against you.

- https://support.upwork.com/hc/en-us/articles/38437458199059-How-is-my-Job-Success-Score-calculated
  - Gives a high-level calculation model: successful outcomes vs. negative outcomes over total outcomes.
  - Reiterates the “best of 6/12/24-month” display logic and daily recalculation.
  - Points you to Job Success insights for diagnostics when your score changes.

- https://support.upwork.com/hc/en-us/articles/211063228-How-to-become-a-Rising-Talent-on-Upwork
  - Summarizes Rising Talent as a “best new freelancers” signal, shown on profile/proposals/Project Catalog.
  - Lists concrete eligibility checks (profile completeness, recent activity, no account holds, identity verified; JSS $\ge 90\%$ if you already have one).
  - Clarifies you don’t apply; Upwork emails you if you qualify, and the badge can be re-earned if eligibility is restored.
  - Benefits include 30 one-time free Connects and ability to offer consultations.

- https://support.upwork.com/hc/en-us/articles/211068468-How-to-become-Top-Rated-on-Upwork
  - Defines Top Rated as the top 10% of talent and ties it directly to sustained strong client outcomes.
  - Provides specific eligibility criteria (e.g., JSS $\ge 90\%$, minimum account age, 100% profile, earnings threshold, recent activity, good standing).
  - Lists benefits like badge placement, job digest access, faster hourly payments, and consultation eligibility.
  - Warns that off-platform payment/contact before contract can cause badge loss and ineligibility windows.

- https://support.upwork.com/hc/en-us/articles/360049625454-What-is-Expert-Vetted-status-on-Upwork
  - Defines Expert-Vetted as top 1% in-field and describes the evaluation including a 30-minute interview.
  - Benefits include visibility to Business Plus/Enterprise clients, priority invites to private projects, and Talent Manager guidance.
  - Notes the program is typically invitation-only and eligibility is limited to select categories.
  - Includes operational interview rules (e.g., rescheduling constraints and consequences for missing the call).

- https://support.upwork.com/hc/en-us/articles/211062538-Learn-about-the-Freelancer-Service-Fee
  - States the freelancer service fee is a per-contract percentage on earnings, ranging 0%–15%.
  - Explains the fee is shown pre-acceptance (on offers/proposals) and then locked for that contract.
  - Notes service fees are refunded on amounts returned to the client (so you’re not paying fees on money you didn’t keep).
  - Gives practical rate-calculation examples (net target vs. gross billing, with rounding effects).

- https://support.upwork.com/hc/en-us/articles/211068288-How-Hourly-Payment-Protection-works-for-freelancers
  - Lists eligibility requirements: hourly contract, tracked time via desktop time tracker, contract-related screenshots, memos/labels, fair activity levels, within weekly limit.
  - Clarifies exclusions like manual time, idle/empty segments, non-work activity, or missing/inadequate memos.
  - Requires account/billing prerequisites (verified billing method client-side, identity verified, account in good standing).
  - Explains what happens on disputes: contract pauses; you must respond; protected hours are handled per the policy.

- https://support.upwork.com/hc/en-us/articles/211064098-Log-time-with-Time-Tracker
  - Walks through the official time-tracking workflow (desktop app → pick contract → memo/activity → start/stop).
  - Explains that memos are required and (when enabled) activity tags help categorize work; both affect protection eligibility.
  - Details what’s tracked (random screenshots ~every 10 minutes, activity level indicators) and what isn’t (keystroke content, hidden info like passwords).
  - Emphasizes manual time needs client approval and is not eligible for Hourly Payment Protection.

- https://support.upwork.com/hc/en-us/articles/211063748-How-Fixed-Price-Payment-Protection-works-for-freelancers-on-Upwork
  - Explains “project funds” (formerly “escrow”) as a neutral holding system: client deposits before work starts.
  - States protection depends on a funded milestone, delivering via “Submit Work for Payment,” and matching the milestone description.
  - Flags common ways to lose protection (working without a funded milestone, delivering outside the submit flow, scope mismatch).
  - Gives a repeatable checklist: confirm funding, submit properly to trigger the 14-day review/auto-release, and update milestones before doing changed scope.

- https://support.upwork.com/hc/en-us/articles/360023544173-How-to-propose-or-respond-to-milestone-changes-as-a-freelancer
  - Shows the official UI flow to propose new milestones or edit future milestones (amount/due date/remove).
  - Distinguishes “future milestones” vs. “active milestone” rules (clients may request active edits; you approve/reject).
  - Notes pending change behavior (auto-cancel triggers, expiration windows) and funding requirements if amounts increase.
  - Explicitly advises not to work on a milestone until it’s accepted and funded.

- https://support.upwork.com/hc/en-us/articles/211068528-Dispute-non-release-of-a-milestone-payment
  - Explains when you can dispute (active: delivered but not released; ended: refund requested with balance).
  - Calls out a key timebox: you have 7 calendar days to dispute certain fixed-price payment situations.
  - Describes the evidence/submit flow (feedback required, attach supporting docs; can’t edit after submitting).
  - Outlines resolution steps: client response window → non-binding recommendation → Notice of Non-Resolution → optional arbitration.

- https://www.upwork.com/legal#fp
  - Contains the formal “Fixed Price Service Contract Escrow Instructions” (effective date noted on the page).
  - Specifies default release mechanics including a 14-day no-action condition after a release request.
  - Documents dispute assistance timelines and the escalation path to arbitration when no resolution is reached.
  - Defines how refunds/cancellations and non-participation can affect release of funds.

- https://support.upwork.com/hc/en-us/articles/211068588-What-to-do-if-a-client-disputes-your-hours-on-Upwork
  - Explains why clients can dispute and how disputes pause the contract (weekly limit set to zero).
  - Describes response options (accept → refund disputed hours; decline → Upwork reviews diary against protection criteria).
  - Notes non-response still triggers an Upwork review and only qualifying protected hours are ensured.
  - States repeated disputes can impact JSS.

- https://support.upwork.com/hc/en-us/articles/34262508186899-How-to-request-changes-to-an-offer
  - Documents the “Request changes” negotiation workflow and that the original offer remains visible for tracking.
  - Lists what you can negotiate in-platform: project type, rate/amount, milestone schedules, weekly limits, manual time settings, dates, and scope text.
  - Covers operational constraints like 7-day offer windows and throttling (e.g., limited requests per hour).
  - Explains the possible client responses (approve, reject, counter, withdraw) and how version history works.

- https://support.upwork.com/hc/en-us/articles/360052511833-Get-to-know-each-other-before-a-contract
  - States interviews/scoping/negotiation should happen through Upwork tools before a contract starts.
  - Prohibits sharing contact info or taking payments off-platform pre-contract; highlights badge/account consequences.
  - Points to Upwork Messages and video calls as supported ways to interview without personal contact sharing.
  - Encourages reporting requests to move off-platform; notes limited exceptions for Enterprise.

- https://support.upwork.com/hc/en-us/articles/360052511133-Circumvention-and-why-it-s-against-the-rules
  - Defines “circumvention” (off-platform contact/payment pre-contract) and describes penalties (badge loss and possible account closure).
  - Provides practical guidance for what to say when asked to move payments or comms off Upwork.
  - Clarifies that even requesting off-platform payment can be a violation.
  - Notes there’s an official “conversion fee” path to move a relationship off-platform without violating rules.

- https://support.upwork.com/hc/en-us/articles/211067668-How-to-stay-safe-on-Upwork
  - Provides a safety checklist: keep conversations/payments on Upwork to retain payment protection.
  - Calls out common scam signals (requests for money upfront, check-cashing, free work, personal info requests).
  - Advises reporting suspicious behavior and protecting your account credentials.
  - Summarizes broader online safety best practices (phishing and malicious links).

- https://support.upwork.com/hc/en-us/articles/1500007578942-What-kind-of-jobs-aren-t-allowed-on-Upwork
  - Explicitly lists “free work” as prohibited (e.g., unpaid internships, contests/competitions to “win” work).
  - Notes jobs paying below Upwork’s minimum rates are not allowed.
  - Provides broader examples of prohibited job categories to help you identify risky/inappropriate postings.
  - Reinforces that Upwork is for professional, primarily digital, remote-friendly work.

- https://support.upwork.com/hc/en-us/articles/360058234233-How-to-get-started-with-Project-Catalog-as-a-freelancer
  - Defines Project Catalog as a “clients come to you” channel via packaged service listings.
  - Explains how listings are structured (title/description/media, optional add-ons) and that Upwork reviews projects before publishing.
  - Notes where projects surface (on your profile) and that you can share the listing URL for visibility.
  - Connects Project Catalog projects to the same billing/payment system and freelancer service fee mechanics.

## Recommended Approach

Compile a concise, curated list of official Upwork pages discovered via Help Center search, then fetch each selected page directly to ensure takeaways are grounded in the actual content.

## Implementation Guidance

- **Objectives**: Produce an authoritative reading list for new software-development freelancers on Upwork.
- **Key Tasks**: Discover → verify URLs → summarize takeaways.
- **Dependencies**: Access to Upwork Help Center and Upwork Legal pages.
- **Success Criteria**: Each topic is covered by at least one Upwork-owned authoritative page; no long quotes; takeaways are accurate and actionable.
