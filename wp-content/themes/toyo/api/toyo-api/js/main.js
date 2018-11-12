/*
 * jQuery File Upload Plugin JS Example
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * https://opensource.org/licenses/MIT
 */

/* global $, window */

$(function () {
    'use strict';

    //Models
    // Initialize the jQuery File Upload widget:
    $('#fileupload').fileupload({
        // Uncomment the following to send cross-domain cookies:
        //xhrFields: {withCredentials: true},
        url: rootURL+'/server/models/'
    });


    // Enable iframe cross-domain access via redirect option:
    $('#fileupload').fileupload(
        'option',
        'redirect',
        window.location.href.replace(
            /\/[^\/]*$/,
            '/cors/result.html?%s'
        )
    );

    if (window.location.hostname === 'blueimp.github.io') {
        // Demo settings:
        $('#fileupload').fileupload('option', {
            url: '//jquery-file-upload.appspot.com/',
            // Enable image resizing, except for Android and Opera,
            // which actually support image resizing, but fail to
            // send Blob objects via XHR requests:
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 999000,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
        });
        // Upload server status check for browsers with CORS support:
        if ($.support.cors) {
            $.ajax({
                url: '//jquery-file-upload.appspot.com/',
                type: 'HEAD'
            }).fail(function () {
                $('<div class="alert alert-danger"/>')
                    .text('Upload server currently unavailable - ' +
                            new Date())
                    .appendTo('#fileupload');
            });
        }
    } else {
        // Load existing files:
        $('#fileupload').addClass('fileupload-processing');
        $.ajax({
            // Uncomment the following to send cross-domain cookies:
            //xhrFields: {withCredentials: true},
            url: $('#fileupload').fileupload('option', 'url'),
            dataType: 'json',
            context: $('#fileupload')[0]
        }).always(function () {
            $(this).removeClass('fileupload-processing');
        }).done(function (result) {
            $(this).fileupload('option', 'done')
                .call(this, $.Event('done'), {result: result});
        });
    }

    var multiDel = false;

    // $('#fileupload').on('fileuploaddestroy', function (e, data) {
    //       if(multiDel){ return true; };
    //       var filename = data.url.substring(data.url.indexOf("=") + 1,data.url.indexOf("&"))
    //       var delconf = confirm("Delete the file \"" + decodeURIComponent(filename) + "\"?");
    //       if(!delconf) {
    //           e.preventDefault;
    //           return false;
    //       }
    // });

    // $('#fileupload').fileupload({
    //     multiDestroy: function (e) {
    //         var delconf = confirm("Are you sure you wish to delete the selected files?");
    //         if (!delconf) {
    //             e.preventdefault;
    //             return false;
    //         } else { 
    //             multiDel = true; 
    //         }
    //     }
    // })
    // .fileupload({
    //     multiDestroyFinished: function (e) {
    //       multiDel = false;
    //     }
    // });

    


    // Tires

    // Initialize the jQuery File Upload widget:
    $('#tireupload').fileupload({
        // Uncomment the following to send cross-domain cookies:
        //xhrFields: {withCredentials: true},
        url: rootURL+'/server/tires/'
    });


    // Enable iframe cross-domain access via redirect option:
    $('#tireupload').fileupload(
        'option',
        'redirect',
        window.location.href.replace(
            /\/[^\/]*$/,
            '/cors/result.html?%s'
        )
    );

    if (window.location.hostname === 'blueimp.github.io') {
        // Demo settings:
        $('#tireupload').fileupload('option', {
            url: '//jquery-file-upload.appspot.com/',
            // Enable image resizing, except for Android and Opera,
            // which actually support image resizing, but fail to
            // send Blob objects via XHR requests:
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 999000,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
        });
        // Upload server status check for browsers with CORS support:
        if ($.support.cors) {
            $.ajax({
                url: '//jquery-file-upload.appspot.com/',
                type: 'HEAD'
            }).fail(function () {
                $('<div class="alert alert-danger"/>')
                    .text('Upload server currently unavailable - ' +
                            new Date())
                    .appendTo('#tireupload');
            });
        }
    } else {
        // Load existing files:
        $('#tireupload').addClass('fileupload-processing');
        $.ajax({
            // Uncomment the following to send cross-domain cookies:
            //xhrFields: {withCredentials: true},
            url: $('#tireupload').fileupload('option', 'url'),
            dataType: 'json',
            context: $('#tireupload')[0]
        }).always(function () {
            $(this).removeClass('fileupload-processing');
        }).done(function (result) {
            $(this).fileupload('option', 'done')
                .call(this, $.Event('done'), {result: result});
        });
    }


    // Logos
    // Initialize the jQuery File Upload widget:
    $('#logoupload').fileupload({
        // Uncomment the following to send cross-domain cookies:
        //xhrFields: {withCredentials: true},
        url: rootURL+'/server/logos/'
    });


    // Enable iframe cross-domain access via redirect option:
    $('#logoupload').fileupload(
        'option',
        'redirect',
        window.location.href.replace(
            /\/[^\/]*$/,
            '/cors/result.html?%s'
        )
    );

    if (window.location.hostname === 'blueimp.github.io') {
        // Demo settings:
        $('#logoupload').fileupload('option', {
            url: '//jquery-file-upload.appspot.com/',
            // Enable image resizing, except for Android and Opera,
            // which actually support image resizing, but fail to
            // send Blob objects via XHR requests:
            disableImageResize: /Android(?!.*Chrome)|Opera/
                .test(window.navigator.userAgent),
            maxFileSize: 999000,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
        });
        // Upload server status check for browsers with CORS support:
        if ($.support.cors) {
            $.ajax({
                url: '//jquery-file-upload.appspot.com/',
                type: 'HEAD'
            }).fail(function () {
                $('<div class="alert alert-danger"/>')
                    .text('Upload server currently unavailable - ' +
                            new Date())
                    .appendTo('#logoupload');
            });
        }
    } else {
        // Load existing files:
        $('#logoupload').addClass('fileupload-processing');
        $.ajax({
            // Uncomment the following to send cross-domain cookies:
            //xhrFields: {withCredentials: true},
            url: $('#logoupload').fileupload('option', 'url'),
            dataType: 'json',
            context: $('#logoupload')[0]
        }).always(function () {
            $(this).removeClass('fileupload-processing');
        }).done(function (result) {
            $(this).fileupload('option', 'done')
                .call(this, $.Event('done'), {result: result});
        });
    }

    $('.search-upload-models').on('input',function(){
        $('.search-upload-models').val (function () {
            return this.value.toLowerCase();
        })

        if($('.search-upload-models').val().length>0&&$('.search-upload-models').val().length!=0){
            $('.table tbody.files tr').css({'display':'none'});
            $('.table tbody.files tr td p:contains('+$('.search-upload-models').val()+')').parent().parent().css({'display':'table-row'});
        }else{
            $('.table tbody.files tr').css({'display':'table-row'});
        }
    });

    $('.search-upload-tires').on('input',function(){
        $('.search-upload-tires').val (function () {
            return this.value.toUpperCase();
        })

        if($('.search-upload-tires').val().length>0&&$('.search-upload-tires').val().length!=0){
            $('.table tbody.files tr').css({'display':'none'});
            $('.table tbody.files tr td p:contains('+$('.search-upload-tires').val()+')').parent().parent().css({'display':'table-row'});
        }else{
            $('.table tbody.files tr').css({'display':'table-row'});
        }
    });

    $('.search-upload-logos').on('input',function(){
        $('.search-upload-logos').val (function () {
            return this.value.toUpperCase();
        })

        if($('.search-upload-logos').val().length>0&&$('.search-upload-logos').val().length!=0){
            $('.table tbody.files tr').css({'display':'none'});
            $('.table tbody.files tr td p:contains('+$('.search-upload-logos').val()+')').parent().parent().css({'display':'table-row'});
        }else{
            $('.table tbody.files tr').css({'display':'table-row'});
        }
    });
});
