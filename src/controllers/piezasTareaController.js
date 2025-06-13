const piezasTareaModel = require('../models/piezasTareaModel');

// Obtener todas las relaciones pieza–tarea
const getAllPiezasTarea = async (req, res) => {
  try {
    const asociaciones = await piezasTareaModel.getAllPiezasTarea();
    res.json(asociaciones);
  } catch (err) {
    res.status(500).json({ error: 'Error al obtener las piezas de tareas' });
  }
};

// Obtener todas las piezas de una tarea concreta
const getPiezasByTareaId = async (req, res) => {
  const { tareaId } = req.params;
  try {
    const piezas = await piezasTareaModel.getPiezasByTareaId(tareaId);
    res.json(piezas);
  } catch (err) {
    res.status(500).json({ error: 'Error al obtener piezas de la tarea' });
  }
};

// Añadir una pieza a una tarea
const createPiezaTarea = async (req, res) => {
  try {
    const nueva = await piezasTareaModel.addPiezaTarea(req.body);
    res.status(201).json(nueva);
  } catch (err) {
    res.status(500).json({ error: 'Error al asignar pieza a la tarea' });
  }
};

// Actualizar la cantidad de una relación
const updateCantidad = async (req, res) => {
  const { id } = req.params;
  const { cantidad } = req.body;

  try {
    const actualizada = await piezasTareaModel.updateCantidad(id, cantidad);
    res.json(actualizada);
  } catch (err) {
    res.status(500).json({ error: 'Error al actualizar la cantidad' });
  }
};

// Eliminar una pieza de una tarea
const deletePiezaTarea = async (req, res) => {
  const { id } = req.params;
  try {
    await piezasTareaModel.deletePiezaTarea(id);
    res.status(204).send();
  } catch (err) {
    res.status(500).json({ error: 'Error al eliminar la pieza de la tarea' });
  }
};

module.exports = {
  getAllPiezasTarea,
  getPiezasByTareaId,
  createPiezaTarea,
  updateCantidad,
  deletePiezaTarea,
};
