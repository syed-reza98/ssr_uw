# Upwork Profile Editable Sections & Input Fields Inventory (Top-to-Bottom)

Date: 2026-04-01
Scope: Profile Settings page + Profile Edit page (All Work + Specialized Profile) in authenticated session.
Goal: enumerate editable sections and input fields without skipping major editable areas.

---

## A) Profile Settings Page (Top-to-Bottom)

Source page: `https://www.upwork.com/freelancers/settings/profile#profilesAnchor`

### 1) Visibility
- Field type: Combobox
- Current options observed:
  - Public
  - Only Upwork users
  - Private

### 2) Project preference
- Field type: Combobox
- Current options observed:
  - Both short-term and long-term projects
  - Long-term projects (3+ months)
  - Short-term projects (less than 3 months)

### 3) Earnings privacy
- No direct editable input unless on Freelancer Plus (upgrade-gated control)

### 4) Experience level
- Field type: Radio group
- Options:
  - Entry level
  - Intermediate
  - Expert

### 5) Categories (Edit category)
- Entry point: `Edit category`
- Modal heading: `Categories`
- Field type: Multi-checkbox service categories
- Selected/available specialties observed include (non-exhaustive of hidden categories):
  - Data Analysis & Testing
  - Data Extraction/ETL
  - Data Mining & Management
  - AI & Machine Learning
  - Database Management & Administration
  - ERP/CRM Software
  - Information Security & Compliance
  - Network & System Administration
  - DevOps & Solution Architecture
  - Blockchain, NFT & Cryptocurrency
  - AI Apps & Integration
  - Desktop Application Development
  - Ecommerce Development
  - Game Design & Development
  - Mobile Development
  - Other - Software Development
  - Product Management & Scrum
  - QA Testing
  - Scripts & Utilities
  - Web & Mobile Design
  - Web Development

### 6) Specialized profiles
- Section shows published count + specialty rows
- Row actions observed:
  - View
  - Edit
  - Switch Specialty
- `Switch Specialty` modal:
  - Field: specialty dropdown (`Select a specialty`)
  - Actions: `Cancel`, `Unpublish & Continue`

### 7) Linked accounts
- Connect/disconnect/account linking actions (GitHub, StackOverflow)
- Inputs depend on third-party auth flow (external)

### 8) AI preference
- Entry point: `Change preference`
- Modal heading: `Update your AI preferences`
- Actions:
  - `Don't allow`
  - `Allow`
- (Binary policy choice; no text input fields)

---

## B) Profile Edit Page (All Work + Specialized) (Top-to-Bottom)

Primary page(s):
- `https://www.upwork.com/freelancers/~0111411ad1db5a2af3`
- `https://www.upwork.com/freelancers/~0111411ad1db5a2af3?s=1110580755107926016`

Observed tabs:
- Full Stack Development (specialized)
- All work

### 1) Photo
- Entry point: `Edit photo`
- Field(s): image upload controls (OS picker flow)

### 2) Title
- Entry point: `Edit title`
- Modal heading: `Edit your title`
- Input field:
  - `Your title *`
  - HTML id: `profile-title`
  - Type: text
  - Min length: 4
  - Max length: 70
  - Required: yes

### 3) Hourly rate
- Entry point: `Edit hourly rate`
- Modal heading: `Change hourly rate`
- Inputs observed:
  - 3 currency text inputs (`$0.00` placeholders)
  - (Displayed as rate/service fee/receive amount style UI)

### 4) Overview / Description
- Entry point: `Edit description`
- Modal heading: `Profile overview`
- Input field:
  - `Profile overview`
  - HTML id: `profile-description`
  - Type: textarea
  - Min length: 100
  - Max length: 5000
  - Required: yes

### 5) Portfolio

#### 5.1 Add portfolio item (All Work)
- Entry point: `Add portfolio`
- Modal heading: `Add a new portfolio project`
- Fields observed:
  - `Project title *` (textarea-like input)
  - `Your role (optional)`
  - `Project description *`
  - `Skills and deliverables *` (tag input, up to 5 shown in UI)
  - `Related Upwork job (optional)` (search input)
- Content block controls observed:
  - Upload images (up to 10 MB)
  - Link video (YouTube/Vimeo) or upload (up to 100 MB)
  - Add text block
  - Add web link
  - Add PDF files (up to 10 MB, max 5 files)
  - Add audio files (up to 10 MB)
- Actions:
  - `Save as draft`
  - `Next: Preview`

#### 5.2 Edit portfolio (Specialized)
- Entry point: `Edit portfolio`
- Modal heading: `Edit portfolio projects`
- Field types:
  - Checkbox list of existing portfolio items to include in specialty
- Actions:
  - `Cancel`
  - `Save`

#### 5.3 Reorder portfolio
- Entry point: `Reorder portfolio`
- Field type: drag/reorder interaction (no text fields)

### 6) Work history
- Section actions:
  - `Edit work history` (section-level)
  - Item-level edit/delete on each employment/work history row
  - `Share work history` on completed job entries

### 7) Skills & expertise (Specialized)
- Entry point: `Edit skills and expertise`
- Modal heading: `Edit specialized profile skills`
- Field model:
  - Multi-select tag lists across groups (checkbox-like chips)
  - Groups observed:
    - Deliverables
    - Skills
    - Languages
    - Databases
    - Web servers
  - Supports skip/update per list flow
- Actions:
  - `Cancel`
  - `Save`

### 8) Video introduction
- Entry point: `Add introduction video`
- Field type: YouTube URL/link input flow

### 9) Availability
- Entry point: `Edit availability`
- Modal heading: `Availability | Hours per week | Contract-to-hire`
- Fields observed:
  - Hours/week radio options:
    - More than 30 hrs/week
    - Less than 30 hrs/week
    - As needed - open to offers
    - None
  - Contract-to-hire checkbox:
    - I'm open to contract-to-hire opportunities
- Actions:
  - `Cancel`
  - `Save`

### 10) Languages

#### 10.1 Add language
- Entry point: `Add language`
- Modal heading: `Add language`
- Fields observed:
  - Language selector
  - Proficiency level selector
- Actions:
  - `Cancel`
  - `Save`

#### 10.2 Edit language
- Entry point: `Edit language`
- Same model as add (edit existing language records)

### 11) Verifications
- Entry point: `Add military veteran`
- Field type: status/profile attribute form (option toggle/update)

### 12) Licenses
- Entry point: `Add license`
- Modal heading: `Add a license`
- Fields observed:
  - `Licensed profession *` (text)
  - `Jurisdiction or Licensing body *` (text)
  - `License number *` (text)
  - `N/A` (checkbox)
  - `Licensing verification URL *` (text/url)
  - `Date issued *` (date input)
  - `Expiration date *` (date input)
  - `My license does not have an expiration date` (checkbox)
- Constraints observed:
  - Provider max length ~40
  - License number max length ~18
  - Verification URL max length ~250
- Actions:
  - `Cancel`
  - `Save`

### 13) Education

#### 13.1 Add education
- Entry point: `Add education`
- Modal heading: `Add education`
- Fields observed:
  - `School`
  - `Dates Attended (Optional)`
  - `From`
  - `To (or expected graduation year)`
  - `Degree (Optional)`
  - `Area of Study (Optional)`
  - `Description (Optional)`
- Actions:
  - `Cancel`
  - `Save`

#### 13.2 Edit/Delete education
- Row-level edit/delete controls for each education item

### 14) Testimonials
- Entry points:
  - `Add a testimonial`
  - `Request a testimonial`
- Modal fields observed for request form:
  - First name
  - Last name
  - Business email address
  - Client's LinkedIn profile
  - Client's title (optional)
  - Project type (optional)
  - Message to client
- Constraints observed:
  - Name fields max length 50
  - LinkedIn/profile URL max length ~256
  - Message max length 800

### 15) Certifications
- Entry point: `Add manually`
- Modal heading: `Add certification`
- Entry branches:
  - Add via Partner Verified
  - Add manually
- Item-level controls:
  - Show description
  - Delete certification

### 16) Employment history

#### 16.1 Add employment history
- Entry point: `Add employment history`
- Modal heading: `Add employment`
- Fields observed:
  - Company
  - City
  - Country
  - Title
  - Month
  - Year
  - I currently work here (checkbox)
  - Description (optional)
- Actions:
  - `Cancel`
  - `Save`

#### 16.2 Edit/Delete employment history rows
- Row-level edit/delete controls per position

### 17) Other experiences

#### 17.1 Add other experiences
- Entry point: `Add other experiences`
- Modal heading: `Add other experiences`
- Fields observed:
  - `Subject` (required)
  - `Description` (required)
- Constraints observed:
  - Description max length ~4000

#### 17.2 Edit/Delete other experience rows
- Row-level edit/delete controls

---

## C) Non-text but editable controls observed
- Promote with ads:
  - Availability badge (edit)
  - Boost profile (edit)
- Connects purchase links, stats filters
- Sidebar toggles and expansion controls

---

## D) Notes for practical completion
- Some fields are gated by membership/account status.
- Some add/edit flows are route-based modals and can show confirmation dialogs on close.
- Portfolio/specialized portfolio use separate editors:
  - Add/edit content item
  - Select which items appear in specialty profile

---

## E) Validation artifacts used
- Live UI modal field extraction done directly via browser automation.
- Constraints cross-checked with Upwork help docs for portfolio and profile enhancement where needed.