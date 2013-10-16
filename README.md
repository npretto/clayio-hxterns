clayio-hxterns
==============

Haxe externs for Clay.io js API

Thise externs are generated automatically by https://github.com/lordkryss/buildhx so there may be errors.

If you want to regenerate them use `haxelib run buildhx clay.xml`

Using my version of buildhx it also copies comments directly in the souce code, for now comments are not formatted as they should to give a proper autocompletation but they are still usefull if your IDE supports "go to definition" to get a quick look :)

Installation
===========
`haxelib git clayio-hxterns git@github.com:lordkryss/clayio-hxterns.git` should do the job.

Usage
========
You will have to manually add the js code to add the real js API to your index.html file, you can find that code on http://clay.io/docs/installation

After you add the haxelib to your project you can just use `clay.*` haxe classes instead of the native `Clay.*` one


**Please Note**: some parameters could be optional in the js source but required by haxe externs (there are no optional parameters for now).


Special thanks to @austinhallock for the help on IRC and for building clay.io :D
