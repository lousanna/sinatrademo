const webpack = require('webpack');
const path = require('path');
module.exports = {
  entry: './public/entry.js',
  output: {
    path: __dirname,
    filename: './public/bundle.js'
  },
  resolve: {
    modules: [__dirname, 'node_modules'],
    alias: {
      
    },
    extensions: ['.js', '.jsx']
  },
  module: {
    loaders: [
      {
        loader: 'babel-loader',
        query: {
          presets: ['react', 'es2015']
        },
        test: /\.jsx$/,
        exclude: /(node_modules|bower_components)/
      },
      {
        loaders: ['babel-loader'],
        test: /\.js$/,
        exclude: /(node_modules|bower_components)/
      },
      {
        test: /\.scss$/,
        loaders: ["style-loader", "css-loader", "sass-loader"]
    }
    ]
  }
};
