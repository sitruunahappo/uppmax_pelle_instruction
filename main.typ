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

    author: "Johan Sjon, Yifan Hu, Xiaotian Luo",
    email: "",
    address: [],

    header: [],
    show-header-line: false,
)


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

#show raw.where(block: true): block.with(
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)

#pagebreak()
= Introduction

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

#pagebreak()
= Moving around 

== Login to Pelle

There are several ways to log in to _Pelle_.

=== Setting up TOTP 
#lorem(100)

=== SSH key <ssh-keys>

Using #link("https://docs.uppmax.uu.se/software/ssh_key_use_pelle/")[SSH keys]
is considered a more secure method for connection generally, as long as you can 
keep your keys safe. Specifically for UPPMAX, you can skip entering password 
and TOTP by using your SSH key.

#rect(fill: rgb("#d08770"), stroke: 1pt, width: 100%)[
  *Warning*
  #rect(fill: rgb("#ebcb8b"), stroke: 1pt, width: 100%)[
    The key generation processes below should be processed *on the client*, which 
    in this case, is *your own computer*. Even the server should *NOT* have your 
    private key.
  ]
]

#set heading(outlined: false)
==== Creating the key

The default options for `ssh-keygen` should be enough for normal users. However, 
it is recommended to use Ed25519 for generating keys, as the command below, 
unless you have a super old computer. I personally suggest setting a different 
filename for distinguish, and set a passphrase for unlock the key.

```
$ ssh-keygen -t ed25519 -C "<Comment on the key>"
```

#figure(
  image("figs/keygen.png", width: 75%),
  caption: [Generating a key located in `./test_ed25519`]
) <fig_keygen>

`ssh-keygen` will generate two files for you: one ends with `.pub` is the 
#strong[public key] and another one is the #strong[private key]. @fig_keygen
here is only for demostration, and the key had been revoked after finishing 
the instruction, but for you, *DO NOT LEAK YOUR PRIVATE KEY*.

==== Upload the key

We need to upload the public key to UPPMAX. The easiest way is to use 
`ssh-copy-id`. Replace `<PATH_OF_PUB_KEY>` to the actual path of your public key.

```
$ ssh-copy-id -i <PATH_OF_PUB_KEY> <USERNAME>@pelle.uppmax.uu.se 
```

For Windows, there is no `ssh-copy-id`, so one has to use a slightly weird 
method: read the contents of the public key, and pipe it to ssh to send it 
to server.

```
PS> cat <PUB_KEY> | ssh <USERNAME>@pelle.uppmax.uu.se "mkdir -p .ssh && tee .ssh/authorized_keys"
```

This command should work for Windows 10 and newer versions.

#figure(
  image("figs/uploadkey.png", width: 75%),
  caption: [Uploading the key to UPPMAX]
) <fig_keyupload>

==== Login with key

Now you can log in to UPPMAX by specifying your private key. Replace 
`<PATH_OF_PRIV_KEY>` and `<USERNAME>` to your private key path and your 
username for login.

#figure(
  [```
  $ ssh -i <PATH_OF_PRIV_KEY> <USERNAME>@pelle.uppmax.uu.se
  ```]
)

As @fig_ssh_key, will be prompted to input the passphrase of the key, but not the password 
and TOTP for UPPMAX.

#figure(
  image("figs/login_ssh.png", width: 75%),
  caption: [Using the key to log in UPPMAX]
) <fig_ssh_key>

==== SSH config

By adding the key to config file located in `.ssh/config`, one can login with 
the provided key by default.

#grid(
  columns: (45%, auto),
  gutter: 0pt,
  [```ssh_config
  Host *.uppmax.uu.se
    IdentityFile <PATH_OF_KEY>
  ```],

  [#figure(
    image("figs/config.png", width: 80%),
    caption: [SSH config example]
   ) <fig_conf>]
)

#set heading(outlined: true)
== Projects on UPPMAX
#figure(
  image("figs/proj.png", width: 75%),
  caption: [Projects page of SUPR],
)


#pagebreak()
= Files Transfer and Synchronisation <file-transfer>
== scp

In case you forget, you can always use scp for transferring files between the 
client and the server.

```
$ scp <SOURCE> <DESTINATION> 
```

If you want to transfer a folder, use `-r` option like what we normally do for 
`cp`.

```
$ scp -r <SOURCE> <DESTINATION> 
```

For example, you want to upload a file call `model.pth` to a folder called 
`my_models` under your UPPMAX home directory (So it is `~/my_models/`), then 
you want to move the folder back to the current directory of your local machine, 
you can do this on your machine:

  - To upload, do:

    ```
    $ scp my_model.pth <USERNAME>@pelle.uppmax.uu.se:my_models
    ```

  - To download, do (don't forget the dot in the end, which means current 
    directory):

    ```
    $ scp -r <USERNAME>@pelle.uppmax.uu.se:my_models .
    ```

== rsync


#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    Windows does NOT ship `rsync` by default, so you need to have
    either `WSL` or `MinGW` or `Cygwin` installed
  ]
]

#link("https://rsync.samba.org/")[`rsync`] is a utility for transferring and 
synchronising files like `scp`, but it provides more advanced features like 
excluding files, reduces latency and so on.

`rsync` can be used for transferring files like `rsync source target` as `scp`,
but more commonly it is used for synchronising, so the basic operations are 
more related to a directory like:

  - `$ rsync -a source_dir target_dir` for copying a directory, and

  - `$ rsync -a source_dir/ target_dir` for all contents in the directory.

#rect(fill: rgb("#d08770"), stroke: 1pt, width: 100%)[
  *Warning*
  #rect(fill: rgb("#ebcb8b"), stroke: 1pt, width: 100%)[
    *Pay attention to the final slash* when using `rsync`. 
    
      - Without the slash, the folder itself will be included for transferring
      - With the slash, the folder will not be included. Instead, you will 
        transfer all your files in the folder

    If you are not sure about what you typed, use options `-anv` for a dry-run 
    and verbosed output.
  ]
]

Using the same example above, we have:

  - To synchronise all contents from a local folder called `my_models/`
    to server, do:

    ```
    $ rsync -av my_models/ <USERNAME>@pelle.uppmax.uu.se:my_models
    ```

  - To do it in opposite direction but with the directory also:

    ```
    $ rsync -av <USERNAME>@pelle.uppmax.uu.se:my_models .
    ```

#pagebreak()
= Softwares

Usually for Linux, there should be a package manager available to install new 
softwares. However, as we don't have the permission for such tasks, we have to 
rely on other methods to install softwares. 

== Module System

// TODO: Rephrase paragraph

The module system used by UPPMAX is called 
#link("https://lmod.readthedocs.io/en/latest/index.html")[`Lmod`], but for 
convenience, it is wrapped as the `module` command in UPPMAX. You can find all 
available modules #link("https://docs.uppmax.uu.se/software/software-table/")[here] 
#footnote([This table list softwares on _Bianca_, but all of them should be 
included in _Pelle_ also.]).

- To *search a module*, use `$ module spider <MODULE_NAME>`
  
  #rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
    *Tip* \
    #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
      You can search a module with RegExp with the `-r` option as:
      
      `$ module -r spider <EXPRESSION>`
    ]
  ]

- To *load a module*, use `$ module add <MODULE_NAME>`

  #rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
    *Note* \
    #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
      The system distinguishes the upper cases and the lower cases, which means 
      that when you want to load a module called `FFmpeg`, it will complain 
      if you write `ffmepg`.
    ]
  ]

- To *unload all modules*, use `$ module purge`

- To *list loaded modules*, use `$ module list`

== Installing Binary

However, there are still chances that a module is unavailable on the system. 
While you can send an email to #link("mailto:support@uppmax.uu.se")[UPPMAX support],
you can download the binary and run it locally. 

== Compiling 

It is a rare situation, but if there is no binary file provided, you can try to
compile things yourself. 

There is no a common method to build a software, as there are so many 
toolchains for different usages and different languages. Thus, this session 
is more like a reminder that this way exists, and you can follow the provided
guide (if any) to build the software.

#figure(
  image("figs/compile.png", width: 75%),
  caption: [I once had to compile the software myself following the provided guide.],
)

#pagebreak()
= Python Virtual Environment
== python-venv
#lorem(100)

== conda
#lorem(100)

== uv <uv-for-venv>
#link("https://docs.astral.sh/uv/")[uv] is one of my favourite tool for
doing Python stuff, as most of the time I don't need modified packages
from conda-forge, and it is super fast. You can give it a try if conda
runs slow.

=== Installation

uv provides a standalone installer. You don't need a computing node
for the installation.

```
$ curl -LsSf https://astral.sh/uv/install.sh | sh
```

=== Using venv

The management of venv with uv is more similar to the original venv.
One can create a venv by running:

```
$ uv venv <VENV_NAME> --python <PY_VER>
```

The Python version is optional. If not set, it will use the latest
version. The venv can be activated with the original style:

```
$ source <VENV_NAME>/bin/activate
```

And deactivated with

```
$ deactivate
```

=== Packages

uv is not intended to be an exact clone of pip, but swapping out
`pip install` for `uv pip install` should work most of the time. For
example:

```
$ uv pip install torch datasets transformers
```

The `uv pip` inherits most options of the original `pip`. For example,
you can get a list of packages by running:

```
$ uv pip freeze
```

#pagebreak()
= Scheduling Jobs on Pelle
== Nodes 
#lorem(100)

== Interactive Session
#lorem(100)

== Slurm 
#lorem(100)

== Time Management for Jobs
#lorem(100)

#pagebreak()
= Storage Management <storage>
//default allocated size
// uquota
// cache
== Available Storages
#lorem(100)

== Storage Usage
#lorem(100)

== Cache 
#lorem(100)

#pagebreak()
= Using Jupyter Lab or Notebook
== UPPMAX Lab
#lorem(100)

== Running on an Interactive Session <jupyter-notebook-on-interactive-session>

If you just need a temporary space for testing some idea, I strongly
suggest using the so-called
#link("https://lab.uppmax.uu.se/")[UPPMAX Lab];#footnote[Currently no
official name for this service];. It provides some pre-built
environments for running temporary, ephemeral, non-persistent works, as
all data will be lost when the environment is deleted, and an
environment will expire after two days.

But if you somehow do require a full node to run notebook, here are the
steps.

=== Request an interacive session

Login as usual, and start an interactive session.

```
$ interactive -A <PROJ_NAME> -p <NODE> -t <TIME>
```

Pay attention to the name of node that allocated to you, as we will
use the name later. The name starts with 'p' followed by some digits.

=== Run Notebook in the interactive session

You can also specify a port if necessary by setting
`--port=<PORT_NUM>`.

```
$ jupyter notebook --no-browser --ip=0.0.0.0 
```

=== SSH forward

Now open another terminal, connect to UPPMAX with port forwarding
option added: `-L <PORT>:<HOST>:<HOSTPORT>`.

`<PORT>` and `<HOSTPORT>` is the one you set before for Jupyter Notebook, by 
default `8888`, and `<HOST>` is the name of node that mentioned before. For 
example, if your port is set to `2333` and node is `p201`, you should start a 
new connection by:

```
$ ssh -L 2333:p201:2333 <USERNAME>@pelle.uppmax.uu.se
```

Then you can click the link with the address `127.0.0.1` from Jupyter
to open Notebook from your local browser.

#rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
  *Note* \
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    You should *NOT* terminate any connections until you finish using Notebook.
  ]
]

= Git


