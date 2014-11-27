module.exports = (grunt) ->

  grunt.initConfig
    watch:
      files: '**/*.coffee'
      tasks: ['default']
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
        src: ['**/*.coffee']
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

    clean: ['js/src', 'js/spec']

  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.loadNpmTasks('grunt-contrib-clean')

  grunt.registerTask('test', ['coffee', 'jasmine'])
  grunt.registerTask('default', ['clean', 'coffee', 'jasmine'])
  grunt.registerTask('serve', ['connect', 'default', 'watch'])
