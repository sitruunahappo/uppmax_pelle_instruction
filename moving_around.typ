= Moving around <moving_around>

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


