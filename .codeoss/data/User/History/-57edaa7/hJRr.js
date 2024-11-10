const express = require('express');
const dotenv = require('dotenv');
const authRoute = require('./routes/auth-route');
const session = require('express-session');
const countriesRoute = require('./routes/countries-route');
const authMiddleware = require('./middlewares/auth-middleware');

const app = express();
dotenv.config();
const appConfig = {
    port: process.env.PORT || 8080,
    sessionSecret: process.env.SESSION_SECRET
}

app.set('view engine', 'ejs');
app.set('views', './views');

app.use(session({
    secret: appConfig.sessionSecret,
    resave: false,
    saveUninitialized: true,
    cookie: {
        maxAge: 3600000,
        sameSite: "Lax"
    }
}));

app.use((req, res, next) => {
    res.locals.user = req.session.user || null;
    res.locals.currentVersion = req.query.version || 'normal';
    next();
});

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use('/auth', authRoute);
app.use('/api/countries', countriesRoute);
app.use(express.static('public'));

app.get('/', (req, res) => {
    res.redirect('/api/countries');
});

app.get('/auth', (req, res) => {
    res.redirect('/auth/login');
});

app.listen(appConfig.port, () => {
    console.log(`Server running on port ${appConfig.port}`);
});