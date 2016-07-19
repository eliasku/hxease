# hxease
[![Build Status](https://travis-ci.org/eliasku/hxease.svg?branch=master)](https://travis-ci.org/eliasku/hxease)
[![Build status](https://ci.appveyor.com/api/projects/status/ftivno3uq4y0lu15/branch/master?svg=true)](https://ci.appveyor.com/project/eliasku/hxease/branch/master)

[![Lang](https://img.shields.io/badge/language-haxe-orange.svg)](http://haxe.org)
[![Version](https://img.shields.io/badge/version-v0.0.1-green.svg)](https://github.com/eliasku/hxease)
[![Dependencies](https://img.shields.io/badge/dependencies-none-green.svg)](https://github.com/eliasku/hxease/blob/master/haxelib.json)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](http://opensource.org/licenses/MIT)

Ease functions for Haxe

## Usage examples
```haxe
var ratio:Float = 0.5;
var easedValue:Float = 0;

// default easings usage
easedValue = Back.easeOut.calculate(ratio);

// make custom easing parameters
easedValue = new BackEaseOut(2.01).calculate(ratio);

// Float static extension with
// `using hxease.Tools`
easedValue = ratio.backOut().circIn();
```

## TODO
1. custom curves
2. tools for `ratio` manipulations
