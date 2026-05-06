= Using Jupyter Lab or Notebook <notebook>

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
  #text(baseline: 4pt)[*Note*]
  #rect(fill: rgb("#eceff4"), stroke: 1pt, width: 100%)[
    You should *NOT* terminate any connections until you finish using Notebook.
  ]
]
