document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('signupForm');

    form.addEventListener('submit', function (event) {
        event.preventDefault();

        const username = form.username.value.trim();
        const email = form.email.value.trim();
        const password = form.password.value.trim();

        if (!/^[a-zA-Z]+$/.test(username)) {
            alert('Username should only consist of letters.');
            return;
        }

        if (!email.includes('@')) {
            alert('Email should contain @.');
            return;
        }

        if (password.length < 8) {
            alert('Password should be at least 8 characters.');
            return;
        }

        window.location.href = "/Layout.html";
    });
});
