const tareaModel = require('../models/tareaModel');

const getAllTareas =  async (req, res) => {
    try {
        const tareas = await tareaModel.getAllTareas();
        res.json(tareas);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener las tareas.' });
    }
};

const getTareaById =  async (req, res) => {
    const {id } = req.params;
    try {
        const tarea = await tareaModel.getTareaById(id);
        if (!tarea) return res.status(404).json({ error: 'Tarea no encontrada.'});
        res.json(tarea);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener la tarea.' });
    }
};

const crearTarea =  async (req, res) => {
    try {
        const nuevaTarea = await tareaModel.createTarea();
        res.status(201).json(nuevaTarea);
    } catch (err) {
        res.status(500).json({ error: 'Error al crear la tarea.' });
    }
};

const updateTarea = async (req, res) => {
  const { id } = req.params;
  try {
    const tareaUpdated = await tareaModel.updateTarea(id, req.body);
    res.json(tareaUpdated);
  } catch (err) {
    res.status(500).json({ error: 'Error al actualizar la tarea' });
  }
};

const eliminarTarea = async (req, res) => {
  const { id } = req.params;
  try {
    await tareaModel.deleteTarea(id);
    res.status(204).send();
  } catch (err) {
    res.status(500).json({ error: 'Error al eliminar la tarea' });
  }
};

module.exports = {
    getAllTareas,
    getTareaById,
    crearTarea,
    updateTarea,
    eliminarTarea
};