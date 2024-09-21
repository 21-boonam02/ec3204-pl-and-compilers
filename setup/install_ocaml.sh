#!/bin/bash

apt-get update && apt-get upgrade -y
apt-get install -y --no-install-recommends sudo wget gcc build-essential curl unzip bubblewrap ocaml-findlib vim libgmp-dev m4 pkg-config
yes '' | bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
opam init -y
eval $(opam env --switch=default)
opam switch create 5.1.1
eval $(opam env --switch=5.1.1)
opam install -y conf-m4.1 ocamlfind ocamlbuild zarith batteries
eval $(opam env)
