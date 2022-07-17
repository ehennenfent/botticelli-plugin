FROM baserow/baserow:1.10.2

COPY ./plugins/botticelli_plugin/ /baserow/plugins/botticelli_plugin/
RUN /baserow/plugins/install_plugin.sh --folder /baserow/plugins/botticelli_plugin
