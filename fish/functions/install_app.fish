function install_app --description 'install an AppImage file'
    set -l APPLICATION_DIR "$HOME/Applications"
    set -l APP_IMAGE_FILE $argv[1]
    chmod +x $APP_IMAGE_FILE
    mkdir -p $APPLICATION_DIR
    mv $APP_IMAGE_FILE $APPLICATION_DIR
    echo 'Installed! Now add a .desktop file to $HOME/.local/share/applications'
end
