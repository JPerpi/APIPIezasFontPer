const piezaModel =  require ('../models/piezaModel');

const getAllPiezas = async (req, res) => {
    try {
        const piezas =  await piezaModel.getAllPiezas();
        res.json(piezas);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener las piezas.'});
    }
};

const getPiezasById =  async (req, res) => {
    const { id } = req.query;
    try {
        const pieza= await piezaModel.getPiezaById(id);
        if (!pieza) return res.status(404).json({ error: 'Pieza no encontrada.'});
        res.json(pieza);
    } catch (err) {
        res.status(500).json({ error: 'Error al obtener la pieza.'});
    }
};

const getPiezasByMaterial = async (req, res) => {
    const {material } = req.query;
    try {
        const piezas = await piezaModel.getPiezasByMaterial(material);
        res.json(piezas);
    } catch (err) {
        res.status(500).json({ error: 'Error al filtrar por material'});
    }
};

const getPiezasByTipo = async (req,res) => {
    const { tipo_id } = req.query;
    try {
        const piezas = await piezaModel.getPiezasByTipo(tipo_id);
        res.json(piezas);
    } catch (err) {
        res.status(500).json({ error: 'Eror al filtrar por tipo'});
    }
};

const crearPieza = async (req, res) => {
    try {
        const nuevaPieza = await piezaModel.createPieza(req.body);
        res.status(201).json(nuevaPieza);
    } catch(err) {
        res.status(500).json({ error: 'Error al crear la pieza.' });
    }
};

const updatePieza = async (req, res) => {
    const { id } =  req.params;
    try {
        const piezaUpdated =  await piezaModel.updatePieza(id, req.body);
        res.json(piezaUpdated);
    } catch (err) {
        res.status(500).json({ error: 'Error al actualizar la pieza.' });
    }
};

const eliminarPieza = async (req,res) => {
    const { id } = req.params;
    try {
        await piezaModel.deletePieza(id);
        res.status(204).send();
    } catch (err) {
        res.status(500).json({ error: 'Error al eliminar la pieza.'});
    }
};

module.exports = {
    getAllPiezas,
    getPiezasById,
    getPiezasByMaterial,
    getPiezasByTipo,
    crearPieza,
    updatePieza,
    eliminarPieza
};