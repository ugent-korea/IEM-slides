#!/bin/bash

set -euxo pipefail

rm -rf jvkersch.github.io
git clone https://github.com/jvkersch/jvkersch.github.io
quarto render --output-dir jvkersch.github.io/course/math-0/
cd jvkersch.github.io && git add course/math-0 && git commit -am "Automatic upload" && git push origin main
