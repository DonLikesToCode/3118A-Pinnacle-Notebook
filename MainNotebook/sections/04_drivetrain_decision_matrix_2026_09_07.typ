// Save Path: C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\MainNotebook\sections\03_drivetrain_decision_matrix_2026_09_07.typ
// RECF Achieve: Pinnacle | Drivetrain selection | Select stage

#import "../_style.typ": edp-header

#let ease-weight = 3
#let simplicity-weight = 3
#let torque-weight = 3
#let maneuverability-weight = 2

#let weighted-total(ease, simplicity, torque, maneuverability) = (
  ease * ease-weight
  + simplicity * simplicity-weight
  + torque * torque-weight
  + maneuverability * maneuverability-weight
)

= Drivetrain Decision Matrix <sl-drivetrain-selection>


#v(6pt)
#edp-header("SELECT", "Choosing a Drivetrain for Pinnacle")

The drivetrain must cross a 12' x 12' field with legal objects, line up at goals and loaders, and handle contact near the neutral zones, so we compared six options using four game demands: ease of programming, mechanical simplicity, drivetrain torque, and maneuverability.

\

#block(breakable: false)[
  == Weighted Decision Matrix

  We score each option from 1 to 5, with 5 as the best fit, then multiply each score by its weight before calculating the row total.

  #table(
    columns: (2fr, 0.8fr, 0.8fr, 0.8fr, 0.8fr, 1.1fr),
    stroke: 0.5pt + rgb("#334155"),
    inset: 5pt,
    align: center + horizon,
    fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
    [*Drivetrain*], [*Ease*], [*Simplicity*], [*Torque*], [*Maneuverability*], [*Weighted total*],
    [Tank Drive], [5], [5], [5], [3], [#weighted-total(5, 5, 5, 3)],
    [Tank Drive w/ Treads], [4], [4], [5], [2], [#weighted-total(4, 4, 5, 2)],
    [X-Drive (Holonomic)], [3], [3], [2], [5], [#weighted-total(3, 3, 2, 5)],
    [Asterik Drive (Holonomic)], [3], [2], [2], [5], [#weighted-total(3, 2, 2, 5)],
    [H-Drive (Holonomic)], [3], [3], [2], [4], [#weighted-total(3, 3, 2, 4)],
    [Mecanum Drive (Holonomic)], [3], [2], [2], [5], [#weighted-total(3, 2, 2, 5)],
  )

  #v(6pt)
  #text(size: 9pt, fill: rgb("#94A3B8"))[
    *Weights:* Ease of Programming = #ease-weight,
    Mechanical Simplicity = #simplicity-weight,
    Drivetrain Torque = #torque-weight,
    Maneuverability = #maneuverability-weight.
  ]
]

\

== Criteria Definitions & Weight Justification

- *Ease of Programming (Weight #ease-weight):* The robot needs accurate approaches to goals, loaders, and rollers, so a simpler drive model gives us fewer motion behaviors to tune and easier autonomous recovery.
- *Mechanical Simplicity (Weight #simplicity-weight):* Fewer specialized modules mean fewer alignment points and fewer parts to replace, leaving more build time for the scoring mechanism.
- *Drivetrain Torque (Weight #torque-weight):* The robot may carry a pin, cup, and stack while pushing through traffic or contacting a field element, so loaded driving needs low-speed force more than top speed.
- *Maneuverability (Weight #maneuverability-weight):* Holonomic movement can strafe and rotate without turning the chassis, but the gain must still justify the added controls and hardware.

\

== Decision

Tank Drive earns the highest weighted score because it gives us the simplest code, the fewest mechanical parts, and useful torque for loaded cycles + defensive capabilities. Turning is slower than with a holonomic drive, so the driver will need planned turns and practice. Tank Drive with Treads is the closest alternative, but tread drag may slow repeated goal and loader routes. Holonomic drives help with sideways alignment, but their extra hardware and calibration reduce our torque margin.

\

== *Selected Drivetrain:* *Tank Drive*
