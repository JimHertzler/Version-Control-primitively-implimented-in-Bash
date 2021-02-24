#!/bin/bash
set -euo pipefail

# /home/jim/Language/Sh/git.sh
# Wed, 29 Apr 2020 07:55:18 -0400
# Linux debian9-hpz600-2of3 4.9.0-12-amd64 #1 SMP Debian 4.9.210-1 (2020-01-20) x86_64 GNU/Linux
# History: 200429w: Add quotes to handle file-names with spaces.

for File in *
do
	test -f "$File" &&{
		test -d Git ||{
			mkdir -v Git
			test -d Git ||{
				printf "Fail:$LINENO: test -d Git ||, Will Exit 1.\n"
				exit 1
			}
		}
		Count=$((0))
		while test -f "Git/${Count}_$File"
		do
			cmp "$File" "Git/${Count}_$File" &&{
				continue 2
			}
			((++Count))
		done
		cp -vp "$File" "Git/${Count}_$File"
	}
done
