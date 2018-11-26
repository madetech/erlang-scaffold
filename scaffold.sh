#!/bin/env bash

git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"

rebar3 new lib project

