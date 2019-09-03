function set_tab --description 'change the tab name'
    echo -ne "\033]0;"$argv[1]"\007"
end
