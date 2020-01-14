function fish_prompt
    echo -n -s (set_color yellow)$USER' ' (set_color cyan)(prompt_pwd) (set_color green)(__fish_vcs_prompt) ' '(set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
end

