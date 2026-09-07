Guideline: For the "Select Best Solution" category, do not supply raw tables. Create weighted decision systems that sum up dynamically, paired with clear design attribute definitions beneath the visualization.

#edp-header("SELECT", "Manipulator Style Decision Analysis Matrix")

#align(center)[
  #table(
    columns: (2fr, 1fr, 1.2fr, 1.2fr, 1.2fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if y == 0 { rgb("#ECEFF1") } else { none },
    [*Evaluation Criteria*], [*Weight*], [*Side-Roller*], [*Top-Down Claw*], [*Pneumatic Gate*],
    [Design Simplicity], [1], [3 (Total: 3)], [5 (Total: 5)], [4 (Total: 4)],
    [Cycle Output Speed], [4], [5 (Total: 20)], [2 (Total: 8)], [4 (Total: 16)],
    [Possession Hold Torque], [3], [4 (Total: 12)], [4 (Total: 12)], [5 (Total: 15)],
    [Volumetric Footprint], [2], [4 (Total: 8)], [3 (Total: 6)], [5 (Total: 10)],
    [*Total Evaluation Score*], [10], [*43*], [*31*], [*45*]
  )
]

== Criteria Definitions & Weight Justification
- *Cycle Output Speed (Weight 4):* Due to the rigid single-possession restriction, scoring latency is the most critical constraint mapping directly to high match cycle counts.
- *Possession Hold Torque (Weight 3):* Mechanical clamping must endure acceleration loads without dropping elements during barrier transition impacts.
