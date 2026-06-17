# Hybrid Hands-on Courses — WIP Talk (Slidev)

First-draft 15-minute Work-in-Progress presentation based on the ASEE paper
*"Strategies for Hybrid, Hands-on Courses in Robotics, Embedded Systems, and IoT."*

## Run it

```bash
npm install      # first time only
npm run dev      # opens the deck at http://localhost:3030
```

Press `o` for slide overview, `p` for the dark/light toggle, and use the
**Presenter mode** (link in the dev server output) to see speaker notes — every
slide has timing + delivery notes drawn from the outline.

## Export

```bash
npm run build    # static site -> dist/
npm run export   # PDF (needs playwright-chromium, already in devDependencies)
```

## Structure

- `slides.md` — all content (15 slides: 13 talk + thank-you + 2 backup)
- `components/BarRow.vue` — lightweight CSS bar used for the language-familiarity
  and AI-usage charts

### Visual template

The deck reuses the look of the KubeCon example deck (`../example/`):

- `global-bottom.vue` — animated blurred-glow background, rendered on every
  slide. Tune it per-slide with a `glowSeed:` (any number) or `glow: left|right|
  top|bottom|center` value in that slide's frontmatter.
- `style.css` — forces the true-black backdrop the glow sits on, glassy code
  blocks, and the slide/click fade transitions.
- `uno.config.ts` — sets the **DM Sans** font and enables UnoCSS attributify +
  icon (`i-carbon:*`) utilities.
- Content "boxes" use the glass-card pattern:
  `border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg`, or a
  tinted variant (`red-800` / `amber-800` / `teal-800` / `violet-800`) with a
  matching header bar. **Keep card markdown and closing `</div>` flush-left** —
  indenting them makes markdown-it swallow the closing tag and breaks the build.

## TODO before presenting

- Drop in the paper's real figures where marked 📎 (Fig 1 majors, Fig 3 familiarity).
  The outline recommends **at most three charts** total to avoid chart fatigue —
  currently Fig 2 (languages) and Fig 4 (AI usage) are rebuilt natively.
- Add presenter name, affiliation line, and contact details on the title and
  closing slides.
- Time a run-through; if long, compress slides 2–3 rather than the core
  slides 8 (oral exams / brown-out) and 9 (engagement surprise).
