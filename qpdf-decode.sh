#!/bin/bash

# qpdf-decode: a script for calling qpdf with a password to decrypt a pdf.
# If the operation succeeds, the output will be a default new file adding a
# suffix "_decrypted" to the source file name. Be careful: if the output file
# already existes, it will be overwriten without warning!
#
# Parameters:
# 1. PASSWORD
# 2. file to be decrypted
# 3. (optional) file to save (default: the same name concatenating _decrypted)
#
# Copyright © 2023 Dalton Scavassa <https://daltux.net/>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
#

if [ -z "$1" ] ||  [[ "$@" == *"--help"* ]]; then
	echo Usage:
	echo "$0 <password> <file to decode> <optional: file to save (default *_decrypted)>"
	exit
fi

pass=$1
infile=$2

if [ -z "$pass" ] ; then
	echo ERROR: missing a password for decrypting the pdf file.
	exit 1
fi

if [ -z "$infile" ] ; then
	echo ERROR: missing the pdf file to be processed.
	exit 2
fi

outfile=${infile}_decrypted
outfile=${3:-$outfile}

if which qpdf >> /dev/null ; then
	qpdf --verbose --password="$pass" --decrypt "$infile" "$outfile"
else
	echo qpdf not found!
	exit 3
fi

