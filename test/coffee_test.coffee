###
grunt-coffee-redux

Copyright (c) 2013 Moritz Heuser, contributors
Licensed under the MIT license.
###

grunt = require 'grunt'
fs = require 'fs'

read = (file)->
  content = grunt.file.read file
  if process.platform is 'win32' then content.replace /\r\n/g, '\n' else content

exports.coffee =
  compile: (test)->
    test.expect 3

    actual = read 'tmp/helloworld.js.coffee'
    expected = read 'test/expected/helloworld.js.coffee'
    test.equal expected, actual, 'should concat all coffee files'

    actual = read 'tmp/helloworld.js'
    expected = read 'test/expected/helloworld.js'
    test.equal expected, actual, 'should compile coffeescript to javascript'

    actual = read 'tmp/helloworld.jsmap.json'
    expected = read 'test/expected/helloworld.jsmap.json'
    test.equal expected, actual, 'should create source map'

    test.done()
