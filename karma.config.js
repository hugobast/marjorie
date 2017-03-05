const webpack = require('karma-webpack');
const webpackConfig = require('./webpack.config');

webpackConfig.module.loaders = [
  {
    test: /\.js$/,
    exclude: /(node_modules)/,
    loader: 'babel-loader',
    query: {
      presets: ['es2015'],
    },
  },
];

module.exports = function (config) {
  config.set({
    frameworks: ['mocha', 'chai'],
    files: [
      'spec/index.js',
    ],
    plugins: [
      webpack,
      'karma-mocha',
      'karma-chai',
      'karma-nightmare',
    ],
    browsers: ['Nightmare'],
    preprocessors: {
      'spec/index.js': ['webpack'],
    },
    reporters: ['progress'],
    webpack: webpackConfig,
    webpackMiddleware: { noInfo: true, quiet: true },
  });
};
