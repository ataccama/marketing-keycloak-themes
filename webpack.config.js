const webpack = require ('webpack');
const path = require ('path');
const MiniCssExtractPlugin = require ("mini-css-extract-plugin");

module.exports = {
  mode: 'production',
  entry: {
    main: './sources/js/main.js',
  },
  output: {
    path: path.join (__dirname, '/ataccama_mkt/login/resources'),
    filename: '[name].bundle.js'
  },
  module: {
    rules: [
      {
        test: /\.js?$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        query: {
          cacheDirectory: true,
          "presets": [
            ["env", {
              "targets": {
                "browsers": ["last 2 versions", "safari >= 7"]
              }
            }]
          ]
        },
      },
      {
        test: /\.css$/, use: [
          MiniCssExtractPlugin.loader,
          'css-loader',
        ]
      },
      {
        test: /\.scss$/, use: [
          MiniCssExtractPlugin.loader,
          'css-loader', 'sass-loader',
        ]
      },
      {
        test: /\.sass$/, use: [
          MiniCssExtractPlugin.loader,
          'css-loader', 'sass-loader',
        ]
      },
      {
        test: /\.woff2?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        use: 'url-loader?limit=10000',
      },
      {
        test: /\.(ttf|eot)(\?[\s\S]+)?$/,
        use: 'file-loader',
      },
      {
        test: /\.(jpe?g|png|gif|svg)$/i,
        use: [
          'file-loader?name=img/[name].[ext]',
        ]
      }
    ]
  },
  plugins: [
    new webpack.ProvidePlugin ({
      $: 'jquery',
      jQuery: 'jquery',
      'window.jQuery': 'jquery',
    }),
    new MiniCssExtractPlugin ({
      filename: "[name].bundle.css"
    })
  ]
};