const prisma = require('./prisma');

// Obtener todas las tareas (sin incluir piezas)
const getAllTareas = () =>
  prisma.tareas.findMany();

// Obtener una tarea por ID (sin incluir piezas)
const getTareaById = (id) =>
  prisma.tareas.findUnique({
    where: { id: parseInt(id) },
  });

// Crear nueva tarea
const createTarea = (data) =>
  prisma.tareas.create({ data });

// Actualizar tarea existente
const updateTarea = (id, data) =>
  prisma.tareas.update({
    where: { id: parseInt(id) },
    data,
  });

// Eliminar tarea
const deleteTarea = (id) =>
  prisma.tareas.delete({
    where: { id: parseInt(id) },
  });

module.exports = {
  getAllTareas,
  getTareaById,
  createTarea,
  updateTarea,
  deleteTarea,
};
