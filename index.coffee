'use strict'

PLUGIN_NAME = 'gulp-modify'

through = require 'through2'

module.exports = (options = {}) ->

  through.obj (file, enc, next) ->

    if file.isBuffer()

      if fileModifier = options.fileModifier
        content = fileModifier file, file.contents.toString 'utf8'

        file.contents = new Buffer content

    next null, file
