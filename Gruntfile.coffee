module.exports = (grunt) ->

  grunt.initConfig
    watch:
      files: '**/*.coffee',
      tasks: ['test'],
      options:
        livereload: 
          port: 1337

    jasmine:
      pivotal:
        src: 'js/src/**/*.js'
        options:
          specs: 'js/spec/**/*Spec.js',
          helpers: 'js/spec/**/*Helper.js'
          vendor: 'js/vendor/**/*.js'

    coffee:
      compile:
        expand: true,
        flatten: false,
        cwd: 'coffee/'
        src: ['**/*.coffee'],
        dest: 'js/',
        ext: '.js'

    livereload:
        options:
          livereload: 1337
        files:
          'js/**/*.js'

    connect:
      server:
        options:
          port: 9000
          hostname: '0.0.0.0'
          livereload: 1337

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-connect')

  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('serve', ['connect', 'watch'])
