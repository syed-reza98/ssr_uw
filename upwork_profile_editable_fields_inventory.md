# Upwork Profile — Editable Sections & Input Fields (Inventory)

Generated: 2026-04-01

Profile URL (logged-in view):
- https://www.upwork.com/freelancers/~0111411ad1db5a2af3

## Important notes
- This document inventories **what fields exist in the Upwork UI** at the time of capture. Upwork can change labels/structure.
- I’m treating **Save/Submit** actions as “high impact” — I won’t click them unless you explicitly tell me to.

## A) Page-level editable sections (seen on the profile page)
These are the sections that appear top-to-bottom on your profile page when you’re signed in (each has an **Edit / Add / Manage** action).

- Profile photo (Edit photo)
- Specialized profile selector (dropdown/combobox)
- Title / Headline (Edit title)
- Hourly rate (Edit hourly rate)
- Profile overview / Description (Edit description)
- Portfolio (Edit portfolio, Reorder portfolio)
- Work history (Edit work history, More options)
- Skills & expertise (Edit skills and expertise)
- Project catalog (Manage projects)
- Promote with ads (Edit availability badge, Edit boost your profile)
- Video introduction (Add introduction video)
- Availability / Hours per week (Edit availability)
- Languages (Add language, Edit language)
- Verifications (ID is verified; Add military veteran)
- Licenses (Add license)
- Education (Add education; Edit/Delete existing items)
- Linked accounts (View profile; Unlink; connect other accounts)
- Associated with (agency)
- Testimonials (Add a testimonial; Request a testimonial)
- Certifications (Add manually; Delete existing)
- Employment history (Add employment history; Edit/Delete existing items)
- Other experiences (Add other experiences; Edit/Delete items)

## B) Modal forms captured so far (field-level)

### 1) Title — “Edit your title”
- Guidance text: “Enter a single sentence description of your professional skills/experience …”
- Field: **Your title*** (single-line text)
  - Placeholder: “Example: Experienced full-stack web developer, Graphic designer”
- Actions: Cancel, Save

### 2) Hourly rate — “Change hourly rate”
- Notes shown in UI:
  - New hourly rate applies only to **new contracts**
  - Shows your current profile rate
- Field: **Hourly Rate*** (currency input, per hour)
  - Placeholder: “$0.00”
- Field: **Upwork Service Fee** (disabled currency input, per hour)
- Field: **You’ll Receive** (estimated currency per hour after fees)
- Actions: Cancel, Save

### 3) Profile overview — “Profile overview”
- Guidance bullets (in UI): strengths/skills, highlight projects/accomplishments/education, keep it short & error-free
- Link shown in UI: “Learn more about building your profile”
- Field: **Profile overview** (multi-line text)
  - Live character counter is shown (example observed: “4102 characters left”)
- Actions: Cancel, Save

### 4) Photo — “Edit photo”
- Dialog title: “Edit photo”
- Controls shown in the dialog:
  - “Close the dialog” (close button)
  - Image area with “Move” label (drag to reposition)
  - Slider: **Uploaded image** (crop/position control)
  - Zoom controls:
    - Button: “Zoom” (icon)
    - Slider: **Zoom** (example value observed: “0”)
    - Readouts (example observed): “23% zoom”, “rotated 0 degrees counterclockwise”
  - Button: “Rotate 90 degrees counterclockwise”
  - Button: “Delete current Image”
  - Help text about photo rules + link: “Learn more about sample profiles and best practices”
- Actions: **Change image**, **Save photo**

## C) Settings → Profile Settings page (field-level)

Settings page URL:
- https://www.upwork.com/freelancers/settings/profile#profilesAnchor

### 1) My profile

#### a) “View my profile as others see it”
- Control: link (opens public-view mode)

#### b) Visibility
- Control: **Visibility** (combobox)
- Options:
  - Public (selected)
  - Only Upwork users
  - Private

#### c) Project preference
- Control: **Project preference** (combobox)
- Control: **Info about project preference** (info button)
- Options:
  - Both short-term and long-term projects (selected)
  - Long-term projects (3+ months)
  - Short-term projects (less than 3 months)

#### d) Earnings privacy
- Control: **Info about earnings privacy** (info button)
- Notes shown in UI:
  - “Want to keep your earnings private?”
  - “Upgrade to a Freelancer Plus membership” (link) — to enable this setting

### 2) Experience level
- Control type: radio group
- Options:
  - Entry level — “I am relatively new to this field”
  - Intermediate — “I have substantial experience in this field”
  - Expert — “I have comprehensive and deep expertise in this field” (checked)

### 3) Categories
- Control: **Edit category** (button)
- Categories shown on the page:
  - **Web, Mobile & Software Dev**
    - QA Testing
    - Web & Mobile Design
    - Ecommerce Development
    - Web Development
    - Scripts & Utilities
    - AI Apps & Integration
  - **IT & Networking**
    - DevOps & Solution Architecture
  - **Data Science & Analytics**
    - Data Extraction/ETL
    - AI & Machine Learning
    - Data Analysis & Testing

### 4) Specialized profiles
- Notes shown in UI:
  - “Reorder specialized profiles” (control not expanded yet)
  - “1 published”
- Item shown:
  - “Full Stack Development - Published”
  - Options menu: **Full Stack Development options**
    - Menu actions: View, Edit, Switch Specialty

### 5) Linked accounts
- Items shown:
  - GitHub
  - StackOverflow

### 6) AI preference
- Text: “Choose how your Upwork data is used for AI training and improvement.”
- Link: “Learn more” (Upwork Help Center)
- Status text shown: “Your data is helping train our AI”
- Control: **Change preference** (button)

#### AI preference modal — “Update your AI preferences”
- Close control: “Close the dialog”
- Primary text:
  - “Allow your Upwork data to be used for AI training and improvement.”
  - “Third parties won’t be able to use this data to train their own models. You can change this any time.”
  - “We may still use your data to provide AI features, including personalizing responses based on your activity and past interactions.”
- Link in modal: “Learn more”
- Actions: **Don’t allow**, **Allow**

## D) Remaining sections to capture (next)
I still need to open each editor and list **every input field** inside it, including:
- Edit photo (upload/crop)
- Portfolio editor (add/edit items, URLs, images, skills)
- Skills & expertise editor
- Availability badge + Boost profile toggles
- Availability (hours/week, contract-to-hire)
- Languages (add/edit)
- Licenses
- Education (add/edit)
- Testimonials
- Certifications (add)
- Employment history (add/edit)
- Other experiences (add/edit)

Also still pending from **Profile Settings**:
- Edit category (open the editor and inventory its fields)
- Specialized profile actions (View / Edit / Switch Specialty) — open each and inventory the fields
- Linked accounts (click GitHub/StackOverflow to see connect/unlink flows + any inputs)
