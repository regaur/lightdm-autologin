echo "Running .xession as $(whoami)" >> $HOME/xession.log

xsessiondir="$HOME/xsession.d"
if [ -d "$xsessiondir" ]; then
    for script in $xsessiondir/*; do
        echo "Loading xsession script $script"
        if [ -x "$script" -a ! -d "$script" ]; then
            . "$script"
        fi
    done
fi

