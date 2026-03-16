# SwarmSight UX Redesign Brief — "Warm Cognition v4"

## OBJECTIVE
Apply the SwarmSight brand guide (brand-guide.html) across the ENTIRE Vue.js frontend. Every component, every view, every pixel. This is going to enterprise clients and investors — it must be flawless.

## BRAND REFERENCE
Read `brand-guide.html` in this repo root. It contains the complete design system including:
- CSS custom properties (colour palette)
- Texture classes (CSS background-image patterns)
- Typography rules
- Component styles (buttons, sliders, toggles, readouts, wells, LEDs)
- The entropy canvas animation

## COLOUR PALETTE (CSS Custom Properties)
```css
--void: #110f0d;       /* Deepest background */
--espresso: #1c1917;   /* Primary background */
--walnut: #292524;      /* Cards, panels */
--clay: #44403c;        /* Borders, secondary surfaces */
--stone: #78716c;       /* Tertiary text */
--parchment: #d6d3d1;   /* Secondary text */
--cream: #fef3c7;       /* Headings, emphasis */
--ember: #c2410c;       /* Primary interactive colour */
--ember-deep: #B8510D;  /* Pressed state */
--ember-glow: #ea580c;  /* Hover state */
--signal-red: #dc2626;  /* Errors only */
--patina: #a8a29e;      /* Secondary text */
--bone: #e7e5e4;        /* Body text */
```

Background hierarchy: Void → Espresso → Walnut → Clay. NEVER skip levels.
Ember is ONLY for interactive elements and data highlights — never decorative.

## TYPOGRAPHY
- **Display/Headlines:** DM Sans 800, -1px tracking, colour: cream
- **Section headings:** DM Sans 600, colour: bone
- **Body text:** DM Sans 400, 16px/1.7, colour: parchment
- **Machine/data/code:** IBM Plex Mono 500, colour: ember
- **Data readouts (large numbers):** JetBrains Mono 700, colour: ember
- **Stamped labels:** Space Mono 9px uppercase, letter-spacing: 2px, with emboss shadow
- Rule: Human text = DM Sans. Data = IBM Plex Mono. Stamped into surface = Space Mono. NEVER mix.

## FONTS (Google Fonts)
```
Space Mono:wght@400;700
Inter:wght@300;400;500;600;700;800;900
JetBrains Mono:wght@300;400;500;600;700
IBM Plex Mono:wght@300;400;500;600;700
DM Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,400
Outfit:wght@300;400;500;600;700;800;900
```

## TEXTURES (CSS classes — apply via background-image ON TOP of background-color)
- `.tex-knurl` — Fine dot grid. Use on: panel backgrounds, interactive cards
- `.tex-knurl-coarse` — Larger dots. Use on: interactive surfaces, grip zones
- `.tex-leather` — Organic grain. Use on: page backgrounds, hero areas
- `.tex-brushed` — Horizontal lines. Use on: headers, toolbars, navigation rails
- `.tex-canvas` — Grid pattern. Use on: subtle card surfaces
- `.tex-paper` — Random grain. Use on: content wells, readouts
- `.tex-perf` — Perforated. Use on: decorative accents
- `.tex-crosshatch` — Carbon fibre. Use on: premium/structural panels

Texture opacity must stay extremely low (0.01–0.04). Interactive surfaces = coarser textures. Static surfaces = finer textures.

## COMPONENT PATTERNS
- **Buttons:** Gradient bevels with cast shadows. Primary = ember gradient. Secondary = clay gradient. Ghost = transparent with dashed border.
- **Data wells/readouts:** Recessed into surface with deep inset shadows (`.readout-well`)
- **Sliders:** Dark recessed track, ember fill, ribbed thumb
- **Toggles:** Recessed track, ember knob when on
- **Segmented controls:** Recessed container, ember active segment
- **Input fields:** Recessed dark wells with subtle border
- **Cards/Panels:** Walnut background + knurl texture + subtle border + shadow
- **LED indicators:** Radial gradient circles with glow shadow (green=good, ember=warning, off=inactive)
- **Screw details:** On premium/structural panels (corner screws)
- **Tooltips:** Cream background, dark text, with caret

## WHAT TO CHANGE
1. **App.vue** — Global styles, CSS custom properties, font imports
2. **All views/** — Layout, page backgrounds, headers
3. **All components/** — Every UI element reskinned to brand guide
4. **Navigation** — Sticky nav with brushed metal texture, Space Mono labels
5. **Step indicators** — Redesign to match brand (LED-style step indicators?)
6. **Data displays** — All numbers/metrics use JetBrains Mono in readout wells
7. **Forms/inputs** — Recessed dark wells
8. **Buttons** — All buttons use the brand button styles
9. **Charts/graphs** — Ember colour palette for data visualisation
10. **Loading states** — Consider entropy canvas animation for loading
11. **The graph visualisation (D3)** — Node/edge colours to match palette
12. **Footer** — "Powered by XGX.ai" in Space Mono stamped style

## WHAT NOT TO CHANGE
- Do NOT modify any files in `backend/` or `scripts/`
- Do NOT change API calls or data logic in the frontend
- Do NOT change routing or component structure
- Do NOT change any JavaScript business logic
- ONLY change CSS, templates (HTML structure in Vue templates where needed for styling), and visual presentation

## QUALITY STANDARDS
- Zero Chinese text anywhere in the UI
- No default browser styles leaking through
- Consistent use of CSS custom properties (no hardcoded colours)
- All text legible against backgrounds (check contrast)
- Responsive — must work on desktop (1440px+) and laptop (1024px)
- No broken layouts, no overflow, no clipping
- Smooth transitions on interactive elements
- Professional, enterprise-grade finish throughout

## BUILD & TEST
After making changes:
1. Run `cd frontend && npm run build` to verify no build errors
2. Check the dev server at localhost:3002 (Docker) or run `npm run dev` locally

## IMPORTANT
This is on a `ux-redesign` git branch. The `main` branch is untouched. Commit your work when done.
