// ==UserScript==
// @name           vedomosti
// @description    Script for vedomosti
// @include        http://www.vedomosti.ru/*
// @run-at         document-end
// ==/UserScript==

var custom_css = "<style type='text/css'>* { background-color: #073642 !important; color: #839496 !important; } body { width: 75%; margin-left: auto; margin-right: auto; text-align: justify; } body, div, code { font-size: " + Math.floor(window.screen.availHeight / 30) + "px !important; } code { text-align: left; } </style>";
var body = document.getElementsByTagName('body')[0];
var content = document.getElementById('idmasha').innerHTML;
body.innerHTML = content;
body.innerHTML += custom_css;
