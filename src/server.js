const express = require('express');
const path = require('path');
const app = express();

// Define the port for the server
const PORT = process.env.PORT || 3000;

// Serve the React app's static files
app.use(express.static(path.join(__dirname, 'build')));

// Health check endpoint
app.get('/health', (req, res) => {
  res.status(200).send('Healthy'); // Respond with a 200 status to indicate the app is healthy
});

// Catch-all route to serve the React app for any other requests
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'build', 'index.html'));
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
