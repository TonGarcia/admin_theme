'use strict';

module.exports = function (grunt) {

    // load all grunt tasks matching the ['grunt-*', '@*/grunt-*'] patterns
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({

        cssmin: {
            options: {
                keepSpecialComments: 0
            },
            target: {
                files: {
                    'vendor/assets/stylesheets/admin_materialize.css': [
                        'assets/stylesheets/nonoscroller.css',
                        'assets/stylesheets/con.min.css',
                    ]
                }
            }
        },
        uglify: {
            options: {
                mangle: false
            },
            app: {
                files: {
                    'vendor/assets/javascripts/admin_materialize.js': [
                        'assets/javascripts/requestAnimationFrame.min.js',
                        'assets/javascripts/nanoscroller.min.js',
                        'assets/javascripts/materialize.min.js',
                        'assets/javascripts/sortable.min.js',
                        'assets/javascripts/con.min.js'
                    ]
                }
            }

        }

    });

    grunt.registerTask('default', ['uglify', 'cssmin']);

}
