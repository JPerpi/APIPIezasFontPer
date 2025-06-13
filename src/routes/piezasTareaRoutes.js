const express = require('express');
const router = express.Router();
const piezasTareaController = require('../controllers/piezasTareaController');

router.get('/', piezasTareaController.getAllPiezasTarea);
router.get('/:tareaId', piezasTareaController.getPiezasByTareaId);
router.post('/', piezasTareaController.createPiezaTarea);
router.put('/:id', piezasTareaController.updateCantidad);
router.delete('/:id', piezasTareaController.deletePiezaTarea);

module.exports = router;
