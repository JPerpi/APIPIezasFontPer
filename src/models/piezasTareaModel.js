const prisma = require('./prisma');

// Obtener todas las relaciones pieza–tarea
const getAllPiezasTarea = () =>
  prisma.piezasTarea.findMany({
    include: {
      pieza: true,
      tarea: true,
    },
  });

// Obtener las piezas asociadas a una tarea
const getPiezasByTareaId = (tareaId) =>
  prisma.piezasTarea.findMany({
    where: { tareaId: parseInt(tareaId) },
    include: {
      pieza: true,
    },
  });

// Añadir una pieza a una tarea
const addPiezaTarea = (data) =>
  prisma.piezasTarea.create({ data });

// Actualizar solo la cantidad
const updateCantidad = (id, cantidad) =>
  prisma.piezasTarea.update({
    where: { id: parseInt(id) },
    data: { cantidad },
  });

// Eliminar una pieza de una tarea
const deletePiezaTarea = (id) =>
  prisma.piezasTarea.delete({
    where: { id: parseInt(id) },
  });

module.exports = {
  getAllPiezasTarea,
  getPiezasByTareaId,
  addPiezaTarea,
  updateCantidad,
  deletePiezaTarea,
};
