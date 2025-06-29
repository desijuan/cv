#import "@preview/modern-resume:0.1.0": modern-resume, text-size, experience-work, experience-edu, pill

#let accentColor = rgb("#449399")

#let experience-simple(
  title: "",
  subtitle: "",
  date-from: "present",
  date-to: "present"
) = [
  #text(size: text-size.large)[*#title*]\
  #subtitle\
  #text(fill: accentColor)[#date-from - #date-to]\
]

#let project(title: "", description: "") = [
  #text(size: text-size.large)[*#title*]\
  #description
]

#let bio = [
  Software Developer with a PhD in Mathematics. I enjoy building lightweight,
  efficient tools in Zig and C, with a focus on clear design and low-level
  understanding. Interested in systems programming, blockchain, cryptography and
  algorithmic challenges.
]

#show: modern-resume.with(
  author: "Juan Desimoni",
  job-title: "Software Developer / Mathematics PhD",
  // bio: "Mathematician with a deep passion for computers and software development",
  avatar: image("foto.jpg"),
  contact-options: (
    email: link("mailto:desijuan89@gmail.com")[desijuan89\@gmail.com],
    location: "Brazil (moving back to Argentina in august 2025)",
    linkedin: link("https://www.linkedin.com/in/desijuan")[linkedin.com/in/desijuan],
    github: link("https://github.com/desijuan")[github.com/desijuan],
  ),
)

#bio

== Education

#experience-simple(
  title: "PhD in Mathematics",
  subtitle: "Universidade Federal Fluminense (UFF) - RJ Brazil",
  date-from: "2018",
  date-to: "2023",
)

#experience-simple(
  title: "BSc & MSc in Mathematics",
  subtitle: "Universidad de Buenos Aires (UBA) - Argentina",
  date-from: "2011",
  date-to: "2018",
)

== Work experience

#experience-work(
  title: "Backend Software Developer",
  subtitle: [#link("https://codexutilities.com.br")[Codex Utilities - SP Brazil]],
  date-from: "10/2022",
  date-to: "8/2025",
  task-description: [
    - Developed features for a Kotlin/Java multiplatform backend system.
    - Collaborated with engineers to integrate backend with operational
      workflows.
    - Deployed 2 modules in production:
      - Pole Loading Analysis (mechanical stress calculation).
      - Electrical Analysis (network evaluation with OpenDSS).
  ],
)

#experience-simple(
  title: "Teaching Assistant",
  subtitle: "UBA & UFF",
  date-from: "2015",
  date-to: "2021",
  // task-description: [
  //   - Geometria Analítica e Cálculo Vetorial (UFF).
  //   - Pre-cálculo, Fundamentos de Matemática para Estatística (UFF).
  //   - Geometría Diferencial (UBA).
  //   - Taller de Cálculo Avanzado (UBA).
  //   - Análisis Matemático 2 (UBA).
  //   - Análisis Matemático para Biología (UBA).
  //   - Matemática 51 (CBC UBA).
  // ],
)

== Languages

#(
  "Spanish (native)", "Portuguese (fluent)", "English (fluent)", "German (advanced)",
).map(str => pill(str)).join()


== Interests

#(
  "Music", "Dance", "Science", "River Plate"
).map(str => pill(str)).join()

== Skills

#(
  "Zig", "C", "Kotlin", "Java", "Git", "Makefile", "Linux", "SQL", "REST APIs"
).map(str => pill(str, fill: true)).join()

== Projects

#project(
  title: link("https://github.com/desijuan/zlstatus")[zlstatus],
  description: [
    Minimal, event-driven status monitor for dwm/dwl inspired by slstatus. Uses
    epoll to wait on multiple sources of events efficiently.
  ],
)

#project(
  title: link("https://github.com/desijuan/bp")[bp],
  description: [
    Dependency free parser library for the bencode protocol.
  ],
)

#project(
  title: link("https://github.com/desijuan/bt")[bt],
  description: [
    Command-line bittorrent client inspired by peerflix. Uses the parser library
    bp. This is a work in process.
  ],
)

#project(
  title: link("https://github.com/desijuan/fem-poc")[fem-poc],
  description: [
    Finite Elements Model of an Electric Distribution Woodpole. Only one
    dependency: OpenBLAS for the Cholesky decomposition of matrices.
  ],
)

#project(
  title: link("https://github.com/desijuan/metronome")[metronome],
  description: [
    Command-line metronome for Linux. Uses the Linux ALSA C-API
    (alsa/asoundlib.h) to play WAV sounds and sigaction (signal.h) for the
    timer.
  ],
)

#project(
  title: link("https://github.com/desijuan/ledger")[ledger],
  description: [
    Web app to track shared expenses between groups of people. Backend in Zig
    serves compiled SPA. Frontend in Elm. Only two dependencies: http.zig and
    SQLite3.
  ],

)

#project(
  title: link("https://github.com/desijuan/how-long")[how-long],
  description: [
    Small command-line time tracker/calculator.
  ],
)
