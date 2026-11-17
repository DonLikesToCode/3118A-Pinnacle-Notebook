// =============================================================================
// TEAM 3118A - ASTROBOTS | RECF Engineering Design Notebook
// MASTER DOCUMENT WRAPPER - Structural Assembly Root (DARK MODE v2)
// -----------------------------------------------------------------------------
// Owns the global dark-mode theme, the EDP color-coded outline engine, and
// page-numbering flow: front matter (team overview + indices) stays bare and
// unnumbered; the counter resets right before the first log entry so the first
// log lands on "Page 1".
// Shared helper functions (edp-header, sign-page, colors) live in _style.typ.
// =============================================================================

#import "_style.typ": edp-colors, color-identify, color-brainstorm, color-select, color-build, color-test, color-repeat, edp-header, sign-page

#let notebook-date = state("notebook-date", none)

// --- PAGE FRAME GATE ----------------------------------------------------------
// Front matter pages (intro, TOC, indices) show no header/footer. The flag is
// switched on right before the first log include so entry pages get the frame.
#let numbered = state("numbered", false)

// --- GLOBAL PROFESSIONAL DARK MODE STYLES ------------------------------------
// Rule 1 mapping: page-bg #121214 | text-main #E2E8F0 | text-muted #94A3B8 | stroke #334155
#set page(
  fill: rgb("#121214"),
  paper: "a4",
  margin: (x: 0.8in, y: 0.8in),
  header: context {
    if numbered.get() [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: rgb("#94A3B8"))[Team 3118A - ASTROBOTS]],
        align(right)[#text(size: 9pt, fill: rgb("#94A3B8"))[Engineering Design Notebook]]
      )
      #v(-4pt)
      #line(length: 100%, stroke: 0.5pt + rgb("#334155"))
    ]
  },
  footer: context {
    if numbered.get() [
      #line(length: 100%, stroke: 0.5pt + rgb("#334155"))
      #v(2pt)
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: rgb("#94A3B8"))[
          Date: #notebook-date.get()
        ]],
        align(right)[#text(size: 9pt, fill: rgb("#94A3B8"))[
          Season: Pinnacle (2026-2027)
          \ Page #counter(page).display("1")
        ]]
      )
    ]
  }
)
#set text(fill: rgb("#E2E8F0"), font: "Arial", size: 10pt) // guide font "Liberation Sans"; Arial = metric-identical Win-safe fallback
#set par(justify: true, leading: 0.65em)
#show heading: set text(fill: rgb("#E2E8F0"))

// --- INTERACTIVE OUTLINE INTERCEPTOR ENGINE -----------------------------------
// Renders every outline row: EDP color-dot + title + dotted leader +
// counter-based page number. Figure entries have NO .body field, so the caption
// is shown for them instead of an empty row.
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

  // Figure rows carry the caption; heading rows carry the heading text
  let row-label = if el.has("caption") {
    el.caption
  } else if el.has("body") {
    el.body
  } else {
    []
  }

  box(width: 100%)[
    #align(horizon)[
      #box(circle(radius: 3.5pt, fill: cell-color))
      #h(8pt)
      #link(el.location())[#text(fill: rgb("#E2E8F0"), weight: "medium")[#row-label]]
      #box(width: 1fr, it.fill)
      #h(4pt)
      #link(el.location())[#text(fill: rgb("#E2E8F0"), weight: "bold")[#context numbering("1", counter(page).at(el.location()).at(0))]]
    ]
  ]
}
// =============================================================================
// BODY
// -----------------------------------------------------------------------------
// 1) Front matter: team overview (bare page, no header/footer, no page number)
#include "sections/00_introduction_2026_09_06.typ"

#pagebreak()
// 2) Front-matter indices (still unnumbered)
#outline(
  title: "Master Table of Contents",
  target: heading.where(level: 1),
  indent: 1.5em,
)

#v(20pt)
#outline(
  title: "Index of Technical Figures & CAD Proofs",
  target: figure.where(kind: image)
)
#pagebreak()

// 3) Numbered log pages: frame turns on + counter resets so this next page = 1
#numbered.update(true)
#context counter(page).update(1)
#notebook-date.update("September 9, 2026")

// =============================================================================
// AUTO-INJECTION ZONE
// New standalone entry files are appended here in chronological order. Each new
// entry page automatically continues the counter from the previous log.
// =============================================================================

#include "sections/02_game_analysis_2026_09_09.typ"
#pagebreak()
#include "sections/03_strategy_analysis_2026_09_09.typ"
#pagebreak()
#include "sections/04a_drivetrain_brainstorm_2026_09_09.typ"
#pagebreak()
#include "sections/04_drivetrain_decision_matrix_2026_09_09.typ"
#pagebreak()
#notebook-date.update("September 11, 2026")
#include "sections/05a_lift_brainstorm_2026_09_11.typ"
#pagebreak()
#include "sections/05_lift_decision_matrix_2026_09_11.typ"
#pagebreak()
#include "sections/06a_end_effector_brainstorm_2026_09_11.typ"
#pagebreak()
#include "sections/06_end_effector_decision_matrix_2026_09_11.typ"
#pagebreak()
#include "sections/07_ground_intake_analysis_2026_09_11.typ"
#pagebreak()
#notebook-date.update("September 13, 2026")
#include "sections/08_cad_drive_train_log_2026_09_13.typ"
#pagebreak()
#include "sections/09_cad_end_effector_log_2026_09_13.typ"