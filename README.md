# grunt-contrib-coffeeredux

> Compile CoffeeScript files to JavaScript with the CoffeeScript Redux compiler.


## Getting Started

You have to clone this plugin via git until its available via npm.


## Coffeeredux task
_Run this task with the `grunt coffeeredux` command._

_This task is a [multi task][] so any targets, files and options should be specified according to the [multi task][] documentation._
[multi task]: https://github.com/gruntjs/grunt/wiki/Configuring-tasks


This plugin provides the [CoffeeScript Redux](https://github.com/michaelficarra/CoffeeScriptRedux) compiler.

### Options

#### bare

Type: `boolean`

Default: `no`

Compile the JavaScript without the top-level function safety wrapper.

#### sourceMap

Type: `boolean`

Default: `no`

Create a source map and a CoffeeScript file with all concatenated sources in
the same folder as the target JavaScript file. 

The source map will be named with this schema: `#{targetJsFileName}map.json`,
e.g.: `helloworld.jsmap.json`.

The CoffeeScript file with all concatenated  sources will be named with this
schema: `#{targetJsFileName}.coffee`, e.g.: `helloworld.js.coffee`.

### Example Configuration

  coffeeredux:
    options:
      bare: false
      sourceMap: true
    compile:
      files:
        'tmp/helloworld.js': [
          'test/fixtures/hello.coffee'
          'test/fixtures/world.coffee'
        ]

This configuration will create following files in the `tmp` folder:

  * `helloworld.js.coffee`: This is the result of the concatenation of the
  files `hello.coffee` and `world.coffee`.
  
  * `helloworld.jsmap.json`: The source map who is pointing to the
  `helloworld.js.coffee`.

  * 'helloworld.js': Is the to JavaScript compiled version of the
  `helloworld.js.coffee` file.



## Release History

 * 2013-01-18   v0.4.0rc5   Initial commit

---

Task submitted by [Moritz Heuser](https://github.com/moritzh)

*This file was generated on Fri Jan 18 2013 03:52:28.*
