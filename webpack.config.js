process.noDeprecation = true;

module.exports = {
  entry: 'app.js',
  output: {},
  module: {},
  resolve: {
    alias: {
      vue: 'vue/dist/vue.min.js',
    },
  },
};
