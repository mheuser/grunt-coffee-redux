# Options

## bare

Type: `boolean`

Default: `no`

Compile the JavaScript without the top-level function safety wrapper.

## sourceMap

Type: `boolean`

Default: `no`

Create a source map and a CoffeeScript file with all concatenated sources in
the same folder as the target JavaScript file. 

The source map will be named like this: `#{targetJsFileName}map.json`, e.g.:
`helloworld.jsmap.json`.

The CoffeeScript file with all concatenated sources will be named like this:
`#{targetJsFileName}.coffee`, e.g.: `helloworld.js.coffee`.

