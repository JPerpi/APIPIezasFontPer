const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();

app.use(cors());
app.use(express.json());

// Rutas
app.use('/piezas', require('./routes/piezaRoutes'));
app.use('/tareas', require('./routes/tareaRoutes'));
app.use('/piezas-tarea', require('./routes/piezasTareaRoutes'));
app.use('/tipos-pieza', require('./routes/tipoPiezaRoutes'));

app.listen(3000, () => {
  console.log('Servidor API corriendo en http://localhost:3000');
});
