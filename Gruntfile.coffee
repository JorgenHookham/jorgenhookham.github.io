module.exports = (grunt) ->

    grunt.initConfig {

        jekyll:
            server:
                src: 'templates'
                dest: 'dev'
                server: true
                server_port: 8000
                auto: true
            dev:
                src: 'templates'
                dest: 'dev'
            prod:
                src: 'templates'
                dest: 'prod'

        watch:
            jekyll:
                files: ['templates/*.html']
                tasks: ['jekyll:dev']

    }


    grunt.registerTask 'default', 'jekyll:server'

    grunt.loadNpmTasks 'grunt-jekyll'
    grunt.loadNpmTasks 'grunt-contrib-watch'
