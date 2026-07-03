#import "@preview/grape-suite:4.0.0": seminar-paper

#show: seminar-paper.project.with(
    title: [UPPMAX Instruction],
    subtitle: [for Language Technology Students],

    university: [Uppsala Universitet],
    faculty: [Department of Linguistics and Philology], 
    institute: [],
    instructor: [],
    seminar: [],

    submit-to: [],
    submit-by: [],

    semester: [],

    author: "",
    email: "",
    address: [],

    header: [],
    show-header-line: false,
    show-declaration-of-independent-work: false,
)

#show link: underline

#set heading(numbering: none)

= Acknowledgement
#linebreak()
TBD
/*
Last year almost at this time, Hoang and Pavlo completed an UPPMAX handbook for the 
Language Technology students, which, for the last one year, have contributed a lot for 
making students using UPPMAX easier. 

The handbook was written when the cluster _Rackham_ and _Snowy_ were still in use. Within 
a year, the new cluster, called _Pelle_, was deployed, and the old clusters had been 
retired since then. Then, as the structure of the new cluster changes 
*/

#set heading(numbering: "1.")

#set par(
  first-line-indent: 0em,
  spacing: 1.25em,
  leading: 0.7em,
)
#show raw.where(block: false): set text(fill: rgb("#5e81ac"))
#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)

#pagebreak()
#include "introduction.typ"

#pagebreak()
#include "moving_around.typ"

#pagebreak()
#include "file_transfer.typ"

#pagebreak()
#include "softwares.typ"

#pagebreak()
#include "venv.typ"

#pagebreak()
#include "slurm.typ"

#pagebreak()
#include "storage.typ"

#pagebreak()
#include "jupyter.typ"

#pagebreak()
#include "git.typ"

