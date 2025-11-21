import express from 'express';
import { OrdersController } from '../controller/OrdersController.js';

const router = express.Router();

// Create - Post Orders Endpoint
router.post('/', OrdersController.createNewOrder);

// Read - Get All Orders Endpoint
router.get('/', OrdersController.getAllOrder);

// Read - Get Orders By Id Endpoint
router.get('/:id', OrdersController.getOrderById);

// Update - Patch Orders Endpoint
router.patch('/:id', OrdersController.updateOrder);

// Delete - Delete All Orders Endpoint
router.delete('/', OrdersController.deleteAllOrder);

// Delete - Delete Orders By Id Endpoint
router.delete('/:id', OrdersController.deleteOrderById);

export default router;
