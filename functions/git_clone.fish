function git_clone --description "Clone a repo, swapping out the host followed by navigating into the created dir and setting the user.email. e.g. git_clone git@github.com/test.git work.github.com me@company.com"
    set -l OLD_URL $argv[1]
    set -l HOST $argv[2]
    set -l EMAIL $argv[3]

    set -l NEW_URL (string replace --regex '.*github.com' "git@$HOST" $OLD_URL) 
    git clone $NEW_URL

    set -l REPO_NAME (string split -r / $OLD_URL | grep '\.git' | string replace '.git' '')
    cd $REPO_NAME
    
    git config user.email $EMAIL
end
