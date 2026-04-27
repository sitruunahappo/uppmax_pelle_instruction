= Python Virtual Environment <venv>
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

