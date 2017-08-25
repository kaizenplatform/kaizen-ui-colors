const fs = require('fs');
const path = require('path');
const camelcase = require('camelcase');

const getColorsJSON = () => {
  return JSON.parse(
    fs.readFileSync(
      path.resolve(__dirname, '../kaizen-ui-colors.json'),
      'utf-8'
    )
  );
};

const generateColors = (colorsJSON, outPath) => {
  const formatted = Object.keys(colorsJSON.nameToHex).reduce((map, key) => {
    const colorHex = colorsJSON.nameToHex[key];
    const colorName = key.replace('color-', '').replace('--', '_').concat('__', colorHex.replace('#', ''));

    map[colorName] = colorsJSON.nameToHex[key];
    return map;
  }, {});
  fs.writeFileSync(
    outPath,
    '// DO NOT EDIT! This code is generated automatically.\n' +
    `export const colors = ${JSON.stringify(formatted, null, 2)};`,
    'utf-8'
  );
};

const outPath = path.resolve(__dirname, '../src/colors.ts');
const colorsJSON = getColorsJSON();
console.log(`Generating colors.ts in "${outPath}" ...`);
generateColors(colorsJSON, path.resolve(__dirname, '../src/colors.ts'));

console.log(`Done!`);
