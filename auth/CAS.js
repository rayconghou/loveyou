// "use strict";
Object.defineProperty(exports, "__esModule", { value: true });

// import and set names

//Express
const express = require("express");
const app = express();

// Passport and Express-Session
const passport_1 = require("passport");
const session = require("express-session");

const PORT = 3000;

// set up app
app.use(express.json());

app.use(session({
  secret: "secret",
  resave: false,
  saveUninitialized: true,
}))

app.use(passport_1.initialize());
app.use(passport_1.session());

// testing interaction between app
// app.get('/', (req, res) => {
//     res.json({ message: 'Hello from the backend!' });
//   });

// use passport library to check if user exists
passport_1.use(new (require('passport-cas').Strategy)({
    ssoBaseURL: 'https://secure.its.yale.edu/cas',
    serverBaseURL: 'http://localhost:3000'
}, function (login, done) {
    const user = {login: login};
    return done(null, user);
}));

// authenticate user
passport_1.serializeUser((user, done) => {
  done(null, user)
})
// deserialize 
passport_1.deserializeUser((user, done) => {
  done(null, user)
})

const casLogin = function (
  req = express.Request,
  res = express.Response,
  next = express.NextFunction,
) {
  passport_1.authenticate('cas', function (err, user, info) {
    if (err) {
      return next(err);
    }
  
    if (!user) {
      req.session.messages = info.message;
      return res.redirect('/fail');
    }
  
    req.logIn(user, function (err) {
      if (err) {
        return next(err);
      }
  
      req.session.messages = '';
      //TODO: redirect to the next screen, actually in the app
      return res.redirect('/succes');
    });
  })(req, res, next);
}

app.get('/cas', casLogin); 

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
