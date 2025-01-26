function __cdf_clean_chpwd_recent_dirs --description 'Filter non-existent directories from __cdf_recent_dirs'
    set -l filterd

    for item in $__cdf_recent_dirs
        if test -d $item
            set -a filterd $item
        end
    end

    set __cdf_recent_dirs $filterd
end
function cdf --description 'cd to recent dir'
    __cdf_clean_chpwd_recent_dirs

    set --local selected_repo (printf "%s\n" $__cdf_recent_dirs | env FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS $FZF_ALT_C_OPTS" fzf)
    if test -z $selected_repo
        commandline -f repaint
        return
    end

    commandline --replace " cd $selected_repo"
    commandline -f repaint
    commandline -f execute
end
