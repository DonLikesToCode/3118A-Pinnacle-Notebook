// RECF Achieve: Pinnacle | End effector selection | Select stage

#import "../_style.typ": edp-header

#let simplicity-weight = 4
#let integration-weight = 4
#let retention-weight = 3
#let speed-weight = 3

#let weighted-total(simplicity, integration, retention, speed) = (
  simplicity * simplicity-weight
  + integration * integration-weight
  + retention * retention-weight
  + speed * speed-weight
)

= End Effector Decision Matrix <sl-end-effector-selection>

#edp-header("SELECT", "Choosing an End Effector for Pinnacle")

The end effector has to accept pins, cups, and pinnacles without turning every handoff into a precision-driving problem. We weighted simplicity and intake integration most heavily because the lift already carries much of the mechanical risk. The handoff should not need another complicated mechanism between the loader and the scoring tool.

#block(breakable: false)[
  == Weighted Decision Matrix

  #table(
    columns: (2.1fr, 0.8fr, 0.8fr, 0.8fr, 0.8fr, 1.1fr),
    stroke: 0.5pt + rgb("#334155"),
    inset: 5pt,
    align: center + horizon,
    fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
    [*End effector*], [*Simple*], [*Integration*], [*Retention*], [*Speed*], [*Weighted total*],
    [Ratcheting claw], [2], [2], [5], [2], [#weighted-total(2, 2, 5, 2)],
    [Double roller], [5], [5], [4], [5], [#weighted-total(5, 5, 4, 5)],
    [Pneumatic claw], [2], [3], [5], [3], [#weighted-total(2, 3, 5, 3)],
    [Normal claw], [4], [3], [3], [3], [#weighted-total(4, 3, 3, 3)],
  )

  #text(size: 9pt, fill: rgb("#94A3B8"))[
    *Weights:* Simplicity = #simplicity-weight, Intake integration = #integration-weight,
    Retention = #retention-weight, Cycle speed = #speed-weight.
  ]
]

== Decision

The double roller is the simplest way to connect the loader handoff to the lift. The rollers can pull an object in, keep it centered, and release it without a separate latch or pneumatic system. That is why it scored well for integration. It also leaves more room for the lift and should be easier to tune around pins, cups, and pinnacles than a claw with one narrow grab point.

The main weakness is compression. Too little pressure lets a pinnacle slip; too much can stall the motor or pinch the cup. We need a real prototype to find the useful range.

== *Selected End Effector:* *Double Roller*

