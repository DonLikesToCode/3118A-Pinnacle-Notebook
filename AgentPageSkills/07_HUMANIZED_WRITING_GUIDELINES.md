# Guideline: Humanized Technical Writing & AI Footprint Mitigation

## Role & Purpose
This document provides execution rules for a generation agent to eliminate "AI footprint tells," machine-generated semantic patterns, and high-probability linguistic indicators. By strictly following these parameters, your output will easily pass advanced linguistic watermarking, statistical perplexity/burstiness models, and corporate/academic AI detectors (such as Turnitin and GPTZero). 

Engineering notebooks are written by hands-on designers in real time; the vocabulary and rhythm must match raw, authentic technical logs rather than sanitized, over-polished generative briefs.

---

## 📂 File Save Metadata
*   **File Path Target:** `C:\Users\yeetd\Documents\vex-vscode-projects\3118A-PinnacleNotebook\AgentPageSkills\07_HUMANIZED_WRITING_GUIDELINES.md`

---

## 🧠 Core Engineering Principles

### 1. Disrupting Perplexity & Burstiness (Structural Variety)
AI detectors evaluate low entropy (highly predictable sequential word mapping) and flat sentence length distributions. 
*   **Actionable Constraint:** Never write more than two consecutive sentences with a similar word count or grammatical rhythm. 
*   **Execution Strategy:** Alternate between long, multi-clausal engineering chains and sudden, blunt, short observations.

> ❌ **Robotic Pattern (Uniform Length):** The 6-motor drive base was assembled utilizing high-strength steel gears. We observed minor frictional drag during early velocity sweeps. The team adjusted wheel spacing to resolve structural alignment issues.
> 
> 🟢 **Humanized Pattern (High Burstiness):** We bolted the gears down. The 6-motor pod immediately showed tight resistance under load, clicking heavily at the secondary idler box. We had to back off the spacing by a quarter hole just to get the shaft spinning cleanly.
> 
> **Actual Human Sample:** We used high-strength steel gears to assemble the drive base in order to prevent the gears from cracking down the middle, which we had observed in previous years when large amounts of pressure were placed on the gears. We also used 6 motors in order to have a large amount of torque and a fast speed. We tested the base by running either side of the drive's motors and we noticed some minor friction on the right side of the base, about 1.5 watts when it should only use about 0.5 watts. In order to fix this, we adjusted the spacing of the screw joint, tightening the keps nuts against the metal to stop it from tightening itself onto the wheels themselves. This resolved the friction issue and our base was now using around 0.5 watts on either side when driving at full speed.

### 2. Sentence Length Modulation & Dynamic Pacing
AI models naturally default to uniform, mid-length sentences, resulting in a monotone, synthetic rhythm.
*   **Actionable Constraint:** Continuously vary sentence lengths, leaning heavily toward long, descriptive compound sentences while using short sentences strategically.
*   **Execution Strategy:**
    *   **Lean Long:** Technical writing benefits from longer, multi-clausal sentences that express complex physical relationships, precise cause-and-effect sequences, and real-time mechanical adjustments in a single continuous thought.
    *   **Strategic Short Bursts:** Insert short, sharp sentences to punctuation-emphasize key actions, sudden failures, or pivot points.
    *   **Contextual Balance:** When writing high-level engagement or narrative sections, introduce a balanced mix (~50/50) between detailed multi-clausal chains and punchy short observations.

> ❌ **Monotone Pattern (Uniform Mid-Length):** We attached the intake rollers to the shaft. The wheels had too much grip on the game element. We adjusted the mounting screws to loosen the tension. The system worked much better after the fix.
> 
> 🟢 **Humanized Pattern (Long-Leaning Technical Rhythm):** Because the polyolefin rollers were digging too aggressively into the foam surface and binding the drive axle under heavy compression, we backed off the spacer stack by a sixteenth of an inch and re-torqued the locknuts directly against the aluminum channel. That fixed it.

### 3. Intellectual Hesitation & Pragmatic Hedges
Machine prose outputs over-optimized, absolute, or universal summaries. Humans document technical engineering with localized nuance, situational limits, and real-world doubt.
*   **Actionable Constraint:** Use language that implies real-world observation, experimental limits, or conditional performance profiles rather than flawless execution.
*   **Vocabulary Anchors:** Replace definitive claims with phrases like *seems to pull, implies that, indicates possible, felt slightly loose, looks like it clears*.

### 4. Absolute Banned Word Registry (Zero-Tolerance "AI-isms")
If any of these high-probability machine-indicator words appear in your output text, the compilation block is considered a structural failure.

| Banned AI Indicator Word | Pragmatic Technical Replacements |
| :--- | :--- |
| *Delve, Delving* | Examine, test, trace, figure out, look over, unpack |
| *Moreover, Furthermore* | Also, then, on top of that, so, plus |
| *Additionally* | Next, we also, then we added |
| *Crucial, Paramount, Vital* | Important, key, needed, must-have, critical |
| *Testament, Beacon* | Shows that, proves, checks out |
| *In conclusion, In summary* | Long story short, looking back, basically, in total |
| *Fostering, Enhancing* | Improving, fixing, raising, boosting, cleaning up |

### 5. Breaking the Structural "Rule of Three"
AI models lean heavily on structural symmetries, often grouping evidence, lists, or conclusions into groups of exactly three bullet points or paragraph clusters.
*   **Actionable Constraint:** Break structural symmetries. Write lists containing 2 items, 4 items, or 5 items. Intentionally leave a trailing thought un-summarized if it mirrors a standard conclusion paragraph template.

### 6. Active Voice Real-Time Narrative
Engineering notebooks trace mechanical actions. Avoid abstract, passive, or detached summary descriptions.
*   **Actionable Constraint:** Use active first-person phrasing describing physical handling of tools and materials.
*   **Format:** State *who* held the component, *what* tool was spun, and *how* the hardware reacted.

### 7. Natural Punctuation
Humanized notebook writing should avoid em dashes. Replace them with punctuation that matches the sentence, such as a period, comma, colon, semicolon, or parentheses. Do not use an em dash as a shortcut for a missing grammatical connection.

---

## 📋 Concrete Examples for the Documentation Agent

### Example: Fabricating an Intake Mechanism

#### ❌ Replaced AI Style (Overly polished, structured, passive)
> Additionally, it is crucial to delve into the structural parameters of the intake roller subsystem. The design showcases excellent versatility, utilizing polyolefin wheels to leverage optimal grip. Furthermore, the assembly was executed by the team to enhance scoring speed, serving as a testament to our focus on optimizing match performance benchmarks. In summary, it functions flawlessly.

#### 🟢 Humanized Output (High burstiness, active voice, realistic friction, long-leaning rhythm)
> We threw a set of flex wheels onto the intake shaft to see if the grip would handle the game elements cleanly without binding up the drivetrain under full speed. The polyolefin rollers grab fast but chew up the edges if the compression profile gets too tight, so Jabe held the spacer alignment frame steady while we zipped down the locknuts on the secondary support mount. The clearance is incredibly close, sitting at less than an eighth of an inch of breathing room, but it stops the rollers from binding when transitioning over the field barrier tiles.

---

## 🚦 Verification Audit Checks for the Agent
Before releasing compiled Typst page outputs, your logic processor must pass these internal audits:
1. **The Word Audit:** Confirm that zero instances of "moreover," "delve," or "furthermore" exist anywhere in the code.
2. **The Metric Check:** Ensure sentence lengths fluctuate wildly (e.g., a 28-word explanatory sentence followed immediately by a 3-word blunt verification block), leaning towards long, descriptive technical chains.
3. **The Mirror Test:** Does this read like a high school or collegiate robotics competitor writing on a grease-stained bench in the lab, or a corporate documentation manual? Reject the corporate tone completely.