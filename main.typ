#import "@preview/modern-resume:0.1.0": modern-resume, experience, experience-work, experience-edu, project, pill

#let text-size = (
  super-large: 24pt,
  large: 14pt,
  normal: 11pt,
  small: 9pt,
)

#let experience-simple(
  title: "",
  subtitle: "",
  description: "",
  date-from: "present",
  date-to: "present"
) = [
  #text(size: text-size.large)[*#title*]\
  #subtitle\
  #text(fill: rgb("#449399"))[#date-from - #date-to]\
    #if description != "" [
      #text(fill: rgb("#7C7C7C"))[#description]\
    ]
]

#show: modern-resume.with(
  author: "Juan Desimoni",
  job-title: "Software Developer / Mathematics PhD",
  avatar: image("foto.jpg"),
  contact-options: (
    email: link("mailto:desijuan89@gmail.com")[desijuan89\@gmail.com],
    location: "Brazil (moving back to Argentina in august 2025)",
    linkedin: link("https://www.linkedin.com/in/desijuan")[linkedin.com/in/desijuan],
    github: link("https://github.com/desijuan")[github.com/desijuan],
  ),
)

Software Developer with a PhD in Mathematics. I enjoy building lightweight,
efficient tools in Zig and C, with a focus on clear design and low-level
understanding. Interested in systems programming, blockchain, cryptography and
algorithmic challenges.

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
  title: "Software Developer",
  subtitle: [#link("https://codexutilities.com.br")[Codex Utilities - SP Brazil]],
  task-description: [
    - Backend software developer
    - Kotlin/Java Multiplatform App
    - Collaboration with engineers
  ],
  date-from: "2022",
  date-to: "2025",
)

#experience-simple(
  title: "Teaching Assistant",
  subtitle: "UBA & UFF",
  date-from: "2015",
  date-to: "2021",
)

== Languages

#(
  "Spanish (native)", "Portuguese (fluent)", "English (fluent)", "German (advanced)",
).map(str => pill(str)).join()


== Interests

#(
  "Music", "Dance", "Science", "River Plate"
).map(str => pill(str)).join()

#colbreak()

== Skills

#(
  "Zig", "C", "Kotlin", "Java", "Git", "Linux"
).map(str => pill(str, fill: true)).join()

== Projects

#project(
  title: [#link("https://github.com/desijuan/zlstatus")[*zlstatus*]],
  description: "Minimal, event-driven status monitor for dwm/dwl inspired by slstatus. Uses epoll to wait on multiple sources of events efficiently.",
)

#project(
  title: [#link("https://github.com/desijuan/bp")[*bp*]],
  description: "Dependency free parser library for the bencode protocol.",
)

#project(
  title: [#link("https://github.com/desijuan/bt")[*bt*]],
  description: "Command-line bittorrent client inspired by peerflix. Uses the parser library bp. This is a work in process.",
)

#project(
  title: [#link("https://github.com/desijuan/fem-poc")[*fem-poc*]],
  description: "Finite Elements Model of an Electric Distribution Woodpole. Only one dependency: OpenBLAS for the Cholesky decomposition of matrices.",
)

#project(
  title: [#link("https://github.com/desijuan/metronome")[*metronome*]],
  description: "Command-line metronome for Linux. Uses the Linux ALSA C-API (alsa/asoundlib.h) to play WAV sounds and sigaction (signal.h) for the timer.",
)

#project(
  title: [#link("https://github.com/desijuan/ledger")[*ledger*]],
  description: "Web app to track shared expenses between groups of people. Backend in Zig serves compiled SPA. Frontend in Elm. Only two dependencies: http.zig and SQLite3.",

)

#project(
  title: [#link("https://github.com/desijuan/how-long")[*how-long*]],
  description: "Minimal Command-line time tracker/calculator.",
)
