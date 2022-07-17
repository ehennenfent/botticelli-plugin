FROM baserow/web-frontend:1.10.2

USER root

COPY ./plugins/botticelli_plugin/ /baserow/plugins/botticelli_plugin/
RUN /baserow/plugins/install_plugin.sh --folder /baserow/plugins/botticelli_plugin

USER $UID:$GID
