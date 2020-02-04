# fetch-all-github-repos-for-user

script to fetch all github repos for a given user

* [`fetch-all-github-repos-for-user.sh`](fetch-all-github-repos-for-user.sh) - script

## Prerequisites

* [jq](https://stedolan.github.io/jq/) - command-line JSON processor

## Install

install to `~/bin` via `make install`

## Usage

`fetch-all-github-repos-for-user.sh [GTIHUB USERNAME]`

e.g. `fetch-all-github-repos-for-user.sh pfeilbr`

> creates `[GTIHUB USERNAME]` directory relative to current and stores each repo beneath it

## TODO

* only fetches first 100 repos.  update to fetch all of them
* fetch all updates to an existing "local" on disk repo.
    > cleanest option maybe to delete the local repo directory and re-clone
    > downside is dropbox need to resync everything
