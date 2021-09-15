const {
  doc: {
    builders: { group, hardline, indent, line }
  }
} = require('prettier');

const printSeparatedList = require('./print-separated-list');

const modifierParameters = (node, path, print, options) => {
  if (node.parameters && node.parameters.length > 0) {
    return [
      '(',
      printSeparatedList(path.map(print, 'parameters'), {
        separator: [
          ',',
          node.parameters.length > options.parametersLength ? hardline : line
        ]
      }),
      ')'
    ];
  }

  return '()';
};

const virtual = (node) => (node.isVirtual ? [line, 'virtual'] : '');

const override = (node, path, print) => {
  if (!node.override) return '';
  if (node.override.length === 0) return [line, 'override'];
  return [
    line,
    'override(',
    printSeparatedList(path.map(print, 'override')),
    ')'
  ];
};

const body = (node, path, print) =>
  node.isVirtual ? group(path.call(print, 'body')) : path.call(print, 'body');

const ModifierDefinition = {
  print: ({ node, path, print, options }) => [
    'modifier ',
    node.name,
    modifierParameters(node, path, print, options),
    group(indent([virtual(node), override(node, path, print)])),
    ' ',
    body(node, path, print)
  ]
};

module.exports = ModifierDefinition;
