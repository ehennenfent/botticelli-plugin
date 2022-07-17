FROM baserow/backend:1.10.2

USER root

COPY ./plugins/botticelli_plugin/ $BASEROW_PLUGIN_DIR/botticelli_plugin/
RUN /baserow/plugins/install_plugin.sh --folder $BASEROW_PLUGIN_DIR/botticelli_plugin

USER $UID:$GID
