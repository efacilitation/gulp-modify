'use strict'

PLUGIN_NAME = 'gulp-modify'

through = require 'through2'
gutil = require 'gulp-util'

module.exports = (options = {}) ->

  through.obj (file, enc, next) ->
    error = null

    if file.isBuffer()

      if fileModifier = options.fileModifier
        try
          content = fileModifier file, file.contents.toString 'utf8'
          file.contents = new Buffer content
        catch _error
          error = new gutil.PluginError 'Error', _error, showStack: true

    next error, file
