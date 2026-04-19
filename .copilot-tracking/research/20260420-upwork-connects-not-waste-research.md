<!-- markdownlint-disable-file -->

# Task Research Notes: Upwork official guidance on avoiding wasted Connects (job applications)

## Research Executed

### File Analysis

- (none)
  - This task is web-research focused; no code or repo doc changes required.

### Code Search Results

- (none)
  - No workspace code search needed.

### External Research

- #fetch:https://support.upwork.com/hc/en-us/search?query=connects%20refund
  - Discovered core Connects + proposal lifecycle pages (Connects basics, boosting, withdraw/resubmit).
- #fetch:https://support.upwork.com/hc/en-us/search?query=connects%20expire
  - Located official Connects expiration guidance.
- #fetch:https://support.upwork.com/hc/en-us/search?query=connects%20rollover
  - Located official rollover guidance and related Connects plan pages.
- #fetch:https://support.upwork.com/hc/en-us/search?query=connects%20balance
  - Located pages referencing where to see Connects balance/history.
- #fetch:https://support.upwork.com/hc/en-us/search?query=edit%20proposal
  - Located proposal edit window, boosting, and proposal submission guidance.
- #fetch:https://support.upwork.com/hc/en-us/search?query=Uma%20video%20interview
  - Located Uma™ video interview requirement/caveat pages.

- #fetch:https://support.upwork.com/hc/en-us/articles/211062898-Understanding-and-using-Connects
  - Verified Connects price, refunds/not-refunded scenarios, pre-spend checklist, and where to view Connects balance/history.
- #fetch:https://support.upwork.com/hc/en-us/articles/39293844553235-Do-Connects-ever-expire
  - Verified Connects expiry timeline and lack of expiry notifications.
- #fetch:https://support.upwork.com/hc/en-us/articles/39293812809235-How-many-Connects-can-I-rollover-each-month
  - Verified rollover behavior and holding limits.
- #fetch:https://support.upwork.com/hc/en-us/articles/39293330080019-Can-I-buy-as-many-Connects-as-I-want
  - Verified Connect purchase limit guidance and non-refund reminder.
- #fetch:https://support.upwork.com/hc/en-us/articles/41289488426643-I-noticed-the-number-of-Connects-required-to-submit-a-proposal-for-a-job-changed-from-when-I-first-saw-the-post-Why
  - Verified that required Connects can change while a job is live.

- #fetch:https://support.upwork.com/hc/en-us/articles/4406395531795-How-to-boost-your-proposal
  - Verified Boosted Proposals mechanics, auction close conditions, and when boost Connects are charged/refunded.
- #fetch:https://support.upwork.com/hc/en-us/articles/11983621573395-Boosted-Proposal-placebo-auctions
  - Verified placebo auction testing behavior and Connects handling.

- #fetch:https://support.upwork.com/hc/en-us/articles/211060388-How-to-edit-your-proposal
  - Verified proposal editing window and what can/can’t be edited as time passes.
- #fetch:https://support.upwork.com/hc/en-us/articles/211060288-How-to-withdraw-and-resubmit-a-proposal-on-Upwork
  - Verified withdraw/resubmit limitations (including boosted proposal + Uma interview caveat) and Connect refund behavior.
- #fetch:https://support.upwork.com/hc/en-us/articles/211062998-How-to-submit-a-proposal-on-Upwork
  - Verified proposal submission flow and Uma interview placement (“instead of a cover letter”).
- #fetch:https://support.upwork.com/hc/en-us/articles/41104211856915-How-to-take-a-recorded-video-interview-on-Upwork
  - Verified Uma™ recorded interview rules: language requirement, retake policy, device requirement, and Connects charging behavior.
- #fetch:https://support.upwork.com/hc/en-us/articles/211063018-How-to-respond-to-an-invitation-to-apply-on-Upwork
  - Verified Connects cost for accepting/declining invites and Uma interview caveat on invites.

- #fetch:https://support.upwork.com/hc/en-us/articles/211062888-What-is-Freelancer-Plus
  - Verified monthly Connects included in Freelancer Plus and proposal/client insights intended to improve bidding decisions.

- #fetch:https://support.upwork.com/hc/en-us/articles/46420996733971-How-to-use-ad-credits-as-a-freelancer
  - Verified ad credits vs. Connects behavior for Boosted Proposals, including expiry and refund caveats.

- #fetch:https://www.upwork.com/nx/plans/connects/history/
  - Verified Connects history UI endpoint exists (requires login).
- #fetch:https://www.upwork.com/nx/plans/connects/buy
  - Verified Buy Connects UI endpoint exists (requires login).
- #fetch:https://www.upwork.com/resources/search?query=connects
  - Checked Upwork Resource Center search; did not surface Connects-specific Resource Center articles in the fetched page.

### Project Conventions

- Standards referenced: Repo guideline to paraphrase and link (no long copy/paste)
- Instructions followed: `.github/copilot-instructions.md` (evidence-based, link-only, include date/URL)

## Key Discoveries

### Project Structure

- Research outputs are stored under `./.copilot-tracking/research/`.

### Implementation Patterns

- For Connects/proposal rules, `support.upwork.com` Help Center articles are the canonical, most specific sources.
- For balance/history UX, Upwork “nx” pages (e.g., `/nx/plans/connects/history/`) are official but require login; the Help Center describes what you’ll see there.

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

- Output must be a concise `{url, title, key points}` list.
- Takeaways must be paraphrased, but **numeric thresholds** should be called out with **exact phrasing**.
- Prefer official Upwork-owned domains: `support.upwork.com`, `upwork.com/resources`, `upwork.com/legal`.

### Official Upwork Reading List (How to bid without wasting Connects)

- url: https://support.upwork.com/hc/en-us/articles/211062898-Understanding-and-using-Connects
  title: Understanding and using Connects
  key points:
    - Pricing + buying: "Connects cost $0.15 (USD) each" (sold in bundles) and are used for proposals and ad products (e.g., boosted proposals).
    - “Before spending” checklist: Upwork explicitly recommends vetting job fit + your ability to write a quality proposal, then checking client hire intent/history and job activity (many proposals/interviews can lower odds).
    - Refund + tracking rules: Connects can be returned for specific platform/job-post reasons (and are returned for reuse, not cash); Upwork also explains where to check balance/history (transactions for "past 7, 30, and 90 days").

- url: https://support.upwork.com/hc/en-us/articles/39293844553235-Do-Connects-ever-expire
  title: Do Connects ever expire?
  key points:
    - Expiration window: "All Connects expire one year from the date they were issued and must be used within those 12 months."
    - No reminders: "We do not send email notifications regarding upcoming expiration dates for your Connects" (you must monitor them).
    - Expiry is final: "Expired Connects are non-refundable and cannot be credited back to your account."

- url: https://support.upwork.com/hc/en-us/articles/39293812809235-How-many-Connects-can-I-rollover-each-month
  title: How many Connects can I rollover each month?
  key points:
    - Rollover is allowed: "All of your Connects will rollover (unless they expire)."
    - Holding cap: "There is no limit on the amount of Connects you can hold."
    - Practical implication: You don’t need to spend Connects just to “use them up” monthly, but expiry still applies.

- url: https://support.upwork.com/hc/en-us/articles/39293330080019-Can-I-buy-as-many-Connects-as-I-want
  title: Can I buy as many Connects as I want?
  key points:
    - Purchase limit: You can "purchase or earn an unlimited amount of Connects".
    - Budget risk: "Connects expire after a year" and "you can’t return Connects for a refund" (so over-buying can become wasted spend).
    - Strategy: Use Connects-history + refund rules to decide whether to buy more.

- url: https://support.upwork.com/hc/en-us/articles/41289488426643-I-noticed-the-number-of-Connects-required-to-submit-a-proposal-for-a-job-changed-from-when-I-first-saw-the-post-Why
  title: I noticed the number of Connects required to submit a proposal for a job changed from when I first saw the post. Why?
  key points:
    - Variable pricing: "The number of Connects needed to submit a proposal can change while a job is live."
    - Upwork cites drivers like project size/scope, how much interest the job is getting, and market trends.
    - Practical implication: Re-check required Connects right before sending; don’t assume the earlier number still applies.

- url: https://support.upwork.com/hc/en-us/articles/211060388-How-to-edit-your-proposal
  title: How to edit your proposal
  key points:
    - Edit window: "Within six hours or until the client views your proposal (whichever comes first)" you can edit key content (cover letter, answers, attachments).
    - After that, you can usually still adjust “terms” (rate, milestones, etc.) until the client accepts/rejects — often better than withdrawing (which doesn’t refund Connects).
    - Boosting caveat: You can boost later if you didn’t boost initially, but "You can’t adjust a boost you’ve already submitted".

- url: https://support.upwork.com/hc/en-us/articles/211060288-How-to-withdraw-and-resubmit-a-proposal-on-Upwork
  title: How to withdraw and resubmit a proposal on Upwork
  key points:
    - Withdraw does not refund: "Any Connects you used to submit your proposal won’t be refunded when you withdraw it."
    - Resubmission rule: You can submit a new proposal after withdrawing only if the original proposal wasn’t boosted and didn’t include a Uma™ video interview; otherwise you can’t re-submit.
    - Cost implication: Resubmitting consumes Connects again — so prefer editing within the allowed window when possible.

- url: https://support.upwork.com/hc/en-us/articles/4406395531795-How-to-boost-your-proposal
  title: How to boost your proposal
  key points:
    - Auction limits: Boosting can place you in the "top four slots"; the auction closes "after seven days or upon first hire, whichever comes first" (then "you can’t boost a proposal on the same job post after that").
    - Charge/refund mechanics: base proposal Connects are charged immediately; boost Connects are charged at auction end only if you’re top-four at close or the client interacts while boosted; otherwise boost Connects are refunded (standard proposal Connects are not).
    - Visibility thresholds: a boost may end if the client "opens it three times" without further action or "sees it five times" without interacting (among other conditions like outbids).

- url: https://support.upwork.com/hc/en-us/articles/11983621573395-Boosted-Proposal-placebo-auctions
  title: Boosted Proposal placebo auctions
  key points:
    - Testing behavior: a "very small percentage" of job posts may run placebo auctions where boosts do not affect ranking and "no Connects will be taken for the boost" (only the Connects to apply).
    - Discoverability: freelancers "won’t know" it’s placebo until after submission, when Upwork notifies them.
    - Upwork’s stated impact: Boosting "can increase your chance of being hired up to 24%" (Upwork’s claim; not a guarantee).

- url: https://support.upwork.com/hc/en-us/articles/211062998-How-to-submit-a-proposal-on-Upwork
  title: How to submit a proposal on Upwork
  key points:
    - Uma interview placement: "Some job posts may require a video interview with Uma™, Upwork’s Mindful AI instead of a cover letter".
    - Editing reminder: "You can edit most parts of a proposal up to six hours after submitting it, or until the client has viewed it."
    - Bid discipline: Upwork frames rate/bid-setting as a deliberate choice (market rates, job complexity, expenses), reducing “spray-and-pray” proposals that waste Connects.

- url: https://support.upwork.com/hc/en-us/articles/41104211856915-How-to-take-a-recorded-video-interview-on-Upwork
  title: How to take a recorded, video interview on Upwork
  key points:
    - Time + constraints: "The interview usually takes 5–10 minutes, and you must complete it in English"; and "You’ll need to use a desktop or laptop to complete the interview."
    - No redo after submission: the interview "can’t be edited or redone" and "Once you submit your proposal, you cannot retake the video interview".
    - Connects safety valve: "You will not be charged Connects if you take the interview but choose not to submit a proposal afterward."

- url: https://support.upwork.com/hc/en-us/articles/211063018-How-to-respond-to-an-invitation-to-apply-on-Upwork
  title: How to respond to an invitation to apply on Upwork
  key points:
    - Connects cost for the response itself: "responding to that invitation (either by accepting or declining) does not cost any Connects."
    - Uma caveat: invited proposals may still require completing a Uma™ video interview, depending on the job post.
    - Safety reminder: Upwork reiterates keeping communications on-platform pre-contract (helps avoid situations where you spend Connects on risky/scam invites).

- url: https://support.upwork.com/hc/en-us/articles/211062888-What-is-Freelancer-Plus
  title: What is Freelancer Plus?
  key points:
    - Monthly Connects: "Get 100 Connects each month" after one month on the plan; in the first month you get "between 90-100 Connects depending on when you upgrade".
    - Better decision inputs: includes proposal/client insights to refine bidding and proposal strategy (useful for choosing which jobs are “worth” spending Connects on).
    - Timing edge-case: if you sign up on the "29th, 30th, or 31st" your plan renews on the "1st of the following month" (and you receive the full Connects then).

- url: https://support.upwork.com/hc/en-us/articles/46420996733971-How-to-use-ad-credits-as-a-freelancer
  title: How to use ad credits as a freelancer
  key points:
    - Not a Connect substitute: ad credits "can’t be used for submitting proposals" (you still spend base Connects to apply).
    - Expiry + refunds: ad credits have their own expiration ("usually within a set timeframe like 14 or 30 days") and "are not transferable, refundable, or redeemable for Connects or cash".
    - Boosting caveat: if you boost for 20 using 10 ad credits + 10 Connects and don’t win, "only the 10 Connects will be returned — not the 10 ad credits".

- url: https://www.upwork.com/nx/plans/connects/history/
  title: Connects history (Upwork UI, requires login)
  key points:
    - The official Connects history page exists but requires authentication to view.
    - The Help Center directs users here to review Connects transactions and manage spend decisions.
    - Use alongside Help Center refund rules to avoid misinterpreting refunds vs. charges.

- url: https://www.upwork.com/nx/plans/connects/buy
  title: Buy Connects (Upwork UI, requires login)
  key points:
    - The official Buy Connects page exists but requires authentication to view.
    - The Help Center documents the prerequisites (billing method) and pricing per Connect.
    - Use after validating refund/expiry rules so you don’t over-buy Connects you might not use.

### Numbers & thresholds (verbatim phrases seen)

- "Connects cost $0.15 (USD) each"
- "New users may receive a one-time bonus of 50 Connects"
- "some freelancers may receive 10 free Connects each month"
- "You earn 30 free Connects for each badge"
- "The most Connects you can earn through the three badges is 90 total"
- "Submit three or more proposals" + "Spend a total of at least 54 Connects" + "You can earn this reward twice per calendar month" + "delivered within 24 hours"
- "All Connects expire one year from the date they were issued and must be used within those 12 months"
- "All of your Connects will rollover (unless they expire). There is no limit on the amount of Connects you can hold"
- "Within six hours or until the client views your proposal (whichever comes first)"
- Boosting: "top four slots"; auction closes "after seven days or upon first hire, whichever comes first"; boost visibility thresholds include "opens it three times" and "sees it five times"
- Placebo auctions: Boosting "can increase your chance of being hired up to 24%"
- Uma interview: "The interview usually takes 5–10 minutes"; "You will not be charged Connects if you take the interview but choose not to submit a proposal afterward"
- Freelancer Plus: "Get 100 Connects each month"; first month "between 90-100 Connects"; end-of-month signup "29th, 30th, or 31st" → renew "1st of the following month"
- Ad credits: expiration "usually within a set timeframe like 14 or 30 days"; non-refund example "only the 10 Connects will be returned — not the 10 ad credits"

## Recommended Approach

Use Upwork Help Center as the single source of truth for Connect charging/refund/expiry rules, then apply Upwork’s own “Tips for managing your Connects” as a pre-application checklist (job fit → client history/hire intent → job activity) before spending Connects or bidding extra for a boost.

## Implementation Guidance

- **Objectives**: Build an evidence-based “don’t waste Connects” reference list for new software-development freelancers.
- **Key Tasks**: Use Help Center search → fetch canonical policy pages → extract Connect charge/refund/expiry rules + proposal lifecycle caveats → publish a compact reading list.
- **Dependencies**: Public access to `support.upwork.com`; authenticated access for the Upwork UI pages (Connects history / buy pages).
- **Success Criteria**: Every requested topic (cost, expiry, rollover, refunds, edit/withdraw/resubmit, boosted proposals, Uma interviews, balance/history) is covered by at least one official Upwork page; summaries are paraphrased; numeric thresholds are quoted verbatim.
