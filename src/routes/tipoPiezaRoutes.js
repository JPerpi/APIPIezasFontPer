const express = require('express');
const router = express.Router();
const tipoPiezaController = require('../controllers/tipoPiezaController');

router.get('/', tipoPiezaController.getAllTiposPieza);
router.get('/:id', tipoPiezaController.getTipoPiezaById);


/* router.post('/', tipoPiezaController.createTipoPieza);
router.put('/:id', tipoPiezaController.updateTipoPieza);
router.delete('/:id', tipoPiezaController.deleteTipoPieza); */

module.exports = router;
