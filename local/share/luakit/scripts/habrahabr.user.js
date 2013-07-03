// ==UserScript==
// @name           habrahabr
// @description    Script for habrahabr
// @include        http://habrahabr.ru/post/*
// @run-at         document-end
// ==/UserScript==

var custom_css = "<style type='text/css'>* { background-color: #073642 !important; color: #839496 !important; } body { width: 75%; margin-left: auto; margin-right: auto; text-align: justify; } body, div, code { font-size: " + Math.floor(window.screen.availHeight / 30) + "px !important; } code { text-align: left; } </style>";
var body = document.getElementsByTagName('body')[0];
var content = $('div.content_left').html();
body.innerHTML = content;
body.innerHTML += custom_css;
