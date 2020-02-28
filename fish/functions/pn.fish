function pn --description 'push ya notes'
    set -l NOTES_FOLDER "$HOME/Notes/"
    set -l COMMIT_DATE (date)
    git -C "$NOTES_FOLDER" add .
    git -C "$NOTES_FOLDER" commit -m "Periodic push of notes: $COMMIT_DATE"
    git -C "$NOTES_FOLDER" push origin master
end
