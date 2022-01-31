
const express = require('express')

const app = express()
const port = 3000

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Return all todos - Version#2 bolson')
})

app.post('/add', (req, res) => {
  console.log('Request: ', req.body)
  res.send('Successfully added new todo')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

module.exports = app;
