#!/usr/bin/env zsh

_fzf_complete_yarn() {
    if [[ $@ = 'yarn ' ]] || [[ $@ = 'yarn run ' ]]; then
        _fzf_complete_npm-run '' $@
        return
    fi

    _fzf_path_completion "$prefix" $@
}
