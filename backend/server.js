// backend/server.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (_, res) => {
  res.send('Hello from the backend!');
});

app.listen(port, () => {
  console.log(`Backend running on port ${port}`);
});

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});
