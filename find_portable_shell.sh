#!/bin/sh

################################################################################
#                                                                              #
#    This script is intended to find a shell which is portable with sh         #
#    and supporting function.                                                  #
#                                                                              #
################################################################################

# Make zsh compatible with sh
if test -n "$ZSH_VERSION"; then
    emulate sh
    NULLCMD=:
fi

# Make bash POSIX compliant
test -n "$BASH_VERSION" && set -o posix

#
# Find function-available shell.
# Note that sh does NOT support function and 'function' keyword,
# thus we use function without keyword 'function'.
# For example, we may define a function foo () like below:
#
#     foo () { exit 0; }
#
# Most shells support function
#

# Find default shell. If not found, use /bin/sh
SHELL="${SHELL-/bin/sh}"

if test x"$1" = x--re-executed; then
    # A shell which supports function was found.
    # Remove option and continue
    shift
elif "$SHELL" -c 'foo () { exit 0; } foo' 2>/dev/null; then
    # The current shell already supports function
    :
else
    # Try alternative shells which support function
    for cmd in sh bash ash bsh ksh zsh sh5; do
        echo "cmd: $cmd"
        set IFS=:
        X="$PATH:/bin:/usr/bin:/usr/afsws/bin:/usr/ucb"
        for dir in echo "$X"; do
            ALT_SHELL="$dir/$cmd"
            echo "alt shell: $ALT_SHELL"

            if test -f "$ALT_SHELL" &&
               "$ALT_SHELL" -c 'foo () { exit 0; } foo' 2>/dev/null; then
                # Re-execute alternative shell
                SHELL="$ALT_SHELL"
                ##exec "$ALT_SHELL" "$0" --re-executed ${1+"$"}
                exec "$SHELL" --re-executed
            fi
        done
    done

    echo "Unable to locate a portable shell with function support" >&2
    exit 1
fi

#
# Test if the shell support function
#
foo () {
    echo "$SHELL: I am compatible with sh and support function!"
}

foo
exit 0
