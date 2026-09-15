# Blackwater Tutoring — Website Project

> **Status:** Live at tutoring.joejarman.xyz, transitioning to blackwatertutoring.co.uk
> **Notion project board:** Blackwater Tutoring — Website Project + Blackwater Tasks database

## About

Single-page marketing website for Jill Franchi's 11+ exam tutoring business. Jill has 25+ years of experience helping children succeed in the 11+ exam and gain places at top UK grammar and independent schools.

- Subjects: English, Maths, Verbal Reasoning, Non-Verbal Reasoning
- Rate: £40/hour for 1:1 11+ tutoring
- Location: Essex, UK (in-person & online)
- Jill was known as Mrs Jarman in the classroom, 10 years at Essex grammar schools, married to songwriter Tony Franchi

## Tech Stack

- **Static HTML + CSS + JS** — all embedded in a single `index.html` (no build step, no dependencies)
- **Google Fonts** — Inter (body/UI) loaded via `<link>`
- **Deployment** — GitHub Pages (auto-deploys from `main` branch)
- **DNS** — Cloudflare (proxied CNAME record)
- **Domain** — `tutoring.joejarman.xyz` currently, migrating to `blackwatertutoring.co.uk`

## Project Files

- `index.html` — The entire website (973 lines, single file)
- `assets/hero-bg.jpg` — Classroom/learning photo (1600×1130)
- `assets/teaching.jpg` — Teaching photo (1200×747)
- `assets/study.jpg` — Books/study photo (1200×800)
- `CNAME` — Custom domain for GitHub Pages
- `notion-page.json`, `notion-v2.json` — Notion API payloads (history)

## Design System

- **Primary:** Navy `#1a2a4a`
- **Accent:** Gold `#c8952b`
- **Background:** Off-white `#f7f5f0`
- **Font:** Inter (body), Playfair Display not used here (unlike tw-tutor — uses Inter for everything)
- **Responsive:** Mobile-first, breakpoints at 768px and beyond
- **Animations:** IntersectionObserver fade-in on scroll (`.fade-in` → `.visible`)
- **Header:** Fixed sticky nav with scroll background transition, mobile hamburger menu, scroll-spy active link highlighting

## Site Sections

| Section | ID | Content |
|---------|-----|---------|
| Hero | `#home` | Full-viewport hero-bg.jpg with dark overlay, headline "11+ Exam Success Starts Here", CTAs |
| About Jill | `#about` | teaching.jpg, 25+ years badge, bio, subject pills |
| Services | `#services` | 4 cards: 1:1 Tutoring, Mock Tests, Exam Technique, Parent Consultations |
| Testimonials | `#testimonials` | 3 placeholder cards — replace with real quotes |
| Contact | `#contact` | jillmjarman@gmail.com, 07848 686 464, contact form |

## Known Gaps / TODOs

- **Contact form has no backend** — it just shows a client-side "Message Sent ✓" for 2.5s and resets. Needs Formspree, Netlify Forms, or similar before relying on it.
- **Testimonials are placeholders** — 3 "Coming soon" cards with Lorem ipsum. Replace with real parent/student quotes.
- **Domain transition** — blackwatertutoring.co.uk purchased. Need to: update CNAME, set custom domain in GitHub Pages, update Cloudflare DNS, update site copy/references from "Jill Franchi Tutoring" to "Blackwater Tutoring".
- **£40/hour pricing** — confirm still correct and whether block booking discounts exist.
- **SEO** — Google Business profile, Essex local SEO keywords, meta tags already done but could be beefed up.
- **Social media** — No Facebook/Instagram/LinkedIn pages yet (contact form links to email directly).

## How to Make Changes

### Editing content

All content is in `index.html` — just edit the text directly. No build step needed.

### To deploy

```bash
git add .
git commit -m "description of change"
git push origin main
```

GitHub Pages auto-deploys from main branch.

### Preview locally

```bash
python3 -m http.server 8000
# Open http://localhost:8000
```

## Domain Setup (GitHub Pages + Cloudflare)

1. Add CNAME to Cloudflare DNS: `blackwatertutoring.co.uk` → `jjarman-uk.github.io` (proxied)
2. Update `CNAME` file in repo root
3. In GitHub repo Settings → Pages → set custom domain
4. Wait for HTTPS certificate provisioning (~5 min)
5. Add redirect from old domain if needed

## Notion Integration

- Project board: https://app.notion.com/p/Blackwater-Tutoring-Website-Project-3db4765fb6838150a055c4b52d5331a7
- Tasks database: "Blackwater Tasks" with Status, Owner, Priority, Area, Notes fields
- The Notion integration token is stored in Hermes env — use `$NOTION_API_KEY` for API calls