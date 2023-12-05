
# qPDF Decode

Shell scripts for easier decrypting PDF files with a password using
[QPDF](https://qpdf.sourceforge.io/).

## Dependencies

- **[QPDF](https://qpdf.sourceforge.io/)** (tested on version 11.6.3)
- A POSIX-compliant Shell (`/bin/sh`)
	- tested on [Debian GNU/Linux](https://debian.org) and Ubuntu with:
		- [`dash`](https://manpages.debian.org/testing/dash/dash.1.en.html) 0.5.12, 0.5.8
		- [`posh`](https://manpages.debian.org/testing/posh/posh.1.en.html) 0.14.1
		- [`busybox sh`](http://www.busybox.net) 1.36.1
- For the graphic user interface:
	- [YAD](https://github.com/v1cont/yad)
		- tested on 0.40.0 from Debian, Xfce 4.18, GTK+ 3.24.38
		- tested on 0.38.2 from Ubuntu 18.04

## Copyright, licensing and disclaimer

[<img align="right" alt="GPLv3 - Free Software - Free as in Freedom"
title="GNU General Public License, version 3"
src="https://www.gnu.org/graphics/gplv3-with-text-136x68.png">](LICENSE.md)

Copyright © 2023 [Daltux](https://daltux.net)

This program is Free Software: you can redistribute it and/or modify
it under the terms of the [GNU General Public License](LICENSE.md) as
published by the [Free Software Foundation](https://fsf.org), either
version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
[GNU General Public License](LICENSE.md) for more details.

## Acknowledgements

- [QPDF](https://qpdf.sourceforge.io/) command-line tool used here for fast [PDF decryption](https://qpdf.readthedocs.io/en/stable/cli.html#option-decrypt)
- [Neovim](https://neovim.io/) CLI text editor
- [Geany](https://geany.org/) IDE including a real-time Markdown preview [plugin](http://plugins.geany.org)
- [ShellCheck](https://shellcheck.net/) script static analysis tool
- [Papirus](https://git.io/papirus-icon-theme) SVG icon theme (GPLv3) providing elements mixed in `qpdf-decode-gui` icon
- [Inkscape](https://inkscape.org/) SVG editor
- [Debian](https://debian.org/) [GNU](https://gnu.org)/[Linux](https://kernel.org/linux.html) operating system
