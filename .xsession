set -eu
log=$HOME/xsession.log

echo "Running .xsession as $(whoami)" >> $log
xsessiondir="$HOME/xsession.d"
if [ -d "$xsessiondir" ]; then
    for script in $xsessiondir/*; do
        echo "Loading xsession script $script" >> $log
        if [ -x "$script" -a ! -d "$script" ]; then
            . "$script" 2>&1 >> $log
        fi
    done
fi

