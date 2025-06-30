function solve() {
    const username = document.getElementById('username').value.trim();
    const password = document.getElementById('password').value.trim();

    // Username should only consist of letters
    if (!/^[a-zA-Z]+$/.test(username)) {
        alert('Username should only consist of letters.');
        return false;
    }

    // Password should be at least 8 characters
    if (password.length < 8) {
        alert('Password should be at least 8 characters.');
        return false;
    }

    // If all constraints pass, you can submit the form
    alert('Form submitted successfully!');
    return true;
}

document.addEventListener('DOMContentLoaded', function () {
    const form = document.getElementById('loginForm');

    form.addEventListener('submit', function (event) {
        event.preventDefault();

        const username = form.username.value.trim();
        const password = form.password.value.trim();

        // Username should only consist of letters
        if (!/^[a-zA-Z]+$/.test(username)) {
            alert('Username should only consist of letters.');
            return;
        }

        // Password should be at least 8 characters
        if (password.length < 8) {
            alert('Password should be at least 8 characters.');
            return;
        }

        // If all constraints pass, you can submit the form
       window.location.href = "/Layout.html";
    });
});
