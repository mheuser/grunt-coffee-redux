# grunt-coffee-redux

> Compile CoffeeScript files to JavaScript with the CoffeeScript Redux compiler.


## Getting Started
If you haven't used [grunt][] before, be sure to check out the [Getting Started][] guide, as it explains how to create a [gruntfile][Getting Started] as well as install and use grunt plugins. Once you're familiar with that process, install this plugin with this command:

```shell
npm install grunt-coffee-redux --save-dev
```

[grunt]: http://gruntjs.com/
[Getting Started]: http://gruntjs.com/getting-started


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

The source map will be named like this: `#{targetJsFileName}map.json`, e.g.:
`helloworld.jsmap.json`.

The CoffeeScript file with all concatenated sources will be named like this:
`#{targetJsFileName}.coffee`, e.g.: `helloworld.js.coffee`.


### Example Configuration

```coffee
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
```

This configuration will create following files in the `tmp` folder:

  * `helloworld.js.coffee`: This is the result of the concatenation of the
  files `hello.coffee` and `world.coffee`.
  
  * `helloworld.jsmap.json`: The source map who is pointing to the
  `helloworld.js.coffee`.

  * 'helloworld.js': Is the to JavaScript compiled version of the
  `helloworld.js.coffee` file.



## Release History

 * 2013-02-10   v0.2.2   Fixed error logging
 * 2013-02-10   v0.2.1   Updated coffee redux dependency to 2.0.0beta2 Updated grunt-contrib-internal to get working links in the README.md
 * 2013-01-19   v0.2.0   Show in which file a parse error has happened.
 * 2013-01-19   v0.1.0   Initial npm release

---

Task submitted by [Moritz Heuser](https://github.com/moritzh)

*This file was generated on Sun Feb 10 2013 11:15:56.*
