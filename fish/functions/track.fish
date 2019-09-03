function track --description 'sets up tracking to the remote branch'
    set current_branch (git branch ^/dev/null | grep \* | sed 's/* //')
    git branch --set-upstream-to=origin/$current_branch $current_branch
end
