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
  #text(baseline: 4pt)[*Note*]
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
  #text(baseline: 4pt)[*Warning*]
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

