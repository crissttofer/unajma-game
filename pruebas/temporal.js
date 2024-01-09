fetch('http://localhost:3000/insert', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    nombre: 'Juan',
    edad: 30,
  }),
})
.then(response => response.text())
.then(data => console.log(data))
.catch((error) => {
  console.error('Error:', error);
});
