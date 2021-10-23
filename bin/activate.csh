# This file must be used with "source bin/activate.csh" *from csh*.
# You cannot run it directly.
# Created by Davide Di Blasi <davidedb@gmail.com>.

set newline='\
'

alias deactivate 'test $?_OLD_VIRTUAL_PATH != 0 && setenv PATH "$_OLD_VIRTUAL_PATH:q" && unset _OLD_VIRTUAL_PATH; rehash; test $?_OLD_VIRTUAL_PROMPT != 0 && set prompt="$_OLD_VIRTUAL_PROMPT:q" && unset _OLD_VIRTUAL_PROMPT; unsetenv VIRTUAL_ENV; test "\!:*" != "nondestructive" && unalias deactivate && unalias pydoc'

# Unset irrelevant variables.
deactivate nondestructive

setenv VIRTUAL_ENVV '/home/rachet/Documents/djangoProjects/todoAppDjangoHacktoberfest'


if ('' != "") then
    set env_name = ''
else
    set env_name = '('"$VIRTUAL_ENVV:t:q"') '
endif

if ( $?VIRTUAL_ENVV_DISABLE_PROMPT ) then
    if ( $VIRTUAL_ENVV_DISABLE_PROMPT == "" ) then
        set do_prompt_var = "11"
    else
        set do_prompt_var = "00"
    endif
else
    set do_prompt_var = "11"
endif

if ( $do_prompt_var == "11" ) then
    # Could be in a non-interactive environment,
    # in which case, $prompt is undefined and we wouldn't
    # care about the prompt anyway.
    if ( $?prompt ) then
        set _OLD_VIRTUAL_PROMPT="$prompt:q"
        if ( "$prompt:q" =~ *"$newline:q"* ) then
            :
        else
            set prompt = "$env_name:q$prompt:q"
        endif
    endif
endif

unset env_name
unset do_prompt_var

rehash
