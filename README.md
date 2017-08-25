kaizen-ui-colors
================

[![Circle CI](https://circleci.com/gh/kaizenplatform/kaizen-ui-colors.svg?style=svg&circle-token=2480cef0b16bd27f1a7441f0c145f53d36172458)](https://circleci.com/gh/kaizenplatform/kaizen-ui-colors)

Sass Variables for Kaizen Platform UI Colors

## Preview

http://kaizenplatform.github.io/kaizen-ui-colors

## Installation

### Use from Compass Project

#### Gemfile

```rb
gem 'compass-kaizen-ui-colors', git: 'git@github.com:kaizenplatform/kaizen-ui-colors.git'
```

#### In your SASS file

```sass
@import "kaizen-ui-colors"
```

### Install with npm

```
npm install kaizenplatform/kaizen-ui-colors
```

## Development

### Compile & show preview

```
npm run compile
```

## Use JSON Data in Node.js

First, install with npm.

```
npm install kaizenplatform/kaizen-ui-colors
```

Then, you can load the JSON data.

```javascript
var json = require('kaizen-ui-colors');
```

```javascript
import json from 'kaizen-ui-colors';
```

## Use as TypeScript Library

`kaizen-ui-colors/lib` is an entry point which provides color schemas as TypeScript library.

### colors

`colors` module is a **typed** and **camelCased** color schema.

You can import it and use as below:

```ts
import { colors } from 'kaizen-ui-colors/lib';

console.log(colors.lavaLighter);
```