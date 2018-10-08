#!/bin/bash
sed -ie "s/{{GIT_COUNTER}}/`git rev-list --all --count`/" $1

