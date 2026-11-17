// RECF Achieve: Pinnacle | End-effector brainstorming | Brainstorm stage

#import "../_style.typ": edp-header

= End Effector Brainstorm <br-end-effector-brainstorm>

#edp-header("BRAINSTORM", "End Effector Options We Looked At")

#grid(
  columns: (1fr, 1fr, 1fr),
  [*Date:* September 11, 2026],
  [*Subsystem:* End effector],
  [*Question:* How should the robot hold the game elements?],
)

The end effector has to accept a pin, cup, or pinnacle without making the loader handoff too precise. We looked at a ratcheting claw, double roller, pneumatic claw, and conventional claw. The double roller is the one we want to carry into CAD because it can pull the object in and center it without a separate latch.

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #image("../images/cad/end_effector_ratcheting_claw.png", width: 100%, height: 1.45in, fit: "contain")
    *Ratcheting Claw:* strong hold, but more moving parts.
  ],
  [
    #image("../images/cad/end_effector_double_roller.png", width: 100%, height: 1.45in, fit: "contain")
    *Double Roller:* direct intake motion and easy loader integration.
  ],
  [
    #image("../images/cad/end_effector_pneumatic_claw.png", width: 100%, height: 1.45in, fit: "contain")
    *Pneumatic Claw:* good grip, but it needs air hardware and control.
  ],
  [
    #image("../images/cad/end_effector_conventional_claw.png", width: 100%, height: 1.45in, fit: "contain")
    *Conventional Claw:* familiar structure, though the grab point can be less forgiving.
  ],
)

These references show the general mechanism ideas. The actual choice still depends on compression, motor use, object retention, and how cleanly the tool meets the lift.

#text(size: 8pt, fill: rgb("#94A3B8"))[
  *Image note:* Reference images were collected from Purdue SigBots and private messages with VEX community Discord users. They are being used for mechanism comparison, not presented as our original designs.
]
