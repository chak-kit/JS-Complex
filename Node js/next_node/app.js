let express = require('express');
let path = require('path');
let search = require('./search');
let app = express();

app.use(express.urlencoded({extended: true}));
app.use(express.json());

var users = [
    {
        id: 0,
        name: 'Max',
        surname: 'Fox',
        password: '12345',
        email: 'kitchak93@rambler.ru'
    },
    {
        id:1,
        name: 'Marko',
        surname: 'Hola',
        password: '888345',
        email: 'kit@rambler.ru'
    }
];

app.get("/", function (req, res) {
    res.sendFile(path.join(__dirname, 'index.html'))
});

app.post('/user', function (req, res) {
    req.body.id = users.length;
    users.push(req.body);
    // console.log(req.body);
    console.log(users);
    res.end('la')
});

app.get('/user', function (req, res) {

    res.end(JSON.stringify(users))

});

app.get('/user/search', function (req, res) {
    let name = req.query.name;
    let foundUsers = search.findUsersByName(users, name);
    res.end(JSON.stringify(foundUsers));
});

app.get('/user/:id', function (req, res) {
    console.log(req.params.id);
    res.end(JSON.stringify(users[req.params.id]))
});


app.listen(3000, function () {
    console.log('Listening...')
});

