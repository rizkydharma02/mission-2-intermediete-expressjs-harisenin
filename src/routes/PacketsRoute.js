import express from 'express';
import { PacketsController } from '../controller/PacketsController.js';

const router = express.Router();

// Create - Post Packets Endpoint
router.post('/', PacketsController.createNewPacket);

// Read - Get All Packets Endpoint
router.get('/', PacketsController.getAllPacket);

// Read - Get Packets By Id Endpoint
router.get('/:id', PacketsController.getPacketById);

// Update - Patch Packets Endpoint
router.patch('/:id', PacketsController.updatePacket);

// Delete - Delete All Packets Endpoint
router.delete('/', PacketsController.deleteAllPacket);

// Delete - Delete Packets By Id Endpoint
router.delete('/:id', PacketsController.deletePacketById);

export default router;
