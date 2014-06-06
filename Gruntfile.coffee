module.exports = (grunt) ->

    grunt.initConfig {

        clean:
            assets:
                src: ['assets']

        sass:
            options:
                includePaths: ['_assets/vendor/foundation/scss']
            build:
                files: [{
                    cwd: '_assets/styles'
                    dest: 'assets/css'
                    src: ['**/*.{scss,sass}', '!**/_*']
                    ext: '.css'
                    expand: true
                }]
            serve:
                files: [{
                    cwd: '_assets/styles'
                    dest: '_site/assets/css'
                    src: ['**/*.{scss,sass}', '!**/_*']
                    ext: '.css'
                    expand: true
                }]

        # todo: inline svg to stylesheets
        svgmin:
            options:
                plugins: [
                    {removeViewbox: false}
                    {removeUselessStrokeAndFill: false}
                ]
            build:
                files: [{
                    cwd: '_assets/images'
                    dest: 'assets/images'
                    src: ['**/*.svg']
                    expand: true
                }]

        jekyll:
            build:
                src: '.'
                dest: './_site'
            serve:
                src: '.'
                dest: './_site'
                baseurl: '<%= connect.options.hostname %>:<%= connect.options.port %>'

        connect:
            options:
                port: 9000
                livereload: 35729
                hostname: 'localhost'
                base: ['_site']
            local:
                options:
                    open: 'http://<%= connect.options.hostname %>:<%= connect.options.port %>'

        # todo: setup useful watch
        watch:
            sass:
                files: ['_assets/styles/**/*.{scss,sass}']
                tasks: ['sass:serve']
            jekyll:
                files: ['templates/*.html']
                tasks: ['jekyll:dev']

    }


    grunt.registerTask 'default', 'serve'
    grunt.registerTask 'build', ['clean', 'sass', 'svgmin', 'jekyll:build']
    grunt.registerTask 'serve', ['clean', 'sass', 'svgmin', 'jekyll:serve', 'connect', 'watch']

    grunt.loadNpmTasks 'grunt-contrib-connect'
    grunt.loadNpmTasks 'grunt-contrib-clean'
    grunt.loadNpmTasks 'grunt-contrib-watch'
    grunt.loadNpmTasks 'grunt-jekyll'
    grunt.loadNpmTasks 'grunt-sass'
    grunt.loadNpmTasks 'grunt-svgmin'
