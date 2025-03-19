---
title: Lightweight VSCode Setup For Beginners
date: 2025-02-01
---

Visual Studio Code (VS Code) is one of the popular most text editor due to its
extensions support, making it the Swiss army knife of graphical text editors
that almost have the power of IDEs without being bloated or overkill for a small
project (Neovim wins that one for terminal text editors). Due to VS Code being
an Electron app and installing a lot of extensions, VS Code can be very slow.
But there are ways to make it very lightweight, so here is how I set up VS Code.

Note: VS Code
can be unresponsive when editing JSON files. When this happens, it's great sign
that you need to recreate your VS Code setup.

## Settings and Profiles

Once you have installed VS Code and gotten familiar with the user environment,
do not install any extensions yet. Instead, edit your default settings first as
[VS Code supports profiles in February 2023][1], this allows you to use your
default settings across different workflows without individually adding each
setting manually. Not to mention the main feature of profiles is using
activating extensions based on workflow, VS Code already does this, but now you
can separate your extensions based on language like JavaScript, Python, Ruby,
etc.

*[IDEs]: Integrated Development Environments

[1]: https://code.visualstudio.com/updates/v1_76
