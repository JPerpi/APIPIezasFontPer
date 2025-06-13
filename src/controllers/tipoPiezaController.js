const tipoPiezaModel = require('../models/tipoPiezaModel');

const getAllTiposPieza = async (req, res) => {
    try {
        const tipos = await tipoPiezaModel.getAllTiposPieza();
        res.json(tipos);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener los tiposd e pieza.'});
    }
};

const getTipoPiezaById = async (req, res) => {
    const { id } =req.params;
    try {
        const tipo = await tipoPiezaModel.getTipoPiezaById(id);
        if (!tipo) return res.status(404).json({error: 'Tipo de pieza no encontrado.'});
        res.json(tipo);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener el tipo de pieza.'});
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
