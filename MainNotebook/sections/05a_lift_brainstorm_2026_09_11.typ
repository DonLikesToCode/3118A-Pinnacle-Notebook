// RECF Achieve: Pinnacle | Lift brainstorming | Brainstorm stage

#import "../_style.typ": edp-header

= Lift Brainstorm <br-lift-brainstorm>

#edp-header("BRAINSTORM", "Lift Options We Looked At")

#grid(
  columns: (1fr, 1fr, 1fr),
  [*Date:* September 11, 2026],
  [*Subsystem:* Lift],
  [*Question:* How should the robot reach the center goal?],
)

The lift needs enough travel for the center goal without turning the robot into a top-heavy swing arm. We looked at two-bar, double reverse four-bar, double reverse six-bar, and linear lift layouts. The linear lift is the option we plan to string, but the matrix treats it as one lift family rather than splitting it into separate stringing choices.

#grid(
  columns: (1fr, 1fr),
  gutter: 10pt,
  [
    #image("../images/cad/lift_2_bar.png", width: 100%, height: 1.45in, fit: "contain")
    *2 Bar:* compact motion, but less reach.
  ],
  [
    #image("../images/cad/lift_double_reverse_4_bar.png", width: 100%, height: 1.45in, fit: "contain")
    *Double Reverse 4 Bar:* useful reach with a larger swinging envelope.
  ],
  [
    #image("../images/cad/lift_double_reverse_6_bar.png", width: 100%, height: 1.45in, fit: "contain")
    *Double Reverse 6 Bar:* more reach, with more links and more points to keep aligned.
  ],
  [
    #image("../images/cad/lift_linear_string.png", width: 100%, height: 1.45in, fit: "contain")
    *Linear Lift:* mostly vertical travel. Our version will use continuous string rigging.
  ],
)

The pictures show the basic motion, not the exact robot package. We still need to see how each option fits around the drivetrain, end effector, and starting volume before trusting the scores.

#text(size: 8pt, fill: rgb("#94A3B8"))[
  *Image note:* Reference images were collected from Purdue SigBots and private messages with VEX community Discord users. They are being used for mechanism comparison, not presented as our original designs.
]
