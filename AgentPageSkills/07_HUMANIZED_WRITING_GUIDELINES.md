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
>  **Humanized Pattern (High Burstiness):** We bolted the gears down. The 6-motor pod immediately showed tight resistance under load, clicking heavily at the secondary idler box. We had to back off the spacing by a quarter hole just to get the shaft spinning cleanly.
> **Actual Human Sample**: We tightened/bolted the gears down. The 6-motor pod had tight resistance under load. It seemingly clicked and skipped heavily at the secondary idler box. To fix this, we had to slightly change the spacing by a quarter hole just to get the shaft spinning cleanly.

### 2. Intellectual Hesitation & Pragmatic Hedges
Machine prose outputs over-optimized, absolute, or universal summaries. Humans document technical engineering with localized nuance, situational limits, and real-world doubt.
*   **Actionable Constraint:** Use language that implies real-world observation, experimental limits, or conditional performance profiles rather than flawless execution.
*   **Vocabulary Anchors:** Replace definitive claims with phrases like *seems to pull, implies that, indicates possible, felt slightly loose, looks like it clears*.

### 3. Absolute Banned Word Registry (Zero-Tolerance "AI-isms")
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

### 4. Breaking the Structural "Rule of Three"
AI models lean heavily on structural symmetries, often grouping evidence, lists, or conclusions into groups of exactly three bullet points or paragraph clusters.
*   **Actionable Constraint:** Break structural symmetries. Write lists containing 2 items, 4 items, or 5 items. Intentionally leave a trailing thought un-summarized if it mirrors a standard conclusion paragraph template.

### 5. Active Voice Real-Time Narrative
Engineering notebooks trace mechanical actions. Avoid abstract, passive, or detached summary descriptions.
*   **Actionable Constraint:** Use active first-person phrasing describing physical handling of tools and materials.
*   **Format:** State *who* held the component, *what* tool was spun, and *how* the hardware reacted.

### 6. Natural Punctuation
Humanized notebook writing should avoid em dashes. Replace them with punctuation that matches the sentence, such as a period, comma, colon, semicolon, or parentheses. Do not use an em dash as a shortcut for a missing grammatical connection.

---

## 📋 Concrete Examples for the Documentation Agent

### Example: Fabricating an Intake Mechanism

#### ❌ Replaced AI Style (Overly polished, structured, passive)
> Additionally, it is crucial to delve into the structural parameters of the intake roller subsystem. The design showcases excellent versatility, utilizing polyolefin wheels to leverage optimal grip. Furthermore, the assembly was executed by the team to enhance scoring speed, serving as a testament to our focus on optimizing match performance benchmarks. In summary, it functions flawlessly.

####  Humanized Output (High burstiness, active voice, realistic friction)
> We threw a set of flex wheels onto the intake shaft to see if the grip would handle the game elements cleanly. The polyolefin rollers grab fast but chew up the edges if the compression profile gets too tight. Jabe held the spacer alignment frame steady while we zipped down the locknuts on the secondary support mount. The clearance is incredibly close, less than an eighth of an inch of breathing room, but it stops the rollers from binding when transitioning over the field barrier tiles.

---

## 🚦 Verification Audit Checks for the Agent
Before releasing compiled Typst page outputs, your logic processor must pass these internal audits:
1. **The Word Audit:** Confirm that zero instances of "moreover," "delve," or "furthermore" exist anywhere in the code.
2. **The Metric Check:** Ensure sentence lengths fluctuate wildly (e.g., a 24-word explanatory sentence followed immediately by a 4-word blunt verification block).
3. **The Mirror Test:** Does this read like a high school or collegiate robotics competitor writing on a grease-stained bench in the lab, or a corporate documentation manual? Reject the corporate tone completely.
