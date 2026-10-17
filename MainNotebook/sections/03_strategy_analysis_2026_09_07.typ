// Save Path: C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\MainNotebook\sections\03_strategy_analysis_2026_09_07.typ
// RECF Achieve: Pinnacle | Strategy analysis | Identify and Select stages

#import "../_style.typ": edp-header

= Strategy Analysis <id-strategy-analysis>

#v(6pt)
#edp-header("IDENTIFY", "Pinnacle Strategy Analysis: Cycle Time First")

#block(breakable: false)[
  == Early Strategy Questions

  1. Can the first robot version score a stable short stack on an alliance goal before attempting the center goal?
  2. How many seconds does a complete loader-to-goal cycle take with one driver and one loader operator?
  3. Is roller control worth a dedicated mechanism, or can the scoring tool reach the roller without slowing object cycles?
  4. Can the autonomous routine earn the 15-second ranking point without entering a contested lane?
  5. When does a neutral-goal descore gain more points than a new stack, after drive time and risk are counted?

  These questions become testable notebook entries. We will replace estimates with measured cycle times, object counts, route diagrams, and match observations.
]

== Game Challenge Question

What gives us a dependable Pinnacle score when every object must be collected, aligned, nested, and delivered before the next cycle? Our first plan is to shorten the loader-to-goal cycle, because one tall stack is not worth much if the robot spends the rest of the match returning to the loader.

The strategy has to answer four connected questions:

1. How quickly can the robot receive one object from a loader?
2. How reliably can it align a pin, cup, or pinnacle using the natural nesting tolerance?
3. How many scoring cycles can it finish before the match changes into its endgame phase?
4. When is a roller action or neutral-goal descore worth the time it takes away from another scoring cycle?

== Working Scoring Model

For early testing, we will treat a cycle as:

`loader handoff -> intake -> drive to scoring location -> align -> score -> leave the goal -> return`

Intake speed is only one part of the measurement. We need the time from loader release to the next legal loader approach, and a slower intake may still be better if it jams less and lets the driver leave the goal cleanly.

== Strategy Priorities

1. *Repeatable loader cycles:* Every team-loaded cycle starts with the handoff. The robot should accept one object without a second touch or a hard hit on the perimeter.
2. *Fast, forgiving scoring alignment:* We saw about 3/4" of lateral tolerance when stacking pins and cups. The mechanism should use that margin, not rely on it to hide poor alignment.
3. *Simple goal selection:* Alliance goals give predictable color points. Neutral goals bring traffic, and the center goal pays more but needs extra lift and space.
4. *Roller decisions with a time budget:* Change a roller only when the added yellow-object value beats the time and route risk.
5. *Planned endgame transition:* The final route needs time for the 21-point loader park and Alliance ranking-point conditions.
#pagebreak()
== Match-Type Strategy

=== Solo Driving/Coding Matches

RECF uses two individual-robot formats: Solo Driving Matches and Solo Coding Matches. The first uses a driver, while the second runs student-written code without controller input, so both let us measure cycles without a partner changing the route. For Solo Driving, we need one clean repeated cycle first. We will start at the preload, score a reliable goal, return to a loader, and repeat without a risky center shortcut; once that route works, we can add roller control or a taller goal if the extra points do not cut the cycle count. For Solo Coding, the route should be shorter and easier to recover because the robot needs checks for the loader, goal approach, and object release without a driver correcting each mistake. Fewer completed cycles are acceptable if the routine finishes every run.

=== Alliance Matches

Alliance matches add a 15-second autonomous period and a second robot per alliance, so we should not duplicate the partner's job. If the partner builds at the center goal, our robot can run alliance or neutral cycles, control rollers, or prepare the loader park. We need this plan before the match so both robots do not block the same lane.

The autonomous plan should target the ranking point without entering the opponent's side of the neutral zone. After autonomous, the driver should use the route with the best measured points per second, not the route that only looked good on paper.

== Solo Match Strategy

Solo match testing is its own repeatability problem, not a shortened Alliance match. We will record the best score, average score, failed cycles, and recovery time after a miss so a single lucky run does not hide an unreliable route.

The initial Solo route should:

- start with the preload and score the most reliable nearby target;
- clear at least one loader through controlled handoffs;
- use the pin-and-cup auto-alignment effect to reduce driver correction;
- add roller actions only after their time cost is measured;
- reserve a final route to the alliance loader when the scoring plan benefits from parking.

== Robot Requirements From Strategy

- The intake must receive a pin, cup, or pinnacle from a loader without requiring a high-impact approach.
- The scoring tool must tolerate approximately 3/4" of lateral object offset during nesting.
- The robot must carry one legal loose pin, one legal loose cup, and one stack without accidentally trapping extra objects.
- The drivetrain must turn and return quickly enough that loader-to-goal cycle time is measurable and repeatable.
- The driver must be able to tell whether the robot is carrying a pin, cup, pinnacle, or stack before committing to the next route.
- The robot must leave a clear path to an alliance loader for the final park.

== First Testing Targets

1. Measure five complete loader-to-alliance-goal cycles and record the average, fastest, and slowest time.
2. Repeat the same route with one roller action added and compare points gained per second.
3. Test pin and cup nesting with deliberate offsets from 1/4" through 1" to verify the usable tolerance.
4. Compare a short alliance-goal route against a longer center-goal route using completed score per 60 seconds.
5. Run three Solo Driving attempts and three Solo Coding attempts, recording recovery time instead of only final score.

#v(12pt)
#line(length: 100%, stroke: 0.5pt + rgb("#334155"))
