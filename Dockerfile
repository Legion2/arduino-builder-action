FROM hexeo/arduino-builder

LABEL "com.github.actions.name"="Run arduino-builder"
LABEL "com.github.actions.description"="Run the arduino-builder for all sketches and see if they compile"
LABEL "com.github.actions.icon"="server"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/Legion2/arduino-builder-action"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
