const prisma = require('./prisma');

// Obtener todas las relaciones pieza–tarea
const getAllPiezasTarea = () =>
  prisma.piezastarea.findMany({
    include: {
      pieza: true,
      tarea: true,
    },
  });

// Obtener las piezas asociadas a una tarea
const getPiezasByTareaId = (tareaId) =>
  prisma.piezastarea.findMany({
    where: { tarea_id: parseInt(tareaId) },
    include: {
      pieza: true,
    },
  });

// Añadir una pieza a una tarea
const addPiezaTarea = (data) =>
  prisma.piezastarea.create({ data });

// Actualizar solo la cantidad
const updateCantidad = (id, cantidad) =>
  prisma.piezastarea.update({
    where: { id: parseInt(id) },
    data: { cantidad },
  });

// Eliminar una pieza de una tarea
const deletePiezaTarea = (id) =>
  prisma.piezastarea.delete({
    where: { id: parseInt(id) },
  });

module.exports = {
  getAllPiezasTarea,
  getPiezasByTareaId,
  addPiezaTarea,
  updateCantidad,
  deletePiezaTarea,
};
