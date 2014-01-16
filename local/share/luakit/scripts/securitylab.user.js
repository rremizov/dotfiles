// ==UserScript==
// @name           securitylab
// @description    Script for securitylab.ru
// @include        http://www.securitylab.ru/*
// @run-at         document-end
// ==/UserScript==

var custom_css = "<style type='text/css'>* { background-color: #002b36 !important; color: #839496 !important; } body { width: 75%; margin-left: auto; margin-right: auto; text-align: justify; } body, div, code { font-size: " + Math.floor(window.screen.availHeight / 30) + "px !important; } code { text-align: left; } </style>";
var body = document.getElementsByTagName('body')[0];
var content = $('div.main_content').html();
body.innerHTML = content;
body.innerHTML += custom_css;
