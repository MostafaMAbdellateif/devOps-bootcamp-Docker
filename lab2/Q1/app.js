const express = require('express')
const app = express()
const port = 3000
// const HOST = '0.0.0.0';
app.get('/', (req, res) => {
    res.send('Hello World from Sprints!')
})  

// app.listen(port, HOST);
// console.log(`Running on http://${HOST}:${port}`);

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})