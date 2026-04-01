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

### 5) Languages — “Add language”
- Dialog title: “Add language”
- Fields:
  - **Language** (combobox)
    - Placeholder: “Search for language”
  - **Proficiency level** (combobox)
    - Placeholder: “Search for proficiency level”
    - Options shown:
      - Basic — “I am only able to communicate in this language through written communication”
      - Conversational — “I know this language well enough to verbally discuss project details with a client”
      - Fluent — “I have complete command of this language with perfect grammar”
      - Native or Bilingual — “I have complete command of this language, including breadth of vocabulary, idioms, and colloquialisms”
- Actions: Cancel, Save (disabled until required fields are selected)

### 6) Skills — “Edit skills”
- Dialog title: “Edit skills”
- Field/area: **Your skills** (list of skill tags)
  - Each skill tag has a remove control (e.g., “Remove <Skill> Tag”)
- Field: **Search skills** (searchbox) — used to add skills
- Constraint text shown: “Maximum 20 skills.”
- Actions: Cancel, Save

### 7) Promote with ads — “Turn on availability badge”
- Opened via: “Edit availability badge”
- Dialog title: “Turn on availability badge”
- Description text: explains the Availability Badge and mentions “up to 70% more invites”
- Fields/controls in the dialog:
  - **Maximum budget** (section)
    - Shows a “Current price: <N> Connects per week” readout
    - Includes an info icon/button next to the heading
  - **Use Connects from**
    - Combobox: “Select an account”
    - Includes an info icon/button next to the heading
  - Connects price controls:
    - Button: “Decrease maximum connects price”
    - Spinbutton: “Maximum Connects <N>”
    - Button: “Increase maximum connects price”
    - Suffix text: “Connects per week”
  - Readout: “You have <N> Connects in your freelancer account.”
  - Link: “Buy more Connects”
  - **Preview** section (shows how “Available now” badge appears)
- Actions: Cancel, Turn On (was disabled until required selections)

### 8) Promote with ads — “Boost your profile”
- Opened via: “Edit boost your profile”
- Dialog title: “Boost your profile”
- Description text: boosting bids Connects to appear higher in search; charged only if a client clicks

#### Audience
- Field: **Category** (combobox)
  - Placeholder: “Select a category”
- Field: **Specialty** (selector shown)
  - Placeholder shown: “Select a specialty”

#### Budget
- Field: **Bid per click** (spinbutton)
  - Includes an info/help icon (“Bids help you reach the top of search results…”) 
- Field: **Limit** (spinbutton)
  - Includes an info/help icon (“Set a daily or total limit…”) 
- Field: **Limit type** (radio group)
  - Total (checked)
  - Daily
- Readout: “You have <N> Connects left.”
- Link: “Buy more Connects”

#### Schedule
- Field: **End date (optional)** (textbox)
  - Placeholder: “MMM dd, yyyy”
- Control: “Choose date” (button)

#### Summary + Preview
- Summary section shows calculated: Bid per click, Limit, “You’ll receive up to”
- Preview section shows how “Boosted” label appears

- Actions: Cancel, Boost now

### 9) Licenses — “Add a license”
- Dialog title: “Add a license”
- Guidance text explains what counts as a professional license + link: “Learn more about adding professional licenses”
- Fields (all marked required in UI with *):
  - **Licensed profession*** (textbox)
    - Placeholder: “e.g. Attorney at Law”
    - Info icon/button present
  - **Jurisdiction or Licensing body*** (textbox)
    - Placeholder: “e.g. California Bar Association”
    - Info icon/button present
  - **License number*** (textbox)
    - Placeholder: “Enter license number”
    - Option: checkbox “N/A”
    - Info icon/button present
  - **Licensing verification URL*** (textbox)
    - Placeholder: “Enter URL where license can be verified”
    - Info icon/button present
  - **Date issued*** (date textbox)
    - Placeholder: “Mmm d, yyyy”
    - Control: “Choose date” button
  - **Expiration date*** (date textbox)
    - Placeholder: “Mmm d, yyyy”
    - Control: “Choose date” button
    - Info icon/button present
  - Checkbox: “My license does not have an expiration date”
- Actions: Cancel, Save (disabled until required fields are valid)

### 10) Education — “Add education”
- Dialog title: “Add education”
- Fields:
  - **School** (combobox / searchable selector)
  - **Dates Attended (Optional)**
    - From (combobox)
    - To (or expected graduation year) (combobox)
  - **Degree (Optional)** (combobox)
  - **Area of Study (Optional)** (searchbox)
  - **Description (Optional)** (multi-line textbox)
- Actions: Cancel, Save (may be disabled until required fields are filled)

### 11) Portfolio — “Add a new portfolio project”
- Dialog title: “Add a new portfolio project”
  - Note shown: “All fields are required unless otherwise indicated.”
- Fields:
  - **Project title*** (textbox)
    - Placeholder: “Enter a brief but descriptive title.”
    - Character counter shown (70 characters left)
  - **Your role (optional)** (textbox)
    - Placeholder: “e.g., Front-end engineer or Marketing analyst”
    - Character counter shown (100 characters left)
  - **Project description*** (textbox)
    - Placeholder: “Briefly describe the project's goals, your solution and the impact you made here.”
    - Character counter shown (600 characters left)
  - **Skills and deliverables***
    - Searchbox / selector for adding skill tags
    - “5 skills left” indicator
  - **Add content** (at least one content item appears to be required)
    - Upload images (up to 10 MB)
    - Link a video (YouTube or Vimeo) or upload (up to 100 MB)
    - Add text block
    - Add a web link (articles or websites)
    - Add PDF files (up to 10 MB, max 5 files)
    - Add audio files (up to 10 MB)
  - **Related Upwork job (optional)** (searchbox)
- Actions:
  - Save as draft
  - Next: Preview
  - Close (may prompt: “Save your project as a draft?” with options “Close without saving” / “Save as draft and return later”)

### 12) Employment history — “Add employment”
- Dialog title: “Add employment”
- Fields:
  - **Company** (combobox)
  - **City** (textbox)
    - Placeholder: “Enter city”
  - **Country** (searchbox)
  - **Title** (searchbox)
  - **From date**
    - Month (combobox; placeholder shown as “From, month”)
    - Year (combobox; placeholder shown as “From, year”)
  - Checkbox: **I currently work here** (was checked in UI)
  - **Description (Optional)** (multi-line textbox)
    - Placeholder: “Enter description”
- Actions: Cancel, Save (disabled until required fields are valid)

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
- Availability (hours/week, contract-to-hire)
- Testimonials
- Certifications (add)
- Employment history (edit existing item flow)
- Other experiences (add/edit)

Also still pending from **Profile Settings**:
- Edit category (open the editor and inventory its fields)
- Specialized profile actions (View / Edit / Switch Specialty) — open each and inventory the fields
- Linked accounts (click GitHub/StackOverflow to see connect/unlink flows + any inputs)
