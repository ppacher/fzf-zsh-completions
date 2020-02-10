#!/usr/bin/env zsh

_fzf_complete_make() {
    _fzf_complete_make-target '' $@
}

_fzf_complete_make-target() {
    local fzf_options=$1
    shift

    _fzf_complete "--ansi --tiebreak=index $fzf_options" $@ < <(grep -E '^[a-zA-Z_-]+:.*?$$' Makefile | uniq | awk -F ':' '{ print $1 }' 2> /dev/null)
}