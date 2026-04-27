= Introduction <intro>

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Example: Tip & Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Blocks in normal colours are general tips or notes. Commands under these 
    blocks should be safe to run.
  ]  
]

#rect(fill: rgb("#d08770"), stroke: 1pt, width: 100%)[
  *Example: Warning*
  #rect(fill: rgb("#ebcb8b"), stroke: 1pt, width: 100%)[
    Blocks in red and yellow are marked as _warning_, which will include things
    that you might need to pay special attention to. These things might be 
    dangerous, regarding to data, or information security.
  ]
]

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Command Formats* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    For the main text, I will use `$` to indicate a command for Linux, and 
    `PS>` for a command for Windows (PS means PowerShell).
  ]  
]

== Working with Linux

I feel it is important to notice that I am not intending to force people to 
follow this session, as everyone should choose whatever that make them feel the 
best. The aim of this session is to provide an alternative or a reference when 
you cannot use your favourite tools for some reasons and have to switch to 
these basic but powerful tools. 


*Linux* is not a specific system, but a family of systems based on the Linux 
kernel. A specific system from the family is called a *Linux distribution*, or 
*distro* for short. The distro runs on Futurum is #link("https://ubuntu.com/")[Ubuntu], 
while for UPPMAX, it becomes #link("https://rockylinux.org/")[Rocky Linux]. 
Different distributions provide different features.

However, as a normal user, we don't and won't need to care about this. No matter 
how they change, they will all include the same set of softwares, allowing us 
to switch without any problems.

=== Common Commands
It is not meaningful to list all of them, as we don't need to be the admin for 
the system. @tab_cmd lists some of the useful commands for LT students, and 
clicking the commands will lead you to their tldr pages for the usages.

#figure(
  table(
    columns: 3,
    align: left + horizon,
    [Common Utilities], [Handy Utilities], [Text Utilities],
    [#link("https://tldr.inbrowser.app/pages/common/cd")[cd]],
    [#link("https://tldr.inbrowser.app/pages/common/df")[df]],
    [#link("https://tldr.inbrowser.app/pages/common/wc")[wc]],

    [#link("https://tldr.inbrowser.app/pages/common/ls")[ls]],
    [#link("https://tldr.inbrowser.app/pages/common/du")[du]],
    [#link("https://tldr.inbrowser.app/pages/common/head")[head]],

    [#link("https://tldr.inbrowser.app/pages/common/cat")[cat]],
    [#link("https://tldr.inbrowser.app/pages/common/file")[file]],
    [#link("https://tldr.inbrowser.app/pages/common/tail")[tail]],

    [#link("https://tldr.inbrowser.app/pages/common/mkdir")[mkdir]],
    [#link("https://tldr.inbrowser.app/pages/common/kill")[kill]],

    [#link("https://tldr.inbrowser.app/pages/common/grep")[grep]],

    [#link("https://tldr.inbrowser.app/pages/common/rm")[rm]],
    [#link("https://tldr.inbrowser.app/pages/common/less")[less]],
    [#link("https://tldr.inbrowser.app/pages/common/sort")[sort]],

    [#link("https://tldr.inbrowser.app/pages/common/cp")[cp]],
    [#link("https://tldr.inbrowser.app/pages/common/tee")[tee]],
    [#link("https://tldr.inbrowser.app/pages/common/uniq")[uniq]],
    
    [#link("https://tldr.inbrowser.app/pages/common/mv")[mv]],
    [#link("https://tldr.inbrowser.app/pages/common/touch")[touch]],
    [#link("https://tldr.inbrowser.app/pages/common/cut")[cut]],
    
    [#link("https://tldr.inbrowser.app/pages/common/find")[find]],
    [#link("https://tldr.inbrowser.app/pages/common/pwd")[pwd]],
    [#link("https://tldr.inbrowser.app/pages/common/split")[split]],
  ),
  caption: [Some useful commands]
) <tab_cmd> 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Tip* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    If you want to know the usage of a command, you can always use `man` to read the 
    manual page, or search the command at #link("https://tldr.sh/")[tldr.sh] if you 
    feel it too long.
  ]
]

=== Users, Groups and Permission

TBD

=== Editors 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Unfortunately, it is impossible for me to provide an instruction for using 
    VSCode in _Pelle_ as I am not using it. However, unlike _Rackham_ and 
    _Snowy_, VSCode is available for coding in _Pelle_ according to 
    #link("https://docs.uppmax.uu.se/software/vscode_on_pelle/")[this guide] on 
    UPPMAX documentation.]
]
Popular editors for CLI include *Vi/Vim*, *Emacs*, and *Nano*. 

#set heading(outlined: false)
==== Vi/Vim

One of the main characters of the editor war. Vim stands for #strong[V]i 
#strong[IM]proved, and you can also try #link("https://neovim.io/")[Neovim] or 
other Vi-like editor if you want some other features, but most of them share
the same basic operations.

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    - Under *Normal mode*, you can move around by pressing `hjkl` or `←↓↑→`.
    - Press `a` or `i` will switch the editor to *Edit mode*,
      where you can start typing. 
    - Press `Esc` in Edit mode will bring you back to Normal mode.
    - Quit the editor by pressing `:wq` in Normal mode 
  ]  
]

#figure(
  image("figs/nvim_in_terminal.png", width: 75%),
  caption: [Editing a file with Neovim in terminal]
) <fig_nvim>

==== Emacs

Emacs is another main character of the editor war. Usually Emacs has its own 
interface as @fig_emacs, but it can be run inside a terminal as @fig_emacs_term 
also. Although Emacs has commands also, its editing style will be more relied 
on shortcuts. 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    - `C` means the `Control/Ctrl` key and `M` means the `Meta` key, which 
      becomes `Alt/Option` for common keyboards nowadays.
    - Type `M-x` to input command
    - Use `C-g` for aborting a command 
    - Quit Emacs with `C-x C-c`
  ]  
]

#grid(
  columns: 2,
  gutter: 2pt,

  [#figure(
    image("figs/emacs.png", width: 100%),
    caption: [Emacs with its default window]
  ) <fig_emacs>],

  [#figure(
    image("figs/emacs_term.png", width: 97%),
    caption: [Emacs running inside a terminal]
  ) <fig_emacs_term>]
)

==== Nano

Nano is a light-weight editor originated from *Pico*, which is still available 
on macOS. It is considered easier to use as it prints some common shortcuts by 
default. Its light-weight design determines that it will not be as powerful as 
Vim and Emacs, but still for some people, if they have some ideas or just two 
lines of code to write, instead of waiting Vi or Emacs, they will open Nano to 
start. 

#figure(
  image("figs/nano.png", width: 75%),
  caption: [Editing a file with Nano in terminal]
) <fig_nano>

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Some people might feel these hints not obvious. These symbols in Nano mean: 
    - `M` is the `Meta` key as said above
    - The `^` means the `Control\Ctrl` key, so `^X` means you can exit Nano 
      by pressing `C-x`
  ]  
]

#set heading(outlined: true)
== UPPMAX
Although _Pelle_ is the only available cluster to LT students, it is still 
worth to mention that some concepts from the old handbook, like the chaper
about memory, can still be applied dispite the design differences between Pelle 
and _Rackham_/_Snowy_. They are general enough that can be applied to Futurum, and 
even to your future works.

As for UPPMAX itself, just a reminder, don't forget the 
#link("https://docs.uppmax.uu.se/")[UPPMAX documentation] for guides for all 
functions of UPPMAX, and the 
#link("https://docs.uppmax.uu.se/cluster_guides/system_usage/system_usage.html")[system usage chart]
shows the current system load for each cluster. 

== The new cluster: Pelle
=== What's New
// What are the differences between Pelle and Rackham/Snowy
As we all know, the old clusters, _Rackham_ and _Snowy_, were 
#link("https://status.uppmax.uu.se/2026-01-21/february-maintenance/")[retired]
earlier this year, so the old days, when we would usually log in to _Rackham_
and send heavy or long-time job to _Snowy_, were gone.



For students from Stockholm, besides UPPMAX, you may also try 
#link("https://www.pdc.kth.se/hpc-services/computing-systems/dardel-hpc-system")[_Dardel_],
which is a similar system maintained by KTH. However, _Dardel_ has a slightly 
different design, so it would be better to refer to 
#link("https://support.pdc.kth.se/doc/site_map/")[their documentation] for more 
specific information.


=== Hardwares

As mentioned above, the _Haswell_ nodes are from the old _Snowy_. It is 
suggested to use them as a beckup when all other nodes are occupied 
#footnote([But sometimes even nodes on _Haswell_ woule be all occupied also.]). 

- CPUs
  - AMD EPYC 9454P 48-Core Processor 2.75 GHz
  - AMD EPYC 9124 16-Core Processor 3 GHz
  - (Haswell) Intel Xeon E5-2630 v3 2.4 GHz

- GPUs
  - Nvidia L40s (48GB)
  - Nvidia H100 (94GB)
  - (Haswell) Nvidia T4

- Memory + Scratch #footnote([Scratch is a temperary storage which will be 
  revoked after your job gets done. We will talk about this in @storage.])
  - (CPU Node) 768 GiB + 1.7 TiB
  - (Fat Node) 2 TiB + 6.9 TiB
  - (Fat Node) 3 TiB + 6.9 TiB
  - (GPU Node) 384 GiB + 6.9 TiB
  - (Haswell) 256 GiB + 1.8 TiB

