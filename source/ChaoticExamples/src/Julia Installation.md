# How to Install Julia on Ubuntu

## Introduction

In this guide, I’ll show you how to get started with Julia on Ubuntu 16.04 (or above).

## Installation

Open a new terminal and go to your Downloads folder:

    cd ~/Downloads

Use wget to retrieve the latest compressed Julia Linux Binaries:

    wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.2-linux-x86_64.tar.gz

Extract the .tar.gz:

    tar -xvzf julia-1.5.2-linux-x86_64.tar.gz

Copy the extracted folder to /opt:

    sudo cp -r julia-1.5.2 /opt/

Finally, create a symbolic link to julia inside the /usr/local/bin folder:

    sudo ln -s /opt/julia-1.5.2/bin/julia /usr/local/bin/julia

## Conclusion

Finally, you can test your installation by re-opening a terminal and typing:

    julia
