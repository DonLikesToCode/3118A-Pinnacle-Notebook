// RECF Achieve: Pinnacle | End-effector CAD log | Brainstorm stage

#import "../_style.typ": edp-header, sign-page

= End Effector CAD Log <br-end-effector-cad>

#edp-header("BRAINSTORM", "CAD Session: Double Roller End Effector")

#grid(
  columns: (1fr, 1fr, 1fr),
  [*Date:* September 13, 2026],
  [*Subsystem:* End effector],
  [*CAD version:* Initial roller layout],
)

== Design Goal

We laid out a double-roller end effector that can pull a full pinnacle in and keep the pin nested while the robot moves. The roller set uses a mix of flex wheels and rubber-band rollers. We have seen this combination funnel plastic game pieces toward the center in past builds, but the actual compression still needs a physical test.

== Isometric Layout

The rollers face opposite directions so they draw the pinnacle inward instead of pushing it sideways. The two roller paths meet under the center opening, which gives the game element a place to settle before the lift moves.

#figure(
  image("../images/cad/end_effector_isometric.png", width: 82%),
  caption: [Isometric view of the double-roller end effector, including the opposing roller directions, wrist mounting area, and center opening.]
) <fig-end-effector-isometric>

#block(breakable: false)[
  == Top View and Motor Allocation

  The end effector gets one 5.5 W motor. The wrist will use another 5.5 W motor, so the complete assembly uses 11 W before we add any other powered mechanism. That leaves the lift as the main power priority, and it is one reason we do not want a complicated claw or a second roller gearbox.

  #figure(
    image("../images/cad/end_effector_top.png", width: 50%),
    caption: [Top view showing the roller shafts, flex wheels, rubber-band rollers, motor, and wrist connection.]
  ) <fig-end-effector-top>
]

#block(breakable: false)[
  == Polycarbonate Hard Stop

  We added a polycarbonate plate to stop the pinnacle once it is nested between the rollers. The center hole controls how far the pinnacle can enter. A smaller opening should stop it earlier, while a larger opening will let it sit deeper, so the hole diameter is the part we need to tune first.

  The hard stop should keep the object from climbing into the roller assembly, but we have not checked the clearance against every pin and cup shape yet. That check belongs in the first intake test.

  #figure(
    image("../images/cad/end_effector_polycarbonate_top.png", width: 50%),
    caption: [Top view of the custom polycarbonate plate and its center opening, which controls the pinnacle nesting depth.]
  ) <fig-end-effector-polycarbonate-top>
]

#sign-page("Don Dao", "Zaid Asad")
