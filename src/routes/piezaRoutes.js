const express = require('express');
const router = express.Router();
const piezaController = require('../controllers/piezaController');

router.get('/', piezaController.getAllPiezas);
router.get('/:id', piezaController.getPiezaById);
router.get('/filtro/material', piezaController.getPiezasByMaterial);
router.get('/filtro/tipo', piezaController.getPiezasByTipo);

// ⚠️ Estas no se exponen públicamente si el usuario no puede usarlas
// router.post('/', piezaController.createPieza);
// router.put('/:id', piezaController.updatePieza);
// router.delete('/:id', piezaController.deletePieza);

module.exports = router;
