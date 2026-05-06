= Introduction <intro>

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Example: Tip & Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Blocks in normal colours are general tips or notes. Commands under these 
    blocks should be safe to run.
  ]  
]

#rect(fill: rgb("#d08770"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Example: Warning*]
  #rect(fill: rgb("#ebcb8b"), stroke: 1pt, width: 100%)[
    Blocks in red and yellow are marked as _warning_, which will include things
    that you might need to pay special attention to. These things might be 
    dangerous, regarding personal data, or information security.
  ]
]

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Command Formats*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    I will use `$` to indicate a command, unless it is embedded in the text, 
    which should be available for both Bash and PowerShell. If a command is 
    only valid on Windows, it will be `PS>` to indicate PowerShell.
  ]
]

== Working with Linux

/*
I feel it is important to notice that I am not intending to force people to 
follow this session, as everyone should choose whatever that make them feel the 
best. The aim of this session is to provide an alternative or a reference when 
you cannot use your favourite tools for some reasons and have to switch to 
these basic but powerful tools. 
*/

*Linux* is not a specific system, but a family of systems based on the Linux 
*kernel*. A specific system from the family is called a Linux *distribution*, 
or *distro* for short. The distro runs on Futurum is #link("https://ubuntu.com/")[Ubuntu], 
while for UPPMAX, it becomes #link("https://rockylinux.org/")[Rocky Linux].
Different distributions provide different features, but the concepts are shared.

/*
However, as a normal user, we don't and won't need to care about this. No matter 
how the distro change, they will all include the same set of software, allowing us 
to switch without any problems.
*/

When it comes to 'working with Linux', we usually mean to work using CLI 
specifically. 

=== Terminal, Console, Shell and CLI

The difference between a terminal and a console might not be so clear, as from 
the view of a user, what they see from their eyes is an input and an output, 
both human-readable. 

In the Linux world, in short, a *terminal* is a wrapper programme, and a *shell* 
can be run inside. For example, the _Windows Terminal_ application is a 
terminal, which allows the shell _PowerShell_ or _cmd_ running inside, while 
the shell can also run standalone.

#figure(
    image("figs/term_shell.png", width: 75%),
    caption: [Outputs of `$TERM` (terminal name) and \
              `$0` (current shell) from local and UPPMAX],
  ) <term_sh>

A *console* can be considered a special type of terminal. As you can imagine 
from a gaming console like #link("https://en.wikipedia.org/wiki/Nintendo_Entertainment_System")[Famicon],
it refers to something physical, and can communicate directly with the machine. 
So, under these definitions, a console is a piece of hardware physically 
connected to the host, while a terminal can connect to the host remotely #footnote[
These confusing and messy concepts date back to the time while people still 
using #link("https://en.wikipedia.org/wiki/Teleprinter")[teletype]. If you are 
interested in this topic, I suggest 
#link("https://www.linusakesson.net/programming/tty/")[this article] about TTYs, 
and #link("https://thevaluable.dev/guide-terminal-shell-console/")[the guide] 
for more general concepts about terminals and consoles.].

A *command-line interface* (*CLI*) provides a way to interact with software by 
text. Compared with a *graphical user interface* (*GUI*), it requires fewer 
system resources, and allows users to access utilities easier and faster. 
However, the advantage of efficiency highly relies on the experience of users. 
Most of the time, when we meet a new command, the manual and help page are 
necessary to understand the command and its options. 

@tab_cmd lists some of the commands that may useful for LT students. It is not 
meaningful to list all of them, as we don't need to be the sysadmin. Clicking 
the commands will lead you to their tldr help pages, where you can check some 
common usages.

#figure(
  table(
    columns: 3,
    align: left + horizon,
    [Common Utilities], [Handy Utilities], [Text Utilities],
    [#link("https://tldr.inbrowser.app/pages/common/cd")[`cd`]],
    [#link("https://tldr.inbrowser.app/pages/common/df")[`df`]],
    [#link("https://tldr.inbrowser.app/pages/common/wc")[`wc`]],

    [#link("https://tldr.inbrowser.app/pages/common/ls")[`ls`]],
    [#link("https://tldr.inbrowser.app/pages/common/du")[`du`]],
    [#link("https://tldr.inbrowser.app/pages/common/head")[`head`]],

    [#link("https://tldr.inbrowser.app/pages/common/cat")[`cat`]],
    [#link("https://tldr.inbrowser.app/pages/common/file")[`file`]],
    [#link("https://tldr.inbrowser.app/pages/common/tail")[`tail`]],

    [#link("https://tldr.inbrowser.app/pages/common/mkdir")[`mkdir`]],
    [#link("https://tldr.inbrowser.app/pages/common/kill")[`kill`]],

    [#link("https://tldr.inbrowser.app/pages/common/grep")[`grep`]],

    [#link("https://tldr.inbrowser.app/pages/common/rm")[`rm`]],
    [#link("https://tldr.inbrowser.app/pages/common/less")[`less`]],
    [#link("https://tldr.inbrowser.app/pages/common/sort")[`sort`]],

    [#link("https://tldr.inbrowser.app/pages/common/cp")[`cp`]],
    [#link("https://tldr.inbrowser.app/pages/common/tee")[`tee`]],
    [#link("https://tldr.inbrowser.app/pages/common/uniq")[`uniq`]],
    
    [#link("https://tldr.inbrowser.app/pages/common/mv")[`mv`]],
    [#link("https://tldr.inbrowser.app/pages/common/touch")[`touch`]],
    [#link("https://tldr.inbrowser.app/pages/common/cut")[`cut`]],
    
    [#link("https://tldr.inbrowser.app/pages/common/find")[`find`]],
    [#link("https://tldr.inbrowser.app/pages/common/pwd")[`pwd`]],
    [#link("https://tldr.inbrowser.app/pages/common/split")[`split`]],
  ),
  caption: [Some useful commands]
) <tab_cmd> 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Tip*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    If you want to know the usage of a command, you can always use `man` to read the 
    manual page, or search the command at #link("https://tldr.sh/")[tldr.sh] if you 
    feel it too long.
  ]
]

=== Users, Groups and Permission

In theory, you don't need to know this part, but as we share the same system, 
it is better to have such concepts. In short, a *group* is a collection of
*users* that share common *permissions* to files, directories, or resources. 

In UPPMAX system, this concept of groups is implied by the so-called *Projects*, 
which means that after you get permitted into a project, you should be added to 
the related group, allowing you to work in the project folder, but not other 
projects. You can join and manage projects at the 
#link("https://supr.naiss.se/project/")[SUPR Projects] page.

Generally, you can use `ls -l` to show files with extra info, including 
permissions, owner, size, and last-modified timestamp. 

#grid(
  columns: 2,
  gutter: 2pt,

  [#figure(
    image("figs/ls-l.png", width: 100%),
    caption: [Output of `ls -l`]
  ) <fig_ls-l>],

  [#figure(
    image("figs/ls-lah.png", width: 100%),
    caption: [Output of `ls -lah`]
  ) <fig_ls-lah>]
)

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Tip* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    If you want to list all files including those hidden, you can use `ls -a` ; \
    if you want to list files with extra info with human-readable sizes, use `ls -lh` ; \
    if you want to sort the listed files by last access time (default alphabetical), use `ls -t` ;\
    you can reverse the order by using `-r`.
  ]
]

Let's take a look to the output

```
-rw-r--r--  1 yifanh uppmax2025-2-505 3.8K Apr 19 20:26 requirement.txt
drwxr-sr-x  6 yifanh uppmax2025-2-505 4.0K Apr 18 19:08 .TTS_venv
```

We have the permissions first, which can be separated into four parts.
0. `r` = read (4), `w` = write (2), `x` = execution (1), (`s` is a special type 
   of `x`, not important for us);
1. The first character indicate the type. `-` means file and `d` means directory;
2. The next nine characters shows security:
  - The first three show the permissions for the owner 
  - The next three show the permissions for the group 
  - The last three show the permissions for other users (not including `root` 
    #footnote[The `root` user is generally immune from the restrictions. They 
    can access any file in the system, but no execution permission if not set.])

Then after that we have the owner `yifanh` and the group `uppmax2025-2-505`. 
Using the `requirement.txt` file as an example, all these information shows:
1. `x` is not set as a `txt` file usually is not executable;
2. The owner `yifanh` can read and write the file;
3. The user in the group `uppmax2025-2-505` can read the file (yes, you can 
   read other people's file in the same project)
4. For users not in the project, they can read the file also (yes, you probably 
   can try to access a random project and read the files inside)

Sometimes we don't want other people to access our files, then we need to 
change the permissions with `chmod`.

You might have noticed that I include some numbers for the permissions. If not,
it is $4$ for read, $2$ for write, and $1$ for execution. For each part of the 
permissions, you can add the numbers up to set the permissions you want. For 
example, the command

```
$ chmod 640 requirement.txt 
```

will set the permissions of the file to `rw- (4+2+0=6) r-- (4+0+0=4) --- (0+0+0=0)`, 
which removes the read permission for other users compared with the original 
$644$ permissions.

#rect(fill: rgb("#d08770"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Warning*]
  #rect(fill: rgb("#ebcb8b"), stroke: 1pt, width: 100%)[
    Avoid setting permissions to $777$ (`rwxrwxrwx`) even on you own computer. 
    As this basically gives full permissions to everyone.
  ]
]

=== Editors 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Unlike _Rackham_ and _Snowy_, VSCode is available in _Pelle_ according to 
    #link("https://docs.uppmax.uu.se/software/vscode_on_pelle/")[this guide] on 
    UPPMAX documentation, but this instruction will not cover this.]
]

Popular editors for CLI include *Vi/Vim*, *Emacs*, and *Nano*. 

#set heading(outlined: false)
==== Vi/Vim

One of the main characters of the editor war. Vim stands for #strong[V]i 
#strong[IM]proved, and you can also try #link("https://neovim.io/")[Neovim] or 
other Vi-like editor if you want some other features, but most of them share
the same basic operations.

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    - Under *Normal mode*, you can move around by pressing `hjkl` or `←↓↑→`.
    - Press `a` or `i` will switch the editor to *Edit mode*,
      where you can start typing. 
    - Press `Esc` in Edit mode will bring you back to Normal mode.
    - Save the file and quit the editor by pressing `:wq` in Normal mode 
    - Go to #link("https://vim.rtorr.com/")[Vim cheatsheet] for more!
  ]  
]

#figure(
  image("figs/nvim_in_terminal.png", width: 75%),
  caption: [Neovim in terminal]
) <fig_nvim>

==== Emacs

Emacs is another main character of the editor war. Usually Emacs has its own 
interface as @fig_emacs, but it can be run inside a terminal as @fig_emacs_term 
also. Although Emacs has commands also, its editing style will be more relied 
on shortcuts. 

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    - `C` means the `Control/Ctrl` key and `M` means the `Meta` key, which 
      becomes `Alt/Option` for common keyboards nowadays.
    - Type `M-x` to input command
    - Use `C-g` for aborting a command 
    - Quit Emacs with `C-x C-c`
    - GNU has a #link("https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf")[pdf cheatsheet] 
      for Emacs
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
Vim and Emacs, but some people like using it for small editing. 

#figure(
  image("figs/nano.png", width: 75%),
  caption: [Editing a file with Nano in terminal]
) <fig_nano>

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  #text(baseline: 4pt)[*Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Some people might feel these hints not obvious. These symbols in Nano mean: 
    - `M` is the `Meta` key as said above
    - The `^` means the `Control\Ctrl` key, so `^X` means you can exit Nano 
      by pressing `C-x`
    - Despit its simplicity, Nano does have a 
      #link("https://www.nano-editor.org/dist/latest/cheatsheet.html")[cheatsheet] 
      for all shortcuts
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

