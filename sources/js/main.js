/**
 * Created by martinjinda on 05/04/2019.
 */

import 'jquery';
import 'bootstrap';
import 'popper.js'

import '../sass/main.sass';

$(function() {

  let necsCookie = getCookie('ccmNecs');
  if (!necsCookie) {
    $('#cookieModal').modal('show');
  }

  let cookieAcceptAll = $('#cookie-accept-all');
  cookieAcceptAll.on('click', function() {
    setCookie('ccmNecs', 1, 30);
    setCookie('ccmMark', 1, 30);
    setCookie('ccmStat', 1, 30);
    $('#cookieModal').modal('hide');
  });

  let ccmNecs = $('#ccmNecs');
  let ccmMark = $('#ccmMark');
  let ccmStat = $('#ccmStat');
  $('#saveConsents').on('click', function() {
    setCookie('ccmNecs', ccmNecs.is(':checked') ? 1 : 0, 30);
    setCookie('ccmMark', ccmMark.is(':checked') ? 1 : 0, 30);
    setCookie('ccmStat', ccmStat.is(':checked') ? 1 : 0, 30);
    $('#cookieModal').modal('hide');
  });
});

function setCookie(name, value, days) {
  var expires = '';
  if (days) {
    var date = new Date();
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
    expires = '; expires=' + date.toUTCString();
  }
  document.cookie = name + '=' + (value || '') + expires + ';domain=.ataccama.com;path=/';
}

function getCookie(cname) {
  let name = cname + '=';
  let decodedCookie = decodeURIComponent(document.cookie);
  let ca = decodedCookie.split(';');
  for (let i = 0; i < ca.length; i++) {
    let c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return '';
}

function eraseCookie(name) {
  document.cookie = name + '=; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
}