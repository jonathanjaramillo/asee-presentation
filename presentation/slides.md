---
theme: default
highlighter: shiki
css: unocss
colorSchema: dark
title: 'Hybrid, Hands-on Courses in Robotics, Embedded Systems & IoT'
info: |
  ## Work-in-Progress
  Strategies for Hybrid, Hands-on Courses in Robotics, Embedded Systems, and IoT.
  A WIP case study from Cornell Systems Engineering.
class: text-center
transition: fade-out
lineNumbers: false
drawings:
  persist: false
mdc: true
vite:
  server:
    fs:
      strict: false
glowSeed: 229
---

# Strategies for Hybrid, Hands-on Courses

### Robotics, Embedded Systems & IoT

<div class="pt-6 opacity-80 text-lg">
A Work-in-Progress case study from <strong>Cornell Systems Engineering</strong>
</div>

<div class="pt-10 text-sm opacity-60">
ASEE Annual Conference · Work-in-Progress Session
</div>

<!--
~15 sec. Frame this clearly as a Work-in-Progress: we document implementation and early
observations, NOT proven efficacy. Set expectations now so the audience reads the rest
as a case study, not a controlled result.
-->

---
glowSeed: 100
---

# The Problem

Distance education is no longer an exception — it's structural.

<div class="grid grid-cols-3 gap-4 mt-8">

<div v-click border="2 solid teal-700" bg="teal-800/20" rounded-lg overflow-hidden>
<div bg="teal-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>📈</span>
<span font-bold>Enrollment shift</span>
</div>
<div px-4 py-4 text-sm text-center>
<div class="text-3xl font-bold text-teal-400 mb-2">18% → 45%</div>
Students enrolled <strong>exclusively online</strong> jumped between 2019 and 2020 <span class="opacity-60">(NSB 2024)</span>
</div>
</div>

<div v-click border="2 solid blue-700" bg="blue-800/20" rounded-lg overflow-hidden>
<div bg="blue-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>🏗️</span>
<span font-bold>Structural Changes</span>
</div>
<div px-4 py-3 text-sm>
The shift is <strong>structural</strong>, not just pandemic related. Working professionals want <strong>part-time, employer-funded</strong> degrees.
</div>
</div>

<div v-click border="2 solid orange-700" bg="orange-800/20" rounded-lg overflow-hidden>
<div bg="orange-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>🔧</span>
<span font-bold>The catch</span>
</div>
<div px-4 py-3 text-sm>
Hardware-intensive labs are the <em>hardest</em> thing to deliver remotely — they depend on <strong>direct physical manipulation</strong> and <strong>sensory feedback</strong>
</div>
</div>

</div>

<!--
~1 min. This is the "why care" slide. The doubling of online enrollment is the hook.
Emphasize that this is a lasting structural shift, so the lab-delivery problem isn't
going away when the pandemic recedes.
-->

---
glowSeed: 175
---

# Why Existing Solutions Fall Short

<div class="grid grid-cols-3 gap-4 mt-8">

<div v-click border="2 solid red-800" bg="red-800/20" rounded-lg overflow-hidden>
<div bg="red-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>🖥️</span>
<span font-bold>Simulations & remote-access labs</span>
</div>
<div px-4 py-3 text-sm>
Keep students at arm's length — a <strong>"black-box" effect</strong> that breaks the link to real cyber-physical behavior.
</div>
</div>

<div v-click border="2 solid amber-800" bg="amber-800/20" rounded-lg overflow-hidden>
<div bg="amber-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>📦</span>
<span font-bold>Take-home kits</span>
</div>
<div px-4 py-3 text-sm>
Preserve physical debugging, but introduce new costs: lost <strong>peer coordination</strong>, weaker <strong>oral communication</strong>, harder <strong>integrity verification</strong>.
</div>
</div>

<div v-click border="2 solid violet-800" bg="violet-800/20" rounded-lg overflow-hidden>
<div bg="violet-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>🤖</span>
<span font-bold>Generative AI</span>
</div>
<div px-4 py-3 text-sm>
Can produce working <strong>code and lab reports</strong> with <strong>no conceptual understanding</strong> — a new threat to authentic learning.
</div>
</div>

</div>

<div v-click class="mt-10 flex justify-center">
<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg px-6 py-3 text-lg>
This motivates our two interventions: <strong>standardized at-home kits</strong> + <strong>oral exams</strong>.
</div>
</div>

<!--
~1 min. Walk the three columns left to right. The punchline is the AI "new wrinkle,"
which sets up oral exams as the assessment response later in the talk.
-->

---
glowSeed: 123
---

# Research Questions

<div class="text-sm opacity-70 mb-6">These emerged from <em>building</em> the courses — the paper lays groundwork rather than answering them definitively.</div>

<v-clicks>

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex items-start gap-4 px-5 py-4 mb-4>
<div class="text-4xl font-bold text-teal-400">1</div>
<div class="text-xl pt-1">Do standardized <strong>"at-home" kits</strong> achieve technical and pedagogical <strong>parity</strong> between local and remote students?</div>
</div>

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex items-start gap-4 px-5 py-4 mb-4>
<div class="text-4xl font-bold text-teal-400">2</div>
<div class="text-xl pt-1">Do <strong>periodic oral assessments</strong> support engagement and integrity in the age of generative AI?</div>
</div>

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex items-start gap-4 px-5 py-4 mb-4>
<div class="text-4xl font-bold text-teal-400">3</div>
<div class="text-xl pt-1">Does the <strong>flipped format</strong> create a perceived increase in parity between on-campus and distance learners?</div>
</div>

</v-clicks>

<!--
~45 sec. Read them quickly. Reiterate: this is exploratory groundwork for a longitudinal
study, not a claim of proven efficacy.
-->

---
layout: two-cols
layoutClass: gap-8
glowSeed: 180
---

# The Two Courses

<v-clicks>

- **SYSEN 5411** — Introduction to Robotics
- **SYSEN 5412** — Creating Solutions with Embedded Systems

Both are **one-credit, hybrid, flipped** modules.

Distance learners receive **identical lab kits** — microcontrollers, motors, servos, robot chassis, breadboard components.

</v-clicks>

::right::

<div v-click class="mt-8" border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<div i-carbon:group text-teal-300 text-xl />
<span font-bold>The cohort: 44 students</span>
</div>
<div px-5 py-4>

<div class="grid grid-cols-2 gap-4 text-center">
<div border="2 solid teal-800" bg="teal-800/20" rounded-lg p-4>
<div class="text-4xl font-bold">27</div>
<div class="text-sm opacity-80">On-campus<br/>full-time M.Eng.</div>
</div>
<div border="2 solid amber-800" bg="amber-800/20" rounded-lg p-4>
<div class="text-4xl font-bold">17</div>
<div class="text-sm opacity-80">Distance learners<br/>working professionals</div>
</div>
</div>

<div class="mt-6 text-sm opacity-80">
This <strong>on-campus vs. distance</strong> contrast is the thread that pays off in the results.
</div>

</div>
</div>

<!--
~1 min. Plant the OC vs DL contrast deliberately — it's the setup for the engagement
surprise later. DL students are largely working professionals doing the M.Eng. part-time.
-->

---
glowSeed: 350
---

# Design Decision 1 — Flipped + Hybrid

<div class="grid grid-cols-2 gap-8 mt-6">

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<div i-carbon:flow text-blue-300 text-xl />
<span font-bold>How it works</span>
</div>
<div px-5 py-4>

- **Lectures:** asynchronous, pre-recorded video
- **Weekly synchronous sessions:** reserved for **demos and troubleshooting**
- Sessions **recorded** for remote students
- **Ed Discussion** for peer support, incentivized with participation points

</div>
</div>

<div v-click border="2 solid teal-800" bg="teal-800/20" rounded-lg overflow-hidden>
<div bg="teal-800/40" px-4 py-2 flex items-center gap-2>
<div i-carbon:idea text-teal-300 text-xl />
<span font-bold>Key insight</span>
</div>
<div px-5 py-4>

Pre-recording lectures **freed synchronous time** for the high-value, hands-on work that students said mattered most.

<div class="mt-4 text-sm opacity-80">
Flipped format received <strong>universally positive feedback</strong> in midterm and final evaluations.
</div>

</div>
</div>

</div>

<!--
~1 min. The mechanism that makes hybrid work: moving lecture out of synchronous time
lets the limited live hours go entirely to hands-on demonstration and debugging — the
thing remote students otherwise miss most.
-->

---
glowSeed: 12129
---

# Design Decision 2 — Hardware + Language

<div class="grid grid-cols-2 gap-8 mt-4">

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<div i-carbon:chart-bar text-teal-300 text-xl />
<span font-bold>Language familiarity</span>
</div>
<div px-5 py-4>

<img src="./images/programming_languages.png" class="w-full rounded" />

<div class="text-xs opacity-50 mt-3">Figure 2 — many students knew more than one language.</div>

</div>
</div>

<div v-click class="flex flex-col gap-4 justify-center">
<div border="2 solid violet-800" bg="violet-800/20" rounded-lg p-6 text-center>
<span class="text-5xl font-bold text-violet-400">43%</span>
<div class="text-sm opacity-80 mt-2">were hardware novices who had never programmed a microcontroller</div>
</div>
<div v-click border="2 solid teal-800" bg="teal-800/20" rounded-lg p-6 text-center>
<span class="text-5xl font-bold text-teal-400">93%</span>
<div class="text-sm opacity-80 mt-2">already knew Python — the key justification for MicroPython</div>
</div>
</div>

</div>

<!--
~1 min. The chart and the two stats tell the student-profile story before diving into the
hardware/language rationale on the next slide.
-->

---
glowSeed: 12130
---

# Design Decision 2 — Hardware + Language

Two linked choices, both driven by **parity**.

<div class="grid grid-cols-2 gap-8 mt-6 items-start">

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden self-start>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<div i-carbon:assembly-cluster text-blue-300 text-xl />
<span font-bold>Hardware — tool-less kits</span>
</div>
<div px-4 py-3 text-sm>

No soldering iron, no oscilloscope; strong online docs.

- 🤖 **XRP** (Experiential Robotics Platform) — web-based IDE
- 🔌 **SunFounder Pico** kit — MicroPython examples
- 🐍 **MicroPython** selected as the common language

</div>
</div>

<div class="flex flex-col gap-3 items-center" style="margin-top: -40px">
<img v-click src="./public/XRP_Robot.webp" class="w-1/2 object-contain rounded" />
<img v-click src="./public/sunfounder.jpg.webp" class="w-1/2 object-contain rounded" />
</div>

</div>

<!--
~1 min. The 93% Python number justifies MicroPython: reduce the syntax and tooling
hurdle so cognitive load goes to sensor integration and control loops, not memory
management or compilation.
-->

---
glowSeed: 182
---

# Assessment — Oral Exams + Workload

<div class="grid grid-cols-2 gap-8 mt-4">

<div v-click border="2 solid blue-800" bg="blue-800/20" rounded-lg overflow-hidden>
<div bg="blue-800/40" px-4 py-2 flex items-center gap-2>
<div i-carbon:user-speaker text-blue-300 text-xl />
<span font-bold>The oral exam</span>
</div>
<div px-5 py-4>

A **20-minute Zoom design review** after the planning phase of the final project. Three inquiries:

- **User interaction** — the envisioned UI/UX
- **System mapping** — use cases → requirements → state machine
- **Implementation strategy** — *why* polling vs. interrupts, *why* this sensor

<div class="mt-3 text-sm opacity-80">Both an <strong>AI-mitigation tool</strong> and a <strong>relational touchpoint</strong>.</div>

</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<div i-carbon:time text-amber-300 text-xl />
<span font-bold>Feedback regarding workload</span>
</div>
<div px-5 py-4>


<div class="mt-4" border="2 solid red-800" bg="red-800/20" rounded-lg px-4 py-3>
🔋 <strong>Hardware debugging challenges</strong><br/>
Students lost up to <strong>3+ hours</strong> debugging problems what ended up being simple problems (eg. dead AA batteries).
</div>

The **"two-hour rule"**: if a hardware issue persists, go to office hours.

<div class="mt-3 text-sm opacity-80"> Extended hardware debugging led to making the robotics <strong>final project optional</strong> to stay within workload requirements.</div>

</div>
</div>

</div>

<!--
~1.5 min. CORE SLIDE — give it room. Tell the battery brown-out story out loud; it's the
most quotable moment. Frame oral exams as the distinctive contribution: they test the
"why" that AI can't fake. Scalable via TAs; can compress to ~10 min (7 present + 3 Q&A).
-->

---
layout: center
class: text-center
glowSeed: 205
---

# Early Result — DL Engagement 

<div v-click class="text-2xl mt-4 mb-8">
Contrary to expectations, <span class="text-teal-400 font-bold">distance learners were <em>more</em> engaged</span> than on-campus students.
</div>

<div class="grid grid-cols-2 gap-8 max-w-4xl mx-auto text-left">

<div v-click border="2 solid amber-800" bg="amber-800/20" rounded-lg overflow-hidden>
<div bg="amber-800/40" px-4 py-2 flex items-center gap-2>
<span text-xl>📦</span>
<span font-bold>Distance learners</span>
</div>
<div px-4 py-3>
Treated the project as a creative <strong>"break"</strong> from professional duties — more ambitious and creative in their final projects.
</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg overflow-hidden>
<div bg="white/10" backdrop-blur px-4 py-2 flex items-center gap-2>
<span text-xl>🎓</span>
<span font-bold>On-campus students</span>
</div>
<div px-4 py-3>
Under heavy full-time loads, defaulted to <strong>minimum viable products</strong>.
</div>
</div>

</div>

<div v-click class="mt-8 text-lg">
Oral exams reliably surfaced students who'd skipped foundational labs —<br/>
<strong>near-perfect correlation</strong> between incomplete weekly work and weak design reviews.
</div>

<!--
~1.5 min. CORE SLIDE and the headline finding. This reframes the "distance-learner-as-
disadvantaged" assumption. Land it clearly. The correlation between missed labs and weak
oral performance is the evidence that oral exams reveal real gaps.
-->

---
layout: two-cols
layoutClass: gap-8
glowSeed: 125
---

# Early Result — AI Usage

From **Lab 1** self-reports:

<div class="mt-4" border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg px-5 py-4>
<img src="./images/AI_usage.png" class="w-full rounded" />
</div>

<div class="text-xs opacity-50 mt-2">Figure 4 — some students reported more than one use.</div>

::right::

<div class="mt-16" border="2 solid teal-800" bg="teal-800/20" rounded-lg overflow-hidden>
<div bg="teal-800/40" px-4 py-2 flex items-center gap-2>
<div i-carbon:idea text-teal-300 text-xl />
<span font-bold>Interpretation</span>
</div>
<div px-5 py-4>

Students used AI to get past **friction points** — *not* to replace learning.

<div class="mt-4">
Conceptual and code-<em>writing</em> uses were <strong>rare</strong>; debugging dominated active use.
</div>

<div class="mt-4 pt-4 border-t border-gray-500 border-opacity-30">
This strengthens the case for <strong>oral exams</strong>: let AI handle the <strong>"how,"</strong> while assessment tests the <strong>"why."</strong>
</div>

</div>
</div>

<!--
~1 min. The takeaway is the framing, not the exact percentages: AI as friction-reducer,
not learning-replacer. This dovetails directly back to the oral-exam argument.
-->

---
glowSeed: 310
---

# Future Work

<div class="text-sm opacity-70 mb-6">Signals the longitudinal study to come.</div>

<div class="grid grid-cols-2 gap-4" style="grid-auto-rows: 1fr">

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">🤖</div>
<div>Develop <strong>boilerplate code</strong> for students to cut low-level debugging and shift focus to integration.</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">📋</div>
<div><strong>Tiered oral-exam schedule</strong> — three 10 min oral checkpoints across the term, using predefined questions.</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">📊</div>
<div><strong>Systematic friction logging</strong> — categorize hardware vs. software debugging.</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">🔍</div>
<div>Classify AI use as <strong>"augmentative" vs. "bypass,"</strong> correlated with oral performance.</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">✅</div>
<div><strong>IRB approval</strong> for demographic analysis (gender, industry background).</div>
</div>

<div v-click border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg flex gap-3 items-start px-4 py-3>
<div class="text-2xl">🧑‍🏫</div>
<div>Test oral exams as an <strong>alternative to peer learning</strong> in asynchronous settings.</div>
</div>

</div>

<!--
~1 min. Brisk. The thread tying these together: turning this case study into a formal,
IRB-approved longitudinal study with quantitative friction and AI-use data.
-->

---
layout: center
class: text-center
glowSeed: 150
---

# Conclusion

<div class="grid grid-cols-3 gap-6 max-w-5xl mx-auto mt-8 text-left">

<div v-click border="2 solid teal-800" bg="teal-800/20" rounded-lg px-6 py-5>
<div class="text-3xl mb-2">⚖️</div>
<div class="font-bold mb-2">Parity needs pedagogy</div>
Identical hardware isn't enough — the framework around it is what creates parity.
</div>

<div v-click border="2 solid amber-800" bg="amber-800/20" rounded-lg px-6 py-5>
<div class="text-3xl mb-2">📦</div>
<div class="font-bold mb-2">Tool-less kits cut friction</div>
No soldering, no oscilloscope, strong docs → cognitive load goes to systems logic.
</div>

<div v-click border="2 solid violet-800" bg="violet-800/20" rounded-lg px-6 py-5>
<div class="text-3xl mb-2">🗣️</div>
<div class="font-bold mb-2">Oral exams = mentorship</div>
Turn assessment into authentic design review, resilient to AI shortcuts.
</div>

</div>

<div v-click class="mt-10 text-lg opacity-90">
A foundation for a fuller, longitudinal study on hands-on engineering education for the modern working professional.
</div>

<!--
~45 sec. Three clean takeaways. Close by positioning the work as groundwork. Don't
oversell — it's a WIP.
-->

---
layout: center
class: text-center
glowSeed: 229
---

# Thank You

### Questions & Discussion

<div class="pt-6 opacity-80">
Cornell Systems Engineering · SYSEN 5411 & 5412
</div>

<div class="pt-8 text-sm opacity-60">
Backup slides follow: cohort majors · topic-familiarity ranking
</div>

<!--
Contact info goes here. Slides 8 (oral exams + brown-out) and 9 (engagement surprise)
are the core — if running long, compress slides 2 and 3, not these. Keep backup charts
ready for detailed questions.
-->

---
glowSeed: 100
---

# Backup — Cohort Majors

<div class="text-sm opacity-70 mb-4">Figure 1 — Distribution of majors across SYSEN 5411 + 5412.</div>

<div class="mt-8 flex justify-center" border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg px-6 py-5>
<img src="./images/majors.png" class="w-2/5 rounded" />
</div>

<!--
Backup only. Pull up on demand for detailed questions about cohort composition.
-->

---
glowSeed: 100
---

# Backup — Topic Familiarity

<div class="text-sm opacity-70 mb-4">Figure 3 — Self-rated familiarity, 1–5 scale.</div>

<div class="flex gap-6 items-start mt-4">

<div border="2 solid white/5" bg="white/5" backdrop-blur-sm rounded-lg px-5 py-4 text-sm flex-1>

Questions asked:

- Experience with **hands-on hardware** projects (maker-space, labs)
- Comfort **reading circuit / wiring diagrams**
- Familiarity with **basic electronics** (resistors, LEDs, breadboards)
- Prior **programming experience**

</div>

<div class="w-1/3 shrink-0">
<img src="./images/topic_familiarity.png" class="w-full rounded" />
</div>

</div>

<!--
Backup only. Pull up on demand for detailed questions about incoming skill level.
-->
