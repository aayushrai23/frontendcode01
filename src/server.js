const express = require('express');
const app = express();

app.get('/health', (req, res) => {
  res.status(200).send('OK');
});

app.listen(80, () => {
  console.log('Server is running on port 80');
});
