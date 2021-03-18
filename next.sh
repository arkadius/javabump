#!/usr/bin/env bash
git reset --hard $(git log @{u} --pretty=format:"%H" | grep -B 1 $(git rev-parse HEAD) | head -n 1)
