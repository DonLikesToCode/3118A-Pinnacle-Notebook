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

The drivetrain has to cross a 12' x 12' field, carry legal objects, line up at goals and loaders, and survive contact near the neutral zones. We compared six options against four things we expect to matter: programming effort, mechanical simplicity, torque, and maneuverability.

\

#block(breakable: false)[
  == Weighted Decision Matrix

  We score each option from 1 to 5, where 5 is the best fit for our robot. Then we multiply each score by its weight and add the results.

  #table(
    columns: (2fr, 0.8fr, 0.8fr, 0.8fr, 0.8fr, 1.1fr),
    stroke: 0.5pt + rgb("#334155"),
    inset: 5pt,
    align: center + horizon,
    fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
    [*Drivetrain*], [*Ease*], [*Simplicity*], [*Torque*], [*Maneuverability*], [*Weighted total*],
    [Tank Drive], [5], [5], [5], [3], [#weighted-total(5, 5, 5, 3)],
    [Tread Tank Drive], [4], [4], [5], [2], [#weighted-total(4, 4, 5, 2)],
    [X-Drive (Holonomic)], [3], [3], [2], [5], [#weighted-total(3, 3, 2, 5)],
    [Asterisk Drive (Holonomic)], [3], [2], [2], [5], [#weighted-total(3, 2, 2, 5)],
    [H-Drive (Holonomic)], [3], [3], [2], [4], [#weighted-total(3, 3, 2, 4)],
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

- *Ease of Programming (Weight #ease-weight):* We need accurate approaches to goals, loaders, and rollers. A simpler drive model gives us fewer motion behaviors to tune and fewer ways for autonomous recovery to go wrong.
- *Mechanical Simplicity (Weight #simplicity-weight):* Every specialized module adds alignment points and replacement parts. Those parts also take build time away from the scoring mechanism.
- *Drivetrain Torque (Weight #torque-weight):* The robot may carry a pin, cup, and stack while pushing through traffic or contacting a field element. Loaded driving needs low-speed force, not just a high top speed.
- *Maneuverability (Weight #maneuverability-weight):* Holonomic movement can strafe and rotate without turning the chassis, but the gain has to justify the extra hardware and calibration.

\

== Decision

Tank Drive earns the highest score. It gives us simpler code, fewer mechanical parts, and enough torque for loaded cycles and defensive contact. Turning will be slower than with a holonomic drive, so the driver will need planned turns and practice. Tread Tank Drive is the closest alternative, but tread drag may slow repeated goal and loader routes. Holonomic drives help with sideways alignment, though the extra hardware and calibration would eat into our torque margin.

\

== *Selected Drivetrain:* *Tank Drive*
