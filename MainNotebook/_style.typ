// =============================================================================
// TEAM 3118A - ASTROBOTS - Shared EDP Style Helpers (DARK MODE)
// -----------------------------------------------------------------------------
// Module that entries import directly. Needed because Typst's #include does NOT
// leak the parent scope, so every standalone entry file must carry its own
// helpers - importing this module keeps them in ONE source of truth.
// Usage in an entry: #import "_style.typ": edp-header
// =============================================================================

#let edp-colors = (
  identify: rgb("#F87171"),   // Vivid Pastel Red
  brainstorm: rgb("#4ADE80"), // Vivid Pastel Green
  select: rgb("#60A5FA"),     // Vivid Pastel Blue
  build: rgb("#FBBF24"),      // Vivid Pastel Orange
  test: rgb("#C084FC"),       // Vivid Pastel Purple
  repeat: rgb("#F472B6"),     // Vivid Pastel Pink
  neutral: rgb("#475569")     // Slate Gray (Intro/Static Pages)
)

#let color-identify = edp-colors.identify
#let color-brainstorm = edp-colors.brainstorm
#let color-select = edp-colors.select
#let color-build = edp-colors.build
#let color-test = edp-colors.test
#let color-repeat = edp-colors.repeat

// --- REUSABLE COMPONENT HEADERS (DARK ADAPTED) --------------------------------
#let edp-header(stage, title) = {
  let bg = color-identify
  if stage == "BRAINSTORM" { bg = color-brainstorm }
  else if stage == "SELECT" { bg = color-select }
  else if stage == "BUILD" { bg = color-build }
  else if stage == "TEST" { bg = color-test }
  else if stage == "REPEAT" { bg = color-repeat }

  block(
    fill: bg.darken(45%),
    stroke: bg + 1.5pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
    [
      #grid(
        columns: (auto, 1fr),
        gutter: 12pt,
        block(fill: bg, inset: (x: 8pt, y: 4pt), radius: 2pt)[#text(weight: "bold", fill: rgb("#121214"))[#stage]],
        align(horizon)[#text(size: 14pt, weight: "bold", fill: rgb("#E2E8F0"))[#title]]
      )
    ]
  )
}

// --- SIGNATURE GENERATION UTILITY (Rule 2: ACTIVE LOGS ONLY) ------------------
#let sign-page(author, witness) = {
  v(20pt)
  line(length: 100%, stroke: 0.5pt + rgb("#334155"))
  v(5pt)
  text(fill: rgb("#94A3B8"))[
    #grid(
      columns: (1fr, 1fr),
      gutter: 20pt,
      [Written By: #underline(stroke: 0.5pt + rgb("#94A3B8"))[#author] \ Date: #datetime.today().display()],
      [Witnessed By: #underline(stroke: 0.5pt + rgb("#94A3B8"))[#witness] \ Date: #datetime.today().display()]
    )
  ]
}