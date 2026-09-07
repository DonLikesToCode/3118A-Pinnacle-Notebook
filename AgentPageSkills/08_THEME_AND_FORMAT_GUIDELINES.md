To keep the notebook uniform, utilize these global parameters, reusable utility functions, and color-coded design stages:

// --- CONFIGURATION & STYLING ---
#set page(
  paper: "us-letter",
  margin: (x: 0.8in, y: 0.8in),
  header: locate(loc => {
    if loc.page() > 1 [
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: gray)[Team 3118A - ASTROBOTS]],
        align(right)[#text(size: 9pt, fill: gray)[Engineering Design Notebook]]
      )
      #v(-4pt)
      #line(length: 100%, stroke: 0.5pt + gray)
    ]
  }),
  footer: locate(loc => {
    if loc.page() > 1 [
      #line(length: 100%, stroke: 0.5pt + gray)
      #v(2pt)
      #grid(
        columns: (1fr, 1fr),
        align(left)[#text(size: 9pt, fill: gray)[Season: Override (2026-2027)]],
        align(right)[#text(size: 9pt, fill: gray)[Page #loc.page()]]
      )
    ]
  })
)

#set text(font: "Liberation Sans", size: 10pt)
#set par(justify: true, leading: 0.65em)

// --- EDP COLOR SCHEME (RECF Rubric Aligned) ---
#let color-identify = rgb("#E57373")  // Soft Red
#let color-brainstorm = rgb("#81C784") // Soft Green
#let color-select = rgb("#64B5F6")     // Soft Blue
#let color-build = rgb("#FFB74D")      // Soft Orange
#let color-test = rgb("#C084FC")       // Soft Purple
#let color-repeat = rgb("#F472B6")     // Soft Pink

// --- REUSABLE COMPONENT HEADERS ---
#let edp-header(stage, title) = {
  let bg = color-identify
  if stage == "BRAINSTORM" { bg = color-brainstorm }
  else if stage == "SELECT" { bg = color-select }
  else if stage == "BUILD" { bg = color-build }
  else if stage == "TEST" { bg = color-test }
  else if stage == "REPEAT" { bg = color-repeat }
  
  block(
    fill: bg.lighten(80%),
    stroke: bg + 1.5pt,
    inset: 10pt,
    radius: 4pt,
    width: 100%,
    [
      #grid(
        columns: (auto, 1fr),
        gutter: 12pt,
        block(fill: bg, inset: (x:8pt, y:4pt), radius: 2pt)[#text(weight: "bold", fill: white)[#stage]],
        align(horizon)[#text(size: 14pt, weight: "bold")[#title]]
      )
    ]
  )
}

#let sign-page(author, witness) = {
  v(20pt)
  line(length: 100%, stroke: 0.5pt + gray)
  v(5pt)
  grid(
    columns: (1fr, 1fr),
    gutter: 20pt,
    [Written By: #underline(author) \ Date: #datetime.today().display()],
    [Witnessed By: #underline(witness) \ Date: #datetime.today().display()]
  )
}
