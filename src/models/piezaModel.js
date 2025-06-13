const prisma = require('./prisma');

// Obtener todas las piezas
const getAllPiezas = () => prisma.pieza.findMany();

// Obtener una pieza por ID
const getPiezaById = (id) =>
  prisma.pieza.findUnique({
    where: { id: parseInt(id) },
  });

// Obtener piezas por material
const getPiezasByMaterial = (material) =>
  prisma.pieza.findMany({
    where: { material },
  });

// Obtener piezas por tipo_id
const getPiezasByTipo = (tipo_id) =>
  prisma.pieza.findMany({
    where: { tipo_id: parseInt(tipo_id) },
  });

// Crear nueva pieza
const createPieza = (data) =>
  prisma.pieza.create({ data });

// Actualizar pieza existente
const updatePieza = (id, data) =>
  prisma.pieza.update({
    where: { id: parseInt(id) },
    data,
  });

// Eliminar pieza (uso restringido)
const deletePieza = (id) =>
  prisma.pieza.delete({
    where: { id: parseInt(id) },
  });

module.exports = {
  getAllPiezas,
  getPiezaById,
  getPiezasByMaterial,
  getPiezasByTipo,
  createPieza,
  updatePieza,
  deletePieza,
};
