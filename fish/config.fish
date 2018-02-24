set -x SDKMAN_DIR "$HOME/.sdkman"
set -x JAVA_HOME "$SDKMAN_DIR/candidates/java/current"
set -x JRE_HOME "$SDKMAN_DIR/candidates/java/current/jre"
set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PYENV_ROOT/bin $PYENV_ROOT/shims $JAVA_HOME/bin $JRE_HOME/bin $PATH
