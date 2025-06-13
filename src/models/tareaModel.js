const prisma = require('./prisma');

// Obtener todas las tareas (sin incluir piezas)
const getAllTareas = () =>
  prisma.tarea.findMany();

// Obtener una tarea por ID (sin incluir piezas)
const getTareaById = (id) =>
  prisma.tarea.findUnique({
    where: { id: parseInt(id) },
  });

// Crear nueva tarea
const createTarea = (data) =>
  prisma.tarea.create({ data });

// Actualizar tarea existente
const updateTarea = (id, data) =>
  prisma.tarea.update({
    where: { id: parseInt(id) },
    data,
  });

// Eliminar tarea
const deleteTarea = (id) =>
  prisma.tarea.delete({
    where: { id: parseInt(id) },
  });

module.exports = {
  getAllTareas,
  getTareaById,
  createTarea,
  updateTarea,
  deleteTarea,
};
