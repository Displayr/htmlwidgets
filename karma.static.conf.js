// Karma configuration
//
// Tests htmlwidgets in their native static rendering environment.
module.exports = function(config) {
  config.set({
    frameworks: ['jasmine'],

    // list of files / patterns to load in the browser
    files: [
      'inst/www/htmlwidgets.js',
      'test/src/mock_widget.js',
      'test/spec/staticrender_spec.js'
    ],

    // start these browsers
    browsers: ['ChromeHeadless'],
  })
}
