#!/usr/bin/env xonsh

plugin_path = pf"{__file__}".absolute().parent
plugin_build_path = plugin_path / 'build'

mkdir -p @(plugin_build_path)

pluginrc_file = plugin_path/'pluginrc.xsh'
if pluginrc_file.exists():
    cp @(pluginrc_file) @(plugin_build_path)