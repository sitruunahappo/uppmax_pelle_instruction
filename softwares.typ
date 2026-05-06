= Softwares <softwares>

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
    #text(baseline: 4pt)[*Tip*]
    #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
      You can search a module with RegExp with the `-r` option as:
      
      `$ module -r spider <EXPRESSION>`
    ]
  ]

- To *load a module*, use `$ module add <MODULE_NAME>`

  #rect(fill: rgb("#d8dee9"), stroke: 1pt, width: 100%)[
    #text(baseline: 4pt)[*Note*]
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

