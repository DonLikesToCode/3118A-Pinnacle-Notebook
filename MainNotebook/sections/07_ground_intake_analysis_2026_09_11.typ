// RECF Achieve: Pinnacle | Ground intake analysis | Identify stage

#import "../_style.typ": edp-header

= Ground Intake Analysis <id-ground-intake>

#edp-header("IDENTIFY", "Should the Robot Have a Ground Intake?")

A ground intake is not required for our first scoring plan, but it gives the driver a way to recover a dropped pin, cup, or pinnacle without waiting for another loader cycle. One mistake can leave the alliance with a point debt for the rest of the match. The field also leaves enough objects on the ground that a pickup could make the robot useful outside one fixed loader route.

#table(
  columns: (1fr, 1fr),
  stroke: 0.5pt + rgb("#334155"),
  inset: 8pt,
  align: (left, left),
  fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
  [*Benefits*], [*Costs and risks*],
  [Point-debt recovery after a dropped object], [Added geometry makes the robot harder to package and build],
  [Scoring redundancy when the loader route is blocked], [An intake motor reduces the power available for the lift],
  [More field versatility because objects can be collected from the floor], [The mechanism adds another jam point and another system to protect],
  [A driver can recover without returning to a loader], [The intake may interfere with the lift, end effector, or starting size],
)

== Decision
Adding one this early should not hurt us if we keep it optional in the CAD. If driver practice shows that we rarely drop an object, we can remove it before the design hardens. For now, the recovery value looks worth exploring, but the motor and packaging costs still need a real test.
