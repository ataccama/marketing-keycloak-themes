const webpack = require("webpack");
const merge = require('webpack-merge');
const common = require('./webpack.config.js');

module.exports = merge(common, {
    watch: true,
    plugins: [
        new webpack.DefinePlugin({
            "DEV_MODE": true
        })
    ]
});
