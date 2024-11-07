<#--
TODO: ONECLOUD-97

This solution of dual view of password reset page is temporal and must be removed when all users set new password in Keycloak.
-->

<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
  <#if section = "inner-styles">
    <style>
    .layout-container_wrapper {
      opacity: 0;
      transition: opacity .2s;
    }
    </style>
  <#elseif section = "inner-scripts">
    <script>
    function getQueryVariable(variable) {
        var query = window.location.search.substring(1);
        var vars = query.split('&');
        for (var i = 0; i < vars.length; i++) {
            var pair = vars[i].split('=');
            if (decodeURIComponent(pair[0]) == variable) {
                return decodeURIComponent(pair[1]);
            }
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
        var shouldSetPassword = getQueryVariable('setPassword')
        var email = getQueryVariable('email')
        var txtHeader
        var txtBody
        var txtButton
        
        if (email) {
            document.querySelector("#username").value = email
        }

        if (shouldSetPassword) {
            txtHeader = 'Change Your Password'
            txtBody = 'All Ataccama services now use Single Sign-On. Because of this change, you need to update your password. Enter your email address and we will send you instructions on how to change it.'
            txtButton = 'Update password'

            // Hide 'back to login'
            document.querySelector('.form-options').style.display = 'none'
        } else {
            txtHeader = 'Forgot Your Password?'
            txtBody = 'Enter your username or email address. We will email you instructions on how to create a new password.'
            txtButton = 'Submit'
        }

        document.title = txtHeader
        document.querySelector('.layout-header').innerText = txtHeader
        document.querySelector('.form-button').value = txtButton
        document.querySelector('.layout-info_text').innerText = txtBody
        document.querySelector('.layout-container_wrapper').style.opacity = 1
    });
    </script>
  <#elseif section = "title">
    ${msg("emailForgotTitle")}
  <#elseif section = "header">
    ${msg("emailForgotTitle")}
  <#elseif section = "form">
    <form class="${properties.formClass!}" action="${url.loginAction}" method="post">
      <div class="${properties.formGroupClass!}">
        <div class="${properties.formLabelWrapperClass!}">
          <label for="username" class="${properties.formLabelClass!}"><#if !realm.loginWithEmailAllowed>${msg("username")}<#elseif !realm.registrationEmailAsUsername>${msg("usernameOrEmail")}<#else>${msg("email")}</#if></label>
        </div>
        <input type="text" id="username" name="username" class="${properties.formInputClass!}" autofocus/>
      </div>

      <div class="${properties.formGroupClass!}">

        <input class="${properties.formButtonClass!}" type="submit" value="${msg("doSubmit")}"/>
      </div>
    </form>
  <#elseif section = "info">
    <div class="${properties.formOptionsClass!}">
      <span class='layout-info_back'><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
    </div>

    <span class="layout-info_text">${msg("emailInstruction")}</span>
  </#if>
</@layout.registrationLayout>
