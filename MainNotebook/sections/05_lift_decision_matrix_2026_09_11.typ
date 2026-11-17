// RECF Achieve: Pinnacle | Lift selection | Select stage

#import "../_style.typ": edp-header

#let simplicity-weight = 3
#let speed-weight = 4
#let reach-weight = 4
#let stability-weight = 4
#let power-weight = 3

#let weighted-total(simplicity, speed, reach, stability, power) = (
  simplicity * simplicity-weight
  + speed * speed-weight
  + reach * reach-weight
  + stability * stability-weight
  + power * power-weight
)

= Lift Decision Matrix <sl-lift-selection>

#edp-header("SELECT", "Choosing a Lift for Pinnacle")

The lift has to reach the center goal without making the rest of the robot hard to drive or maintain. We compared linear, 2 bar, 4 bar, 6 bar, and double reverse 4 bar designs. Reach, stability, and usable cycle speed received the heavier weights because a lift that reaches the goal but drops the object or takes too long will not help our match score.

#block(breakable: false)[
  == Weighted Decision Matrix

  #table(
    columns: (2.1fr, 0.75fr, 0.75fr, 0.75fr, 0.75fr, 0.75fr, 1.1fr),
    stroke: 0.5pt + rgb("#334155"),
    inset: 5pt,
    align: center + horizon,
    fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
    [*Lift type*], [*Simple*], [*Speed*], [*Reach*], [*Stable*], [*Power*], [*Weighted total*],
    [Linear lift], [4], [5], [5], [5], [5], [#weighted-total(4, 5, 5, 5, 5)],
    [2 bar], [5], [4], [2], [3], [4], [#weighted-total(5, 4, 2, 3, 4)],
    [4 bar], [4], [4], [3], [4], [4], [#weighted-total(4, 4, 3, 4, 4)],
    [Double reverse 6 bar], [3], [3], [4], [3], [3], [#weighted-total(3, 3, 4, 3, 3)],
    [Double reverse 4 bar], [2], [3], [4], [4], [3], [#weighted-total(2, 3, 4, 4, 3)],
  )

  #text(size: 9pt, fill: rgb("#94A3B8"))[
    *Weights:* Simplicity = #simplicity-weight, Speed = #speed-weight,
    Reach = #reach-weight, Stability = #stability-weight, Power margin = #power-weight.
  ]
]

== Decision

The linear lift scored highest because it gives us the reach we need while keeping the motion mostly vertical and predictable. Our version will use continuous string rigging, but that is an implementation detail inside the linear-lift category, not another option in the matrix. The path to the tall center goal looks cleaner than the path from a short 2 bar, and the game element should swing through less space than it would on a 4 bar or double reverse 4 bar.

We scored power favorably because this is the mechanism we are willing to give at least 33 W to before adding another motor-driven subsystem. That rating is still provisional. A full stack near the top of the travel will tell us whether the lift actually has the margin we expect.

== *Selected Lift:* *Linear Lift*
