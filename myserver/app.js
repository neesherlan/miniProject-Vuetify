const express = require('express');
const cors = require('cors')
const port = 5000;

//create express (node.js) application
const app = express();
app.use(express.json(), cors());
app.use(express.urlencoded({extended: true}));

const stu_router = require('./routes/inter_students.js')
app.use(stu_router)

//Server listening
app.listen(port, () => {
    console.log('Server started on port ', port);
   });