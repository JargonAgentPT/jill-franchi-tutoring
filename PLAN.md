# Jill Franchi Tutoring — Single Page Website Plan

> **Goal:** A single-page marketing website for Jill Franchi's 11+ exam tutoring business. Deploy to a subdomain of joejarman.xyz via GitHub Pages + Cloudflare DNS.

**Current status:** Claude Code built the site. Needs review before deploying.

---

## What's Built

**Files:**
- `index.html` — 972 lines, single-page site (all CSS/JS inlined)
- `assets/hero-bg.jpg` — classroom/learning photo (1600x1130)
- `assets/teaching.jpg` — teaching photo (1200x747)
- `assets/study.jpg` — books/study photo (1200x800)

**Sections:**
1. **Hero** — Full-viewport with hero-bg.jpg background, dark overlay, headline "11+ Exam Success Starts Here", subtitle about 25 years experience, CTAs: "Book a Session" and "About Jill"
2. **About Jill** — teaching.jpg image, 25+ years badge, bio including Mrs Jarman name, 10 years at Essex grammar schools, married to Tony Franchi. Subject pills: English, Maths, Verbal Reasoning, Non-Verbal Reasoning
3. **Services** — 4 cards: 1:1 Tutoring, Mock Tests, Exam Technique, Parent Consultations. £40/hour price banner
4. **Testimonials** — 3 placeholder cards with stars and "Coming soon" text
5. **Contact** — Email: jillfranchi@example.com (placeholder), phone placeholder, UK location, contact form

**Design:** Navy (#1a2a4a) + gold (#c8952b) palette, Inter font, mobile-first responsive, sticky nav with scroll-spy, IntersectionObserver fade-in animations

## What Needs Doing

### Pre-Deploy Review Items

| Item | Action |
|------|--------|
| **Contact email** | Update from placeholder to Jill's real email |
| **Contact phone** | Add Jill's real phone number |
| **Testimonials** | Replace "Coming soon" with real testimonials from past parents/students |
| **Photos of Jill** | User has photos to add later — placeholder spot exists in About section |
| **About note** | Confirm "Tony Franchi / songwriter" text is accurate and wanted |
| **Price check** | Confirm £40/hour is correct and whether discounts for block bookings exist |
| **Location** | Confirm exact area/county for SEO (Essex) |

### Deployment

1. Init git + push to new GitHub repo `jjarman-uk/jill-franchi-tutoring`
2. Enable GitHub Pages (main branch, root folder)
3. Add Cloudflare DNS: `tutoring.joejarman.xyz` → `jjarman-uk.github.io` CNAME
4. Set custom domain in GitHub Pages settings
5. Add CNAME file to repo

### Domain Options

| Option | URL |
|--------|-----|
| Subdomain | `tutoring.joejarman.xyz` |
| Custom domain | `jillfranchi.com` or `jillfranchitutoring.com` (needs to be registered) |

---

**Ready to review — what needs changing?**