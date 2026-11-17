// RECF Achieve: Pinnacle | Drivetrain CAD log | Brainstorm stage

#import "../_style.typ": edp-header, sign-page

= Drivetrain CAD Log <br-drivetrain-cad>

#edp-header("BRAINSTORM", "CAD Session: Drivetrain Layout")

#grid(
  columns: (1fr, 1fr, 1fr),
  [*Date:* September 13, 2026],
  [*Subsystem:* Drivetrain],
  [*CAD version:* Initial chassis layout],
)

== Design Goal

We capped the drivetrain at 44 W so the lift and other mechanisms can use the remaining 55 W under the 99 W limit. In older games, 66 W drivetrains were almost expected for a competitive robot, so this is not a casual choice. We think Pinnacle will reward repeated match-load cycles more than long runs at top speed, which makes the extra subsystem power more useful than another pair of drive motors. That is the tradeoff.

== Isometric Layout

We laid out a chassis that is 15.5 inches long and 13.5 inches wide. It uses 2.75 inch wheels and 600 RPM motors, geared down to about 450 RPM at the wheels. We chose the faster ratio for acceleration rather than peak speed because most routes on this field look too short to hold top speed for long.

#figure(
  image("../images/cad/drive_train_isometric.png", width: 82%),
  caption: [Isometric view of the drivetrain CAD layout, including the four wheel pods, inner frame rails, and motor placement.]
) <fig-drive-train-isometric>

\
\
\
\
\
\
\
\
\


#block(breakable: false)[
  == Top View and Bracing

  We placed three wheels on each side and left the middle open for the main cross brace. The frame has one main brace and two smaller intermediate braces. The main brace ties the chassis together; the smaller braces only hold the inner C-channels so they do not bow inward.

  The drive is only five holes wide, so one full cross brace looks like enough to stop twisting without filling the center with extra metal. We still need to check that on the built frame. The lift will load the rear of the chassis, and CAD will not show every bit of flex.

  #figure(
    image("../images/cad/drive_train_top.png", width: 50%),
    caption: [Top view showing the three-wheel layout on each side and the main and intermediate cross braces.]
  ) <fig-drive-train-top>

  #figure(
    image("../images/cad/cross_brace_boxing.png", width: 14%),
    caption: [Cross-brace boxing detail used to keep the frame tied together without blocking the wheel pods.]
  ) <fig-cross-brace-boxing>
]

#block(breakable: false)[
  == Screw-Joint Assembly

  We used screw joints where we could because shafts left more slop than we wanted. Brass inserts are our current choice because they look like the lowest-friction option with the least play compared to just circular inserts. The screw starts as a cantilever from the inner C-channel, then gets support from a bearing flat mounted on the outer C-channel.

  That gives the wheel hardware support on both sides without making the drivetrain much wider. The alignment still needs a real check during the first build. A small offset at the bearing flat could add more friction. The screw that the wheel spins on is a shoulder screw to effectively center the wheel and obtain proper alignment for better friction.
  #figure(
    image("../images/cad/screw_joint_cross_section.png", width: 40%),
    caption: [Cross-section of the screw-joint assembly, showing the brass insert, wheel hardware, and outer bearing support.]
  ) <fig-screw-joint-cross-section>
]

#sign-page("Don Dao", "Zaid Asad")
