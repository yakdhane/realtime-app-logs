
const term = new Terminal();
term.open(document.getElementById('terminal'));

const socket = io();

socket.on('connect', () => {
  console.log('Connected to server');
});

socket.on('disconnect', () => {
  console.log('Disconnected from server');
});

socket.on('log', (log) => {
  term.write(log);
});
