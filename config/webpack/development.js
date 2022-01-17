process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

// module.exports = environment.toWebpackConfig()

module.exports = {
  test: /\.vue(\.erb)?$/,
  use: [{
    loader: 'vue-loader',
    options: { extractCSS }
  },
  {
    loader: 'rails-erb-loader',
    options: {
      runner: 'bin/rails runner',
      dependenciesRoot: '../app'
    }
  }]
}
