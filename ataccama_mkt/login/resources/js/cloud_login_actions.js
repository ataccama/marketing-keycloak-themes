document.addEventListener("DOMContentLoaded", function() {
    if (window.location.href.includes('login-actions')) {
        var headerEl = document.querySelector('.layout-header')
        var textEl = document.querySelector('.instruction')
        var btnEl = document.querySelector('#kc-info-message a')

        if (headerEl.innerText === 'Perform the following action(s)') {
            headerEl.innerText = 'Before you start using Ataccama ONE'
            textEl.innerText = ''
            textEl.innerHTML = 'Since we introduced <b>Single Sign-On</b> across the Ataccama ONE platform, you need to create a new password.'
            btnEl.innerText = 'Update password'
        } else if (headerEl.innerText === 'Your account has been updated.') {
            headerEl.innerText = 'Your account has been updated'
            textEl.innerText = ''
            textEl.innerHTML = 'All set, you can now <b>start using Ataccama ONE.</b>'
            btnEl.innerText = 'Go to the application'
        } else {
            return
        }

        btnEl.classList.add('form-button')
        btnEl.style.display = 'inline-block'
        btnEl.style.marginTop = '20px'
    }
})
