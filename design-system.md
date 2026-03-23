# Livo Series A — Presentation Design System

Extracted from `[Confidential] Deck Series A Livo_ext.pptx` (18 slides).

---

## 1. Canvas

| Property   | Value                    |
|------------|--------------------------|
| Width      | 10.00 in (9,144,000 EMU) |
| Height     | 5.625 in (5,143,500 EMU) |
| Aspect     | 16:9 widescreen          |

---

## 2. Color Palette

### Primary Brand Colors (use these most)

| Name              | Hex       | Usage                                                    |
|-------------------|-----------|----------------------------------------------------------|
| Deep Teal         | `#104455` | Primary dark bg, gradient start, dark fills              |
| Dark Teal         | `#134857` | Text on white backgrounds, category labels               |
| Teal Text         | `#144757` | Body text headings, row labels                           |
| Teal Dark         | `#144E5D` | KPI text, table headers, data labels on light bg         |
| Teal Accent       | `#144E5E` | Bold stat text, market size labels                       |
| Mid Teal          | `#357382` | Gradient mid-stop, subtle accents                        |
| Light Teal        | `#5AA2AE` | Gradient end-stop, lighter accents                       |
| Seafoam           | `#008793` | Shape fills, accent blocks                               |

### Green Accent Colors

| Name              | Hex       | Usage                                                    |
|-------------------|-----------|----------------------------------------------------------|
| Livo Green        | `#75B896` | Section labels on white bg, decorative fills, accents    |
| Bright Green      | `#7BBB9B` | Bold highlight text in narrative subtitles (white bg)    |
| Mint              | `#86D2AC` | Gradient end-stop on dark bg, accent shapes, chart fills |
| Light Mint        | `#A7DBBC` | Decorative shape fills, lighter accents                  |
| Pale Green        | `#BBF5BC` | Section labels on dark bg, light highlight fills         |
| Soft Lime         | `#E0F1D0` | Very light background fills                              |

### Neutrals

| Name              | Hex       | Usage                                                    |
|-------------------|-----------|----------------------------------------------------------|
| Black             | `#000000` | Primary body text, heavy emphasis                        |
| Dark Gray         | `#595959` | Secondary text                                           |
| Medium Gray       | `#7F7F7F` | Tertiary text, descriptions, fine print                  |
| Gray              | `#888888` | Data labels, supporting numbers                          |
| Light Gray        | `#929292` | Subtle text                                              |
| Silver            | `#9E9E9E` | Chart/table inactive bars                                |
| Lighter Gray      | `#A5A5A5` | Placeholder text ("N/A")                                 |
| Pale Gray         | `#D8D8D8` | Borders, divider lines                                   |
| Near White        | `#F3F3F3` | Subtle background fills                                  |
| White             | `#FFFFFF` | Card backgrounds, text on dark bg                        |

### Background Gradients

| Name              | Hex       | Usage                                                    |
|-------------------|-----------|----------------------------------------------------------|
| BG Cream 1        | `#F9FBF6` | Gradient mid-stop (white-to-cream content bg)            |
| BG Cream 2        | `#F2F6ED` | Gradient end-stop (white-to-cream content bg)            |

---

## 3. Typography

### Font Family: Lexend (primary)

All text uses the **Lexend** family. Specific weights:

| Weight          | python-pptx `font.name`    | Usage                                              |
|-----------------|-----------------------------|----------------------------------------------------|
| ExtraBold       | `Lexend ExtraBold`          | Rare, very heavy emphasis                          |
| SemiBold        | `Lexend SemiBold`           | Product names, category labels (POOL, INTERNAL)    |
| Medium          | `Lexend Medium`             | Mid-weight headings (Recruiting, Onboarding)       |
| Regular         | `Lexend`                    | Default body text, narrative subtitles, numbers    |
| Light           | `Lexend Light`              | Section labels (LIVO TODAY - PRODUCT)              |

### Secondary Fonts (used sparingly)

| Font                 | Usage                           |
|----------------------|---------------------------------|
| `IBM Plex Sans Medium` | Specific UI-style labels      |
| `Calibri`            | Fallback / table content        |
| `Nunito Sans`        | Occasional labels               |
| `Roboto`             | Occasional labels               |

### Type Scale

| Role                        | Font                | Size (pt) | Weight/Bold | Color         |
|-----------------------------|---------------------|-----------|-------------|---------------|
| **Hero title**              | Lexend              | 30.2      | Regular     | #FFFFFF       |
| **Large stat**              | Lexend              | 22.2      | Regular     | varies        |
| **Narrative subtitle**      | Lexend              | 16.2      | Regular     | #000000 (theme DARK_1) |
| **Narrative highlight**     | Lexend              | 16.2      | **Bold**    | #7BBB9B or #75B896 |
| **Section divider title**   | Lexend              | 16.2      | Regular     | #FFFFFF       |
| **Section divider bold**    | Lexend              | 16.2      | **Bold**    | #BBF5BC       |
| **KPI number**              | Lexend              | 18.0      | **Bold**    | #144E5E       |
| **Medium heading**          | Lexend Medium       | 16.0      | Regular     | #144E5D       |
| **Category label**          | Lexend SemiBold     | 14.3      | Regular     | #FFFFFF       |
| **Table header**            | Lexend SemiBold     | 12.0      | Regular     | #134857       |
| **Bold body**               | Lexend              | 13.0      | **Bold**    | #000000/theme |
| **Section label (light bg)**| Lexend Light        | 10.0      | Regular     | #75B896       |
| **Section label (dark bg)** | Lexend Light        | 10.0      | Regular     | #BBF5BC       |
| **Body text**               | Lexend              | 9.0-10.0  | Regular     | #000000       |
| **Small bold stat**         | Lexend              | 9.0       | **Bold**    | #000000/theme |
| **Fine print**              | Lexend              | 7.0-8.0   | Regular     | #7F7F7F       |
| **Tiny labels**             | Lexend              | 5.0-6.0   | Regular     | varies        |
| **N/A placeholder**         | Lexend / inherited  | 7.0       | Regular     | #A5A5A5       |

---

## 4. Slide Types & Templates

### Type A: Title Slide (Slide 1)

- **Background:** White (or transparent over master)
- **Logo:** Centered horizontally, vertically in upper-mid area
  - Position: `left=3830263, top=1693178`, size: `1577375 x 680076`
- **Tagline:** Full-width text box, centered
  - Position: `left=0, top=2642182`, size: `9144000 x 507900`
  - Font: Lexend, ~16pt, dark teal or black
- **Confidential label:** Small, bottom or corner

### Type B: Content Slide (Slides 2, 3, 5, 7, 9-17)

**Layout structure:**
```
┌─────────────────────────────────────────────┐
│ [Section Label]           [optional logo]   │  <- top ~180K EMU
│                                             │
│ [Narrative subtitle spanning full width]    │  <- ~280K EMU from top
│ Regular text + BOLD GREEN highlights        │
│                                             │
│ ┌─────────┐ ┌─────────┐ ┌─────────┐       │
│ │  Card/   │ │  Card/   │ │  Card/   │       │  <- Content area
│ │  Block   │ │  Block   │ │  Block   │       │
│ └─────────┘ └─────────┘ └─────────┘       │
│                                             │
│ [Bottom gradient strip or decorative bar]   │
└─────────────────────────────────────────────┘
```

**Key measurements:**
- Section label: `left≈275000, top≈170000` (Lexend Light 10pt, #75B896)
- Narrative subtitle: `left≈180000, top≈280000, width≈8520000, height=572700`
- Background: White with subtle cream gradient (`#FFFFFF` → `#F9FBF6` → `#F2F6ED`)
- Bottom decorative strip: gradient from `#75B896` left to transparent

**Narrative subtitle pattern (critical):**
- The subtitle is a SINGLE text frame with mixed formatting runs
- Normal text: Lexend 16.2pt, regular, black/DARK_1 theme
- Key phrases: Lexend 16.2pt, **bold**, `#7BBB9B` (Bright Green)
- Example: "We have a clear path to owning a " + **"$70B market"** + " with continued..."

### Type C: Section Divider (Slides 4, 6, 8)

**Background:** Dark diagonal gradient
- Start: `#104455` (Deep Teal) — top-left
- Mid: `#4B8B81` — center
- End: `#86D2AC` (Mint) — bottom-right

**Layout:**
```
┌─────────────────────────────────────────────┐
│                                             │
│    THE AI OPERATING SYSTEM                  │  <- Upper portion
│    FOR HEALTHCARE WORKFORCE                 │     Lexend 22-30pt white
│                                             │
│    ┌───────────────────────────────┐        │
│    │ Supporting description text    │        │  <- Lower portion
│    │ in lighter weight             │        │     Lexend 16pt white
│    └───────────────────────────────┘        │
│                                             │
│  [Section label]               [elements]   │
└─────────────────────────────────────────────┘
```

- Section label (on dark bg): Lexend Light 10pt, `#BBF5BC`
- Title text: Lexend 16.2-30pt, white `#FFFFFF`
- Bold highlights: `#BBF5BC` (Pale Green)
- Decorative shapes with `#78909C` accents

### Type D: Closing/Contact Slide (Slide 18)

- Background: White or minimal
- Logo present
- Contact info in Lexend bold
- Layout: centered, clean

---

## 5. Recurring Design Elements

### Gradient Background Strip (Content Slides)
Most content slides have a subtle horizontal gradient at the bottom:
- Left edge: `#75B896` (Livo Green) fading right to transparent
- Width: ~full slide width, height: ~30-50px equivalent

### Card/Block Pattern
- Rounded rectangle or rectangle fills
- Fill: `#144E5D` (Teal Dark) for dark cards, `#FFFFFF` for light cards
- Border: none or 1pt `#D8D8D8`
- Interior text: white on dark, dark teal on light

### KPI/Metric Display
- Large number: Lexend 18pt bold, `#144E5E`
- Label below: Lexend 7-8pt, `#7F7F7F`
- Often in colored pill/rectangle shapes

### Table Style (Slide 8)
- Header: no visible border, bold text
- Rows: alternating with subtle separator
- Active data cells: `#1B786F` fill (dark green-teal)
- Inactive cells: `#9E9E9E` fill (silver)
- Accent highlight: `#BBF5BC` fill
- Cell text: white on dark fills

### Icon/Image Treatment
- Product screenshots in rounded-corner containers
- Team photos: circular crop (standard headshot treatment)
- Logo placement: top-right corner or centered on title slides

---

## 6. python-pptx Code Patterns

### Create Presentation with Correct Dimensions
```python
from pptx import Presentation
from pptx.util import Inches, Pt, Emu
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN

prs = Presentation()
prs.slide_width = Emu(9144000)   # 10 inches
prs.slide_height = Emu(5143500)  # 5.625 inches
```

### Add a Content Slide Background
```python
from pptx.oxml.ns import qn

slide = prs.slides.add_slide(prs.slide_layouts[6])  # blank layout

# Subtle cream gradient background
bg = slide.background
fill = bg.fill
fill.gradient()
fill.gradient_stops[0].color.rgb = RGBColor(0xFF, 0xFF, 0xFF)
fill.gradient_stops[0].position = 0.0
# Add more stops for F9FBF6 and F2F6ED
```

### Section Label (Top-Left)
```python
from pptx.util import Pt, Emu

txBox = slide.shapes.add_textbox(Emu(275000), Emu(170000), Emu(5000000), Emu(200000))
tf = txBox.text_frame
tf.word_wrap = True
p = tf.paragraphs[0]
run = p.add_run()
run.text = "LIVO TODAY - SECTION NAME"
run.font.name = "Lexend Light"
run.font.size = Pt(10)
run.font.color.rgb = RGBColor(0x75, 0xB8, 0x96)  # #75B896
```

### Narrative Subtitle with Bold Green Highlights
```python
txBox = slide.shapes.add_textbox(Emu(180000), Emu(280000), Emu(8520000), Emu(572700))
tf = txBox.text_frame
tf.word_wrap = True
p = tf.paragraphs[0]

# Normal text
run1 = p.add_run()
run1.text = "We have a clear path to owning a "
run1.font.name = "Lexend"
run1.font.size = Pt(16.2)
run1.font.color.rgb = RGBColor(0x00, 0x00, 0x00)

# Bold green highlight
run2 = p.add_run()
run2.text = "$70B market"
run2.font.name = "Lexend"
run2.font.size = Pt(16.2)
run2.font.bold = True
run2.font.color.rgb = RGBColor(0x7B, 0xBB, 0x9B)  # #7BBB9B

# Continue normal text
run3 = p.add_run()
run3.text = " with continued geographic expansion"
run3.font.name = "Lexend"
run3.font.size = Pt(16.2)
run3.font.color.rgb = RGBColor(0x00, 0x00, 0x00)
```

### Section Divider (Dark Gradient Background)
```python
slide = prs.slides.add_slide(prs.slide_layouts[6])  # blank

# Add full-slide dark gradient rectangle
from pptx.enum.shapes import MSO_SHAPE
bg_shape = slide.shapes.add_shape(
    MSO_SHAPE.RECTANGLE, 0, 0, Emu(9144000), Emu(5143500)
)
bg_shape.fill.gradient()
bg_shape.fill.gradient_stops[0].color.rgb = RGBColor(0x10, 0x44, 0x55)  # #104455
bg_shape.fill.gradient_stops[0].position = 0.0
bg_shape.fill.gradient_stops[1].color.rgb = RGBColor(0x86, 0xD2, 0xAC)  # #86D2AC
bg_shape.fill.gradient_stops[1].position = 1.0
bg_shape.line.fill.background()  # no border

# Section label on dark bg
txBox = slide.shapes.add_textbox(Emu(289000), Emu(188000), Emu(5000000), Emu(200000))
tf = txBox.text_frame
p = tf.paragraphs[0]
run = p.add_run()
run.text = "SECTION TITLE"
run.font.name = "Lexend Light"
run.font.size = Pt(10)
run.font.color.rgb = RGBColor(0xBB, 0xF5, 0xBC)  # #BBF5BC on dark bg
```

### KPI Display Block
```python
# Large number
txBox = slide.shapes.add_textbox(Emu(x), Emu(y), Emu(3000000), Emu(800400))
tf = txBox.text_frame
p = tf.paragraphs[0]
run = p.add_run()
run.text = "-60%"
run.font.name = "Lexend"
run.font.size = Pt(18)
run.font.bold = True
run.font.color.rgb = RGBColor(0x14, 0x4E, 0x5E)  # #144E5E

# Description below
run2 = p.add_run()  # or new paragraph
run2.text = "\ntime to fill shifts"
run2.font.name = "Lexend"
run2.font.size = Pt(8)
run2.font.color.rgb = RGBColor(0x7F, 0x7F, 0x7F)  # #7F7F7F
```

### Colored Card/Block
```python
card = slide.shapes.add_shape(
    MSO_SHAPE.ROUNDED_RECTANGLE, Emu(left), Emu(top), Emu(width), Emu(height)
)
card.fill.solid()
card.fill.fore_color.rgb = RGBColor(0x14, 0x4E, 0x5D)  # Dark teal card
card.line.fill.background()  # no border

# Add text inside card
tf = card.text_frame
tf.word_wrap = True
p = tf.paragraphs[0]
p.alignment = PP_ALIGN.CENTER
run = p.add_run()
run.text = "POOL"
run.font.name = "Lexend SemiBold"
run.font.size = Pt(12)
run.font.color.rgb = RGBColor(0xFF, 0xFF, 0xFF)  # white text
```

---

## 7. Logo Placement (MANDATORY)

Two official Livo logo PNG files are stored in the skill directory (`~/.claude/skills/livo-slides/`):

| File              | Usage                                              |
|-------------------|----------------------------------------------------|
| `logo-dark.png`   | Dark teal logo — use on light/white/cream slides   |
| `logo-white.png`  | White logo — use on dark teal/gradient slides       |

**Placement rules:**
- **Every slide** must have the logo in the **bottom-right corner**
- Position: `left=8100000, top=4750000` EMU (fine-tune so it sits above the gradient strip)
- Width: `700000` EMU (height auto-scales proportionally, approx 305000 EMU)
- Choose dark vs white for **maximum contrast** against the slide background
- On **Title slides (Type A)**: logo is ALSO placed centered as the hero element

```python
# Logo helper — add to every slide
import os

SKILL_DIR = os.path.expanduser("~/.claude/skills/livo-slides")

def add_logo(slide, dark_bg=False):
    """Add Livo logo to bottom-right corner. Use dark_bg=True for section dividers."""
    logo_file = "logo-white.png" if dark_bg else "logo-dark.png"
    logo_path = os.path.join(SKILL_DIR, logo_file)
    slide.shapes.add_picture(
        logo_path,
        Emu(8100000),   # left — near right edge
        Emu(4750000),   # top — near bottom
        Emu(700000),    # width
    )
```

---

## 8. Design Principles

1. **Clarity over decoration** — Clean layouts with generous whitespace
2. **Bold-green highlighting** — Key metrics/phrases pop in `#7BBB9B` bold
3. **Consistent section labels** — Every content slide has top-left section context
4. **Narrative-first** — Each slide opens with a full-width statement
5. **Data-dense but organized** — Complex slides use card layouts and color coding
6. **Two background modes** — White/cream for content, dark teal gradient for section breaks
7. **Professional restraint** — Limited font sizes, consistent spacing, no gratuitous effects
8. **Logo always present** — Every slide shows the Livo logo in bottom-right, using the contrasting version
