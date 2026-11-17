// Save Path: C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\MainNotebook\00_introduction_2026_09_06.typ
// Front matter | Team profiles and season framing | No signature block

#import "../_style.typ": edp-header

#let profile-image-dir = "images/profiles/"

#let profile(name, grade, main-roles, sub-roles, image-file, about-me) = {
  block(
    stroke: 0.5pt + rgb("#334155"),
    fill: rgb("#151724"),
    radius: 4pt,
    inset: 10pt,
    width: 100%,
    [
      #grid(
        columns: (1.1fr, 2.9fr),
        gutter: 16pt,
        [
          #box(
            width: 100%,
            height: 1.45in,
            stroke: 0.5pt + rgb("#475569"),
            radius: 3pt,
            inset: 6pt,
            align(center + horizon)[
              #text(size: 8pt, fill: rgb("#94A3B8"))[
                Head-shot placeholder \
                #profile-image-dir#image-file
              ]
            ],
          )
          // Insert the manual image here when ready:
          // #image(profile-image-dir + image-file, width: 100%)
        ],
        [
          == #name (#grade Grade)
          *Main Roles:* #main-roles \
          #if sub-roles != none [*Sub Roles:* #sub-roles]

          #v(6pt)
          *About Me:* \
          #block(width: 100%)[
            #about-me
            #v(0.65in)
          ]
        ]
      )
    ]
  )
}

#align(center)[
  #text(size: 15pt, weight: "bold")[
  = 3118A Astrobots
  = RECF Achieve 2026-2027 Engineering & Design Notebook <id-intro-overview>
  ]
]

\

#align(center)[
  #image("../images/team_logo.png", width: 60%)
]

#pagebreak()

== Team Member Profiles

#profile(
  "Don Dao",
  "11th",
  "Team Captain, Design Lead, Software Co-Lead",
  "Fabrication, Build",
  "don-dao.png",
  [
    I joined FRC team 118 and V5RC team 3118A during my freshman year after working on competitive programming, web development, and game projects. Robotics introduced me to control theory and pushed me toward mechanical design, so this season I am taking the design lead and trying to become more comfortable designing and building complete subsystems.
  ],
)

#profile(
  "Jabe Alison",
  "11th",
  "Skills Driver, Strategy",
  none,
  "jabe-alison.png",
  [
    I started robotics in fourth grade with VEX IQ Squared Away, then worked with BEST Robotics in middle school as a programmer, electronics lead, safety officer, and spotter. Our team won the BEST award in 2022-2023. I joined 3118A in ninth grade and later programmed for FRC team 118.
  ],
)

#profile(
  "Zaid Asad",
  "12th",
  "Software Lead, Strategy Lead",
  "Fabrication, Build",
  "zaid-asad.png",
  [
    I started with VEX IQ Squared Away in fifth grade, moved into VRC for Tipping Point, and reached VEX Worlds in Spin Up. I continued through Over Under and High Stakes while working as a designer, builder, notebooker, and programmer. I also program in Codeforces and on personal projects, and this year I want to document our work better while sharpening my programming.
  ],
)

#profile(
  "Alex Graun",
  "12th",
  "Match Driver, Fabrication & Build Lead, Design",
  none,
  "alex-graun.png",
  [
    I began doing robotics in elementary school and later moved on to joining team 118 in high school. I have been mostly a builder and driver amongst other roles. I hope to continue to improve my skills in these areas and help the team succeed in Pinnacle.
  ],
)

#profile(
  "Jeremiah George",
  "12th",
  "Fabrication & Build",
  "Design",
  "jeremiah-george.png",
  [
    I spent two years in VEX IQ and three years in BEST Robotics before adding VEX V5 and FRC in high school. When BEST stopped at my school, I continued with VEX V5 and FRC, where I have worked as a designer, builder, and driver. I am continuing those roles this season.
  ],
)

#pagebreak()

= Notebook Format & Reading Guide  (PREFACE) <id-notebook-format>

#include "01_notebook_format_2026_09_06.typ"

#pagebreak()

= Engineering Design Process <id-intro-edp>

#align(center)[
  #box(
    width: 40%,
    height: 2.4in,
    radius: 100%,
    clip: true,
    image("../images/engineering-design-process.jpg", width: 100%, height: 100%, fit: "cover"),
  )
]

Engineering is the process of getting a robot to do the job we need. It never works in one step. We research, sketch, build, and test, then go back when a mechanism or program does not behave the way we expected.

We use the Engineering Design Process to keep those changes from turning into guesses. It breaks a large problem into smaller decisions, then gives us a place to record what failed and what we changed. Other kinds of engineers use the same basic loop.

For RECF Achieve, the process keeps our robot tied to the actual requirements of Pinnacle. We identify the problem, look at the rules, sketch options, select one, build it, and test it. We do not need to guess the whole robot at once.

Each page gets the EDP stage that matches the work on it. A selected design is not final. If it fails on the field, we go back to the part that caused the problem and change it.

\

#edp-header("IDENTIFY", "Identify & Research the Problem")

First we figure out what the robot actually has to do. We write down field limits, scoring conditions, robot restrictions, object behavior, and match rules before choosing hardware. Facts from the manual stay separate from guesses that still need a test.

For Pinnacle, that means measuring the game elements, reading the possession and loading rules, mapping the goals and loaders, and handling pins, cups, rollers, and stacks ourselves.

\

#edp-header("BRAINSTORM", "Brainstorm Possible Solutions")

Next we put down several solutions before committing to one. We use sketches, CAD, quick prototypes, route drawings, and code ideas. Some of them will fail early. That is fine if the failure tells us what not to build.

#pagebreak()

#edp-header("SELECT", "Select a Promising Solution")

Then we choose the option that fits the constraints best. We compare risk, cost, cycle time, reliability, and the work needed to build it, using a weighted matrix when the tradeoff is hard to judge by eye. A bad test can send us back here.

Our drivetrain matrix is one example. It compares tank, treaded, and holonomic layouts against the demands we expect Pinnacle to put on the robot.

\

#edp-header("BUILD", "Design & Build the Solution")

After that, we turn the idea into hardware. We model the geometry, choose materials, assemble the parts, write the first code, and check the robot against the rules. CAD gives us a starting point, not a guarantee. A small clearance change can decide whether a pin or cup enters cleanly.

\

#edp-header("TEST", "Test, Evaluate & Repeat")

Testing means checking the design against the criteria we wrote earlier. We record cycle times, misses, alignment error, motor behavior, driver workload, and rule concerns. A failed run is still useful when it tells us what to change next.

After each test, we decide whether to keep the design, adjust it, or restart. Old versions stay in the notebook. They show why the robot changed.
