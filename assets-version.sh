#!/bin/bash
sed -ie "s/{{GIT_COUNTER}}/`git rev-parse --verify HEAD`/" $1

