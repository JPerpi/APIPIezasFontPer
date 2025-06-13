// src/models/tipoPiezaModel.js
const prisma = require('./prisma'); // o la ruta que uses

const getAllTiposPieza = () => {
  return prisma.tipopieza.findMany(); // 👈 asegúrate de que el modelo se llama así en Prisma
};

const getTipoPiezaById = (id) => {
  return prisma.tipopieza.findUnique({ where: { id: parseInt(id) } });
};

const createTipoPieza = (data) => {
  return prisma.tipopieza.create({ data });
};

const updateTipoPieza = (id, data) => {
  return prisma.tipopieza.update({
    where: { id: parseInt(id) },
    data,
  });
};

const deleteTipoPieza = (id) => {
  return prisma.tipopieza.delete({ where: { id: parseInt(id) } });
};

module.exports = {
  getAllTiposPieza,
  getTipoPiezaById,
  createTipoPieza,
  updateTipoPieza,
  deleteTipoPieza,
};
