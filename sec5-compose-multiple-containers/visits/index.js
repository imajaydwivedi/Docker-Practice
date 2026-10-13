const express = require('express');
const redis = require('redis');
const process = require('process')

const app = express();
const client = redis.createClient({
    host: 'redis-server',
    port: 6379
});
client.set('visits', 0);

app.get('/', (req, res) => {
    client.get('visits', (err, visits) => {
        res.send(`
            <p>Number of visits is ${visits}</p>
            <p>
            <form method="POST" action="/stop">
                <button type="submit">Stop the server</button>
            </form>
            </p>

            <p>
            <form method="POST" action="/crash">
                <button type="submit">Crash the server</button>
            </form>
            </p>
        `);
        client.set('visits', parseInt(visits)+1);
    })
});

app.post('/stop', (req, res) => {
    res.send('Server is stopping...');
    // exit once the response has been flushed so the browser gets a reply
    res.on('finish', () => process.exit(0));
});

app.post('/crash', (req, res) => {
    res.send('Crashing the server...');
    // exit once the response has been flushed so the browser gets a reply
    res.on('finish', () => process.exit(1));
});

app.listen(8081, () => {
    console.log('Listening on port 8081');
});

