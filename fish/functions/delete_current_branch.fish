function delete_current_branch --description 'delete current branch and go back to master'
    set current_branch (git branch ^/dev/null | grep \* | sed 's/* //')
    git checkout master
    git pull
    git branch -D $current_branch
end
