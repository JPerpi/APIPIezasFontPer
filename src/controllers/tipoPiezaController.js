const tipoPiezaModel = require('../models/tipoPiezaModel');

const getAllTiposPieza = async (req, res) => {
    try {
        const tipos = await tipoPiezaModel.getAllTiposPieza();
       if (!tipos || tipos.length === 0) {
      return res.status(200).json({ message: 'No hay tipos de pieza registrados.' });
    }

    res.json(tipos);
  } catch (err) {
    console.error('❌ Error en getAllTiposPieza:', err);
    res.status(500).json({ error: 'Error al obtener los tipos de pieza.', detail: err.message });
  }
};

const getTipoPiezaById = async (req, res) => {
     const { id } = req.params;
  try {
    const tipo = await tipoPiezaModel.getTipoPiezaById(id);

    if (!tipo) {
      return res.status(404).json({ message: `No existe un tipo de pieza con ID ${id}` });
    }

    res.json(tipo);
  } catch (err) {
    console.error('❌ Error en getTipoPiezaById:', err);
    res.status(500).json({ error: 'Error al obtener el tipo de pieza', detail: err.message });
  }
};

// Crear un nuevo tipo de pieza
const createTipoPieza = async (req, res) => {
  try {
    const nuevo = await tipoPiezaModel.createTipoPieza(req.body);
    res.status(201).json(nuevo);
  } catch (err) {
    res.status(500).json({ error: 'Error al crear el tipo de pieza' });
  }
};

// Actualizar un tipo de pieza
const updateTipoPieza = async (req, res) => {
  const { id } = req.params;
  try {
    const actualizado = await tipoPiezaModel.updateTipoPieza(id, req.body);
    res.json(actualizado);
  } catch (err) {
    res.status(500).json({ error: 'Error al actualizar el tipo de pieza' });
  }
};

// Eliminar un tipo de pieza
const deleteTipoPieza = async (req, res) => {
  const { id } = req.params;
  try {
    await tipoPiezaModel.deleteTipoPieza(id);
    res.status(204).send();
  } catch (err) {
    res.status(500).json({ error: 'Error al eliminar el tipo de pieza' });
  }
};

module.exports = {
  getAllTiposPieza,
  getTipoPiezaById,
  createTipoPieza,
  updateTipoPieza,
  deleteTipoPieza,
};
