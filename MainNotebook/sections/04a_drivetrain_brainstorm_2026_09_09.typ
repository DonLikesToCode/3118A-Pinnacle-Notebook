// RECF Achieve: Pinnacle | Drivetrain brainstorming | Brainstorm stage

#import "../_style.typ": edp-header

= Drivetrain Brainstorm <br-drivetrain-brainstorm>

#edp-header("BRAINSTORM", "Drivetrain Options We Looked At")

#grid(
  columns: (1fr, 1fr, 1fr),
  [*Date:* September 9, 2026],
  [*Subsystem:* Drivetrain],
  [*Question:* How should the robot move?],
)

Before scoring mechanisms took over the design, we needed a drive base that could move a loaded robot without wasting the motor budget. We looked at tank, tread tank, X-drive, Asterisk, and H-drive layouts. The pictures are references, not our finished CAD.

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #image("../images/cad/drive_tank.png", width: 100%, height: 1.25in, fit: "contain")
    *Tank Drive:* simple, familiar, and easy to program.
  ],
  [
    #image("../images/cad/drive_tread_tank.png", width: 100%, height: 1.25in, fit: "contain")
    *Tread Tank Drive:* more contact area, but possible drag.
  ],
  [
    #image("../images/cad/drive_x.png", width: 100%, height: 1.25in, fit: "contain")
    *X-Drive:* sideways movement with extra wheel and control demands.
  ],
  [
    #image("../images/cad/drive_asterisk.png", width: 100%, height: 1.25in, fit: "contain")
    *Asterisk Drive:* compact holonomic layout, though the module geometry is less familiar to us.
  ],
  [
    #image("../images/cad/drive_h.png", width: 100%, height: 1.25in, fit: "contain")
    *H-Drive:* a strafing option that adds another drive direction to tune.
  ],
)

We are not trying to pick the drive from the pictures alone. The field routes, loaded torque, programming time, and room left for the lift matter more. We will put those tradeoffs into the next page's matrix.

#text(size: 8pt, fill: rgb("#94A3B8"))[
  *Image note:* Reference images were collected from Purdue SigBots and private messages with VEX community Discord users. They are being used for mechanism comparison, not presented as our original designs.
]
