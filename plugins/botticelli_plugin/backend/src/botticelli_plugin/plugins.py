import logging
from baserow.core.registries import Plugin
from django.urls import path, include

from .api import urls as api_urls

logger = logging.getLogger(__name__)


class PluginNamePlugin(Plugin):
    type = "botticelli_plugin"

    def get_api_urls(self):
        return [
            path(
                "botticelli_plugin/",
                include(api_urls, namespace=self.type),
            ),
        ]
