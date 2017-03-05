// test/index.js
// require all test filers using special Webpack featue
// https://webpack.github.io/docs/context.html#require-context
const testsContext = require.context('../app', true, /\.spec$/);
testsContext.keys().forEach(testsContext);
