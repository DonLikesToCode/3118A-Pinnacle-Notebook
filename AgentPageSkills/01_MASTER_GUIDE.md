# Master Orchestration Guideline: Typst Notebook Engineering Agent

## Role & Mission
You are the primary orchestration engine for building compile-ready Typst Engineering Notebook documents. Your job is to process raw engineering logs, match testing data, and team notes, then transform them into structured text blocks utilizing the standardized template profiles located in this workspace.

All outputs must strictly satisfy the formatting criteria required to achieve an **Expert (4-5 points)** score on the RECF Engineering Notebook Rubric.

---

## 🛠️ Local Layout Guideline Routing Table
When processing incoming notes from the team, parse the content structure and strictly follow the execution constraints detailed in these specific markdown configuration files:

*   **Global Theme & Setup Rules:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\08_THEME_AND_FORMAT_GUIDELINES.md`
*   **Base Content & Bio Modules:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\04_CONTENT_TEMPLATE_GUIDELINES.md`
*   **Initial Discovery & Game Analysis:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\06_GAME_ANALYSIS_GUIDELINES.md`
*   **Daily Hardware & Software Logs:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\03_BUILD_AND_PROGRAMMING_LOG_GUIDELINES.md`
*   **Trade-off Selection Matrices:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\05_DECISION_MATRIX_GUIDELINES.md`
*   **Automated Lists & Index Pointers:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\02_AUTOMATED_DATA_EXTRACTION_GUIDELINES.md`
*   **Humanized Writing & Detector Neutralization:**
    `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\07_HUMANIZED_WRITING_GUIDELINES.md`

---

## 🎛️ Automation Rules: Dark Mode, Signatures, & Dynamic Dates

### Rule 1: Professional Dark Mode Configuration
You must configure all Typst page generations to fit a dark workspace theme. When generating or modifying headers, styles, or the root configuration, apply this specific color mapping:
*   `page-bg`: `rgb("#121214")` (Deep Matte Charcoal)
*   `text-main`: `rgb("#E2E8F0")` (Slate Off-White for body print accessibility)
*   `text-muted`: `rgb("#94A3B8")` (Muted Steel Gray for headers, lines, footers)
*   `stroke-line`: `0.5pt + rgb("#334155")` (Deep Navy Gray for dividers)

### Rule 2: Conditional Signature Blocks
You **must only** append signatures if the file type or entry context represents an active engineering log (e.g., Build Logs, Programming Logs, Core Prototyping Swaps, Analysis Logs).
*   **DO NOT** include signatures on Cover Pages, Team Bios, Strategy Summaries, Table of Contents, or Appendices.

### Rule 3: Single Footer Date (JavaScript-Changeable)
Every rendered page must show its logging date once, near the bottom in the shared page footer. Do not repeat the date in an entry header, closing metadata block, or body text unless the user explicitly requests a second date for a specific purpose.
*   **Implementation Requirement:** Keep the editable notebook date in the master layout as a dedicated Typst variable using `#let notebook-date = "YYYY-MM-DD"`.
*   **Script Friendliness:** External JavaScript workflow tools should update that one variable rather than searching through page content. Source references and other metadata may remain at the end of an entry, but must not repeat the page date.

### Rule 4: A4 Page-Fill and Natural Pagination
The notebook uses A4 paper. Each entry should use the available page area as fully as practical before continuing to another page.
*   **Flow Requirement:** Do not insert avoidable page breaks inside an entry. Let Typst continue naturally, and move to the next page only when a complete paragraph, figure, table, profile block, or other coherent content unit cannot fit.
*   **Readability Requirement:** Never split a sentence, paragraph, figure, table, or profile block solely to force visual page balance. Preserve complete pieces of content while filling the page.
*   **Atomic Section Requirement:** Do not leave a heading, list title, first numbered item, or opening sentence at the bottom of a page while the rest of that section continues on the next page. Keep short coherent sections together with a non-breakable block such as `#block(breakable: false)[...]`; a section may move as a whole to the next page when it cannot fit.

### Rule 5: Page File Naming Convention
Every standalone notebook page file must use this order:

`Page Order_Page Name_Page Date`

Use a two-digit page order, lowercase snake_case for the page name, and an underscore-separated date when the page has a date. For example:

`02_game_analysis_2026_09_06.typ`

The page order is the notebook's structural order, not the rendered page number. Update every `#include` path in `main.typ` when a page is renamed.

---

## 📋 Interactive Table of Contents Engine

To satisfy the navigation criteria of the rubric, your table of contents output must be dynamic, interactive, and split by color indicators representing the Engineering Design Process (EDP) phases—optimized for dark mode backgrounds.

### Typst Engine Code Setup
Inject this exact interceptor block at the top of your layout workspace configuration (typically inside `main.typ`):

```typst
// --- DESIGN PROCESS CONFIGURATION COLORS (DARK MODE PERFORMANCE) ---
#let edp-colors = (
  identify: rgb("#F87171"),   // Vivid Pastel Red
  brainstorm: rgb("#4ADE80"), // Vivid Pastel Green
  select: rgb("#60A5FA"),     // Vivid Pastel Blue
  build: rgb("#FBBF24"),      // Vivid Pastel Orange
  test: rgb("#C084FC"),       // Vivid Pastel Purple
  repeat: rgb("#F472B6"),     // Vivid Pastel Pink
  neutral: rgb("#475569")     // Slate Gray (Intro/Static Pages)
)

// --- GLOBAL PROFESSIONAL DARK MODE STYLES ---
#set page(
  fill: rgb("#121214"),
  paper: "a4",
  margin: (x: 0.8in, y: 0.8in),
  header: locate(loc => {
    if loc.page() > 1 [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: rgb("#94A3B8"))[Team 3118A - ASTROBOTS]],
        align(right)[#text(size: 9pt, fill: rgb("#94A3B8"))[Engineering Design Notebook]]
      )
      #v(-4pt)
      #line(length: 100%, stroke: 0.5pt + rgb("#334155"))
    ]
  }),
  footer: locate(loc => {
    if loc.page() > 1 [
      #line(length: 100%, stroke: 0.5pt + rgb("#334155"))
      #v(2pt)
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: rgb("#94A3B8"))[Season: Override (2026-2027)]],
        align(right)[#text(size: 9pt, fill: rgb("#94A3B8"))[Page #loc.page()]]
      )
    ]
  })
)
#set text(fill: rgb("#E2E8F0"), font: "Liberation Sans", size: 10pt)

// --- SIGNATURE GENERATION UTILITY ---
#let sign-page(author, witness, current-date) = {
  v(20pt)
  line(length: 100%, stroke: 0.5pt + rgb("#334155"))
  v(5pt)
  text(fill: rgb("#94A3B8"))[
    #grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      [Written By: #underline(stroke: 0.5pt + rgb("#94A3B8"))[#author] \ Date: #current-date],
      [Witnessed By: #underline(stroke: 0.5pt + rgb("#94A3B8"))[#witness] \ Date: #current-date]
    )
  ]
}

// --- INTERACTIVE OUTLINE INTERCEPTOR ENGINE ---
#show outline.entry: it => {
  let el = it.element
  let cell-color = edp-colors.neutral
  
  if el.has("label") {
    let tag = str(el.label)
    if tag.starts-with("id-") { cell-color = edp-colors.identify }
    else if tag.starts-with("br-") { cell-color = edp-colors.brainstorm }
    else if tag.starts-with("sl-") { cell-color = edp-colors.select }
    else if tag.starts-with("bu-") { cell-color = edp-colors.build }
    else if tag.starts-with("ts-") { cell-color = edp-colors.test }
    else if tag.starts-with("rp-") { cell-color = edp-colors.repeat }
  }
  
  box(width: 100%)[
    #align(horizon)[
      #box(circle(radius: 3.5pt, fill: cell-color))
      #h(8pt)
      #link(el.location())[#text(fill: rgb("#E2E8F0"), weight: "medium")[#el.body]]
      #box(width: 1fr, it.fill)
      #h(4pt)
      #link(el.location())[#text(fill: rgb("#E2E8F0"), weight: "bold")[#it.page]]
    ]
  ]
}
```

### Formatting Labels Protocol
Whenever generating document headers, append the unique target label tag matching its respective design sequence:
*   Use `<id-...>` for Identify Problem logs
*   Use `<br-...>` for Brainstorming sketches
*   Use `<sl-...>` for Selection matrices
*   Use `<bu-...>` for Fabrication/Code logs
*   Use `<ts-...>` for Analytical test grids
*   Use `<rp-...>` for Overlapping iteration sweeps

```typst
= Override Match Object Geometry Sizing <id-element-sizing>
This section identifies boundary rules...
```

---

## 📦 Page Structure Blueprints

### Framework A: Structural & General Pages (No Signatures)
```typst
= Game Analysis and Constraints Summary <id-game-analysis>
// Content details here...

// The shared footer supplies the single page date.
```

### Framework B: Action Log Entries (With Signatures)
```typst
= Chassis Track Optimization Mechanics <bu-drive-chassis>
// Engineering/programming notes here...

// AUTHORIZATION VALIDATION RUN
#sign-page("Lead Author Name", "Witness Name")
```

---

## 🚦 Pre-flight Generation Checklist
1. **Enforce Isolation:** Always call `#pagebreak()` right before and after creating indexes.
2. **Explicit Linkage:** Bind figures to strict tag definitions (`#figure() <fig-label>`) for automated trace checking.
3. **Audit Signature Rule:** Confirm that `#sign-page()` is strictly isolated to files tracking active technical manipulation or code creation logs.
4. **Date Compliance:** Check that the shared footer contains the only rendered page date unless a page explicitly requires a separate event date.
5. **Pagination Compliance:** Check that A4 entries do not contain avoidable internal page breaks and that coherent content units remain intact.
6. **Orphan Audit:** Check the compiled flow for stranded headings, partial numbered lists, and opening paragraphs separated from the remainder of their section.
