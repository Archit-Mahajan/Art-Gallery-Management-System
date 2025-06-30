const express = require('express');
const path = require('path');
const cookieParser = require('cookie-parser');
const logger = require('morgan');
const session = require('express-session');

const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');

const app = express();
const PORT = 4001;

app.use(session({
    secret: 'webslesson',
    resave: true,
    saveUninitialized: true
}));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.get('/', (req, res) => {
    res.render('index', { title: 'Login System in Node.js Express', session: req.session });
});

app.post('/login', (req, res) => {
    const { user_email_address, user_password } = req.body;

    if (user_email_address === 'test@example.com' && user_password === 'password') {
        // Authentication successful
        // Set session or cookie if needed

        // Redirect to Layout.html upon successful login
        window.alert("Login ")
    } else {
        // Authentication failed
        // Render the login page again with an error message if needed
        res.render('index', { title: 'Login System in Node.js Express', session: req.session, error: 'Invalid credentials. Please try again.' });
    }
});

app.use('/', indexRouter);
app.use('/users', usersRouter);

app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});

module.exports = app;
