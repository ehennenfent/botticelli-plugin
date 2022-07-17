import {PluginNamePlugin} from '@botticelli_plugin/plugins'

export default (context) => {
  const { app } = context
  app.$registry.register('plugin', new PluginNamePlugin(context))
}
