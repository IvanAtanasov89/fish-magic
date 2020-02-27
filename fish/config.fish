set -x SDKMAN_DIR "$HOME/.sdkman"
set -x JAVA_HOME "$SDKMAN_DIR/candidates/java/current"
set -x JRE_HOME "$SDKMAN_DIR/candidates/java/current/jre"
set -x GRADLE_HOME "$SDKMAN_DIR/candidates/gradle/current"
set -x SPRING_HOME "$SDKMAN_DIR/candidates/springboot/current"
set -x MICRONAUT_HOME "$SDKMAN_DIR/candidates/micronaut/current"
set -x PYENV_ROOT "$HOME/.pyenv"
set -x PATH $PYENV_ROOT/bin $PYENV_ROOT/shims $JAVA_HOME/bin $JRE_HOME/bin $GRADLE_HOME/bin $SPRING_HOME/bin $MICRONAUT_HOME/bin $PATH
set -x GOPATH $HOME/go
set -x FISH_KUBECTL_COMPLETION_COMPLETE_CRDS 0


# Disable this on mac because it is slow: https://github.com/fish-shell/fish-shell/issues/6270
if test (uname) = Darwin
    function __fish_describe_command; end
end
