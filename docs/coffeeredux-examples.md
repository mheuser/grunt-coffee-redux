# Example Configuration

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

