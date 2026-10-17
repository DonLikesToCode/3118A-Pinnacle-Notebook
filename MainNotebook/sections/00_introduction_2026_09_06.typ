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
  = RECF Achieve 2026-2027 Engineering & Design Notebook <intro-overview>
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
  "Main Driver, Strategy",
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
  "Fabrication & Build Lead, Design",
  none,
  "alex-graun.png",
  [],
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

= Engineering Design Process <intro-edp>

#align(center)[
  #box(
    width: 2.1in,
    height: 2.1in,
    radius: 100%,
    clip: true,
    stroke: 1pt + rgb("#475569"),
    fill: rgb("#151724"),
    align(center + horizon)[
      #text(size: 8pt, fill: rgb("#94A3B8"))[
        Circular EDP image placeholder \
        Insert PNG here: \
        images/engineering-design-process.png
      ]
    ],
  )
]

Engineering means designing something until it produces the result we need, but that result does not appear in one step. We research, plan, build, and test the robot, then repeat the same work on each mechanism, program, and strategy choice.

We use the Engineering Design Process to keep that work organized. It breaks a large problem into smaller decisions, and when a test exposes a weak point, it sends us back to the step that needs more work. Architects, computer scientists, automotive engineers, and scientists use similar cycles.

For RECF Achieve, this process keeps our robot tied to the actual requirements of Pinnacle. We identify the problem, research it, sketch options, select one, build it, and test it, so each pass improves one part of the robot instead of asking us to guess the whole design at once.

We will mark each step in this notebook and record the evidence that moved the design forward. A selected design is not final. If it fails on the field, we go back to the part that caused the problem and change it.

\

#edp-header("IDENTIFY", "Identify & Research the Problem")

The first step is identifying and researching the problem. We write down the field limits, scoring conditions, robot restrictions, object behavior, and match rules before choosing hardware. We separate manual facts from guesses that still need a test.

For Pinnacle, we measure the game elements, read the possession and loading rules, map the goals and loaders, and write down how pins, cups, rollers, and stacks behave in our hands.

\

#edp-header("BRAINSTORM", "Brainstorm Possible Solutions")

The second step is brainstorming solutions that fit the criteria. We use sketches, CAD, quick prototypes, route drawings, and code ideas before committing to one approach. Some ideas will fail early. That is still useful if the test reveals a feature worth keeping.

#pagebreak()

#edp-header("SELECT", "Select a Promising Solution")

The third step is selecting a promising solution. We compare strengths, weaknesses, risk, cost, cycle time, and reliability, then use a weighted matrix when the choice has several tradeoffs. A bad test result can send us back to this step or to brainstorming.

Our drivetrain matrix is one example. It compares tank, treaded, and holonomic layouts against the demands we expect Pinnacle to put on the robot.

\

#edp-header("BUILD", "Design & Build the Solution")

The fourth step turns the selected idea into hardware. We model the geometry, choose materials, assemble the parts, write the first code, and check the robot against the rules. Physical measurements matter. A small clearance change can decide whether a pin or cup enters cleanly.

\

#edp-header("TEST", "Test, Evaluate & Repeat")

The fifth step is testing the design against the criteria we wrote earlier. We record cycle times, misses, alignment error, motor behavior, driver workload, and rule concerns. A failed test still helps if it tells us exactly what to change next.

After testing, we decide whether to keep the design, adjust it, or restart with another idea. We keep the old versions in the notebook. That makes the reason for each change easier to follow.
