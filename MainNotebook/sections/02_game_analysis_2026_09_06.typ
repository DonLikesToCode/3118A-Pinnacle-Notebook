// Save Path: C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\MainNotebook\02_game_analysis_2026_09_06.typ
// RECF Achieve: Pinnacle | Official manual v1.2 | Identify stage

#import "../_style.typ": edp-header

#let image-dir = "../images/game-analysis/"

#let rounded-image(path, width: 100%) = box(
  width: width,
  radius: 4pt,
  clip: true,
  image(path, width: 100%),
)

#let image-placeholder(path, caption) = figure(
  box(
    width: 100%,
    height: 1.65in,
    stroke: 0.5pt + rgb("#475569"),
    radius: 3pt,
    clip: true,
    inset: 10pt,
    align(center + horizon)[
      #text(size: 9pt, fill: rgb("#94A3B8"))[
        Insert PNG here: \
        #path
      ]
    ],
  ),
  caption: [#caption],
)

#let rule-card(title, rule, meaning, design-impact) = block(
  fill: rgb("#151724"),
  stroke: (left: 2.5pt + rgb("#60A5FA")),
  inset: (x: 12pt, y: 9pt),
  radius: (right: 4pt),
  width: 100%,
  [
    *#title* \
    #text(size: 9pt, fill: rgb("#94A3B8"), style: "italic")[#rule]

    *What it means:* #meaning

    *Design impact:* #design-impact
  ],
)

= Pinnacle Game Analysis & Field Constraints <id-game-analysis>

#v(6pt)
#edp-header("IDENTIFY", "Pinnacle: Field Layout, Objects, and Rule Boundaries")

The v1.2 manual sets Pinnacle on a 12' x 12' field where robots collect cups and pins, stack them on goals, and turn rollers to change some object values. Scoring is only part of the problem. The robot also has to cross five zones, keep its payload legal, and save time for parking.

#figure(
  rounded-image(image-dir + "field-layout.png"),
  caption: [
    Field layout showing the red and blue zones, two neutral zones,
    center zone, goals, rollers, loaders, driver boxes, and tape-line placement.
  ],
) <fig-field-layout>

== Field Layout & Zone Map

- *Red zone:* 4' W x 12' L, nearest the red driver box, with two red alliance goals.
- *Blue zone:* 4' W x 12' L, nearest the blue driver box, with two blue alliance goals.
- *Neutral zone 1:* 4' W x 4' L on the head-referee side, with one neutral goal.
- *Neutral zone 2:* 4' W x 4' L on the audience side, with one neutral goal.
- *Center zone:* 4' W x 4' L in the middle, with the tall center goal.
- *Loaders:* Four structures attached to the field perimeter, two next to each driver box.
- *Rollers:* Four perimeter structures that show red, blue, or yellow toward the field.
- *Tape lines:* The manual places each tape line fully on the tile closer to the center of the field.

The field has long alliance areas and three neutral sections, so our route changes depending on where the next object sits. Alliance goals give us the most predictable color routes. Neutral goals invite traffic, while the center goal pays more but takes longer to reach and score.
#pagebreak()
== Object Supply & Starting Locations

#table(
  columns: (2fr, 1fr, 2.3fr),
  stroke: 0.5pt + rgb("#334155"),
  inset: 7pt,
  align: (left, center + horizon, left),
  fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y, 2) == 0 { rgb("#151724") } else { rgb("#121214") },
  [*Object*], [*Count*], [*Starting distribution*],
  [Cups], [56], [20 in red supply, 20 in blue supply, 16 on the field],
  [Red/blue pins], [4], [4 on-field positions],
  [Red/yellow pins], [20], [2 red preloads, 10 red supply, 2 blue supply, 6 on-field],
  [Blue/yellow pins], [20], [2 blue preloads, 10 blue supply, 2 red supply, 6 on-field],
  [Yellow/yellow pins], [19], [7 red supply, 7 blue supply, 5 on-field],
  [Goals], [7], [2 red alliance, 2 blue alliance, 2 neutral, 1 center goal],
  [Loaders], [4], [2 red-side loaders and 2 blue-side loaders],
  [Rollers], [4], [Two in each alliance zone; roller color controls yellow-object value],
)

#text(size: 8pt, fill: rgb("#94A3B8"))[*Note:* the goal count above names the physical scoring structures: two red, two blue, two neutral, and one center goal, for seven total. Use the manual's object diagrams and zone figures when checking field setup.]

== Game Element Dimensions & Handling Notes

#figure(
  rounded-image(image-dir + "goal-dimensions.png"),

  caption: [
    Goal diagram: red/blue alliance goals are roughly 3.25" high; 
    neutral goals are roughly 5.77" high; 
    the center goal is roughly 8.77" high.
  ]
) <fig-goal-dimensions>

#figure(
  rounded-image(image-dir + "pin-dimensions.png"),
  caption: [
    Pin diagram: each two-segment pin is roughly 6.5" long by 3.02" wide.
    The four color combinations are red/yellow, blue/yellow, yellow/yellow,
    and red/blue.
  ],
) <fig-pin-dimensions>

#figure(
  rounded-image(image-dir + "cup-dimensions.png", width: 35%),
  caption: [
    Cup diagram: each two-segment cup is roughly 6.48" by 3.16" and has one transparent half and one opaque half.
  ],
) <fig-cup-dimensions>


#figure(
  rounded-image(image-dir + "loader-dimensions.png", width: 35%),
  caption: [
    Loader diagram: each perimeter loader is roughly 6.5" long by 3.02" wide and can display red, blue, or yellow toward the field. Only one cup, pin, or pinnacle may be in a loader at a time, and the drive team member must release the object before the robot touches it.
  ],
) <fig-loader-dimensions>

#figure(
  rounded-image(image-dir + "roller-dimensions.png", width: 80%),
  caption: [
    Roller diagram: each perimeter roller is roughly 6.5" long by 3.02" wide and can display red, blue, or yellow toward the field.
  ],
) <fig-roller-dimensions>
#text(size: 9pt, fill: rgb("#94A3B8"))[
  *Source:* RECF Achieve: Pinnacle Game Manual v1.2, released August 18, 2026 \
  *Manual URL:* https://games.recf.org/achieve/1.2
]

#pagebreak()

== Game Element Definitions & Scoring

\

*Goal:* A field-mounted structure that accepts pins, cups, and stacks. Alliance goals are about 3.25\" high, neutral goals are about 5.77\" high, and the center goal is about 8.77\" high. The heights change the approach, with alliance goals needing less lift while neutral and center goals need more travel and better stability. The opening can also guide the robot, so a compliant aligner may work better than driver sight alone.

\

*Pin:* A two-segment object with a concave and convex side. A pin is named by its two colors, and either halfpin can be visible or hidden after nesting. The curved sides help the pin settle into a cup or goal, and in our hands-on testing, pins and cups self-aligned instead of needing perfect starting alignment. We measured about 3/4" of lateral offset before the pieces stopped settling cleanly. That helps the driver, but it does not fix a crooked lift or loose guide.

\

*Cup:* A two-segment object with one transparent half and one opaque half. A cup nests onto a scored pin and is worth one point when scored. The transparent half can leave a pin color visible while the opaque half hides it, and the cup works like a funnel during nesting, which helps with small approach errors. It can also rotate if the intake releases it off-center.

\

*Pinnacle:* A pin nested into a cup. The manual treats this two-object stack as a separate loadable game element. It arrives partly assembled, so the intake needs enough clearance to accept it without crushing the cup or pulling the pin out when the robot accelerates.

\

*Loader:* A perimeter structure that brings team-loaded cups, pins, and pinnacles from the driver-box supply onto the field. Only one object can be in a loader at a time, and the drive team member must release it before the robot touches it. This is a human-to-robot handoff, so the robot needs a clear approach, a repeatable intake height, and enough compliance for an off-center object. If the driver has to ram the wall, the next cycle will be harder to repeat.

\

*Roller:* A perimeter mechanism that displays red, blue, or yellow. Its state changes yellow halfpin value and can decide which alliance receives neutral-goal cups and yellow halfpins. We could turn the roller easily from the bottom during testing, while the robot could also roll it passively from the top with a drive-over contact. The bottom approach looks easier to control. The top approach may be faster if the chassis stays stable.

#pagebreak()

== Scoring Model

#table(
  columns: (2.1fr, 2.8fr, 0.9fr),
  stroke: 0.5pt + rgb("#334155"),
  inset: 7pt,
  align: (left, left, center + horizon),
  fill: (x, y) => if y == 0 { rgb("#1E293B") } else { none },
  [*Scoring item*], [*Condition*], [*Points*],
  [Scored cup], [Nested on a scored pin on any goal], [1],
  [Matching alliance halfpin], [Visible on a matching alliance or neutral goal], [5],
  [Yellow halfpin], [Visible on a red/neutral goal with red roller, or blue goal with blue roller], [5],
  [Center-goal halfpin], [Any visible halfpin on the center goal], [10],
  [Parked robot], [Alliance match only; robot touching an alliance loader at the end, max one robot per loader], [21],
)

Pins count only when nested in a goal or a scored cup. Cups count only when nested on scored pins. A zero-point pin can still support a scored cup, so nesting order matters even when the pin color does not score.

#pagebreak()

== Rule-by-Rule Engineering Constraints

#rule-card(
  "3.2.2 to 3.2.3: Starting size and preload",
  "The robot starts inside an 18\" x 18\" x 18\" volume, touches one of the two red loaders in solo matches, and begins with one yellow/red preload pin.",
  "The first mechanism state must fit inside the cube and present the preload without touching another object.",
  "Keep the intake and lift inside the starting envelope. Measure the assembled robot, not only the CAD box.",
)

#rule-card(
  "3.3.1: Timer control",
  "Solo matches last 60 seconds. The robot cannot move before the timer starts and must stop at zero; late points are removed and the team receives a foul.",
  "The final cycle only matters if the robot finishes before the buzzer.",
  "Use a visible timer during testing. Leave a recovery margin instead of planning for the exact last second.",
)

#rule-card(
  "3.3.2: Possession limit",
  "A robot may carry one unstacked pin, one unstacked cup, and one stack of any height at a time.",
  "Bulk storage is not legal. The robot can carry one of each category, but a second stack or loose object risks a foul.",
  "Build around grab, place, release, and return cycles. The robot must not trap a second cup by accident.",
)

#rule-card(
  "3.3.3: Objects stay in play",
  "Removing a cup or pin from the field is a foul. Objects that leave the field are returned by field volunteers when it is safe to do so.",
  "Hard pushing has a cost. A failed descore or uncontrolled intake can waste time and draw a penalty.",
  "Use soft stops, controlled roller speeds, and a driver cue near the perimeter.",
)

#rule-card(
  "3.3.4: Team-loaded objects",
  "Only objects that begin in a team's driver-box supply can be moved into its adjacent loaders during a match. A loader holds one object at a time, and the human must release it before robot contact.",
  "Loader work is a handoff, not an extension of the robot. The driver and loader operator must stay synchronized.",
  "Keep the opening visible and tune the intake for one clean handoff.",
)

#rule-card(
  "4.1.1: Solo coding",
  "Solo coding matches last 60 seconds and the controller cannot be used to operate the robot.",
  "The autonomous routine must handle timing, field error, and object variation without driver correction.",
  "Use sensors and short recovery routines. A shorter route with a fallback is better than a longer route that fails once.",
)

#rule-card(
  "5.3.1 to 5.3.3: Alliance autonomous",
  "Alliance matches begin with a 15-second autonomous period. Robots may work in their own alliance zone and the neutral zone, but cannot contact anything on the opponent's side of the neutral zone. Controllers cannot drive during this period.",
  "Autonomous paths must stop at the correct boundary. A foul during autonomous costs the alliance its autonomous ranking point.",
  "Mark the neutral-zone boundary in code and test the red and blue paths separately. The field edge is a rule boundary.",
)

#rule-card(
  "5.3.4: Neutral-goal protection",
  "During the first 90 seconds, a robot may remove only one top pin, cup, or pinnacle at a time from a neutral-zone goal. During the final 30 seconds, objects may not be removed from neutral goals.",
  "The match changes near the end. Neutral-goal descoring closes, so late cycles should build or protect instead of pulling.",
  "The descore tool needs a one-object top-of-stack action. Add a timer lockout for the final 30 seconds.",
)

#rule-card(
  "5.3.5: Opponent alliance goals",
  "An alliance cannot add or remove nested pins or cups from the opponent's alliance-colored zone.",
  "Opponent goals are not legal defensive targets.",
  "Route through the center and neutral areas without brushing those goals. Driver practice needs a hard no-go boundary.",
)

#rule-card(
  "5.3.6 to 5.3.7: Defense and game objects",
  "A robot may not trap, hold, or lift an opponent for more than a four-count. Cups, pins, stacks, and field parts cannot be used to break another rule; knocking down a protected opposing stack can earn a red card.",
  "A legal defensive position still needs an exit path. A stack remains part of the interaction while the robot touches it.",
  "Use lane blocking and short contact instead of long pushes. Do not use a carried object as a battering ram.",
)

#rule-card(
  "5.1.5 and 5.5: Endgame value",
  "A robot touching one of its alliance's loaders at the end earns 21 points, with at most one robot counted per loader. The alliance ranking points require a 5-alliance-halfpin stack, a matching roller, and a robot on a loader.",
  "The endgame needs a plan, not a last-second parking guess.",
  "Reserve a route to a loader and set the time to stop risky cycles. Include the 21-point park and the endgame ranking point.",
)

#text(size: 9pt, fill: rgb("#94A3B8"))[
  *Source:* RECF Achieve: Pinnacle Game Manual v1.2, released August 18, 2026 \
  *Manual URL:* https://games.recf.org/achieve/1.2
]
