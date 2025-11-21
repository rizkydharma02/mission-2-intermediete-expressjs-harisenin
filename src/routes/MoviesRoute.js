import express from 'express';
import { MoviesController } from '../controller/MoviesController.js';

const router = express.Router();

// Create - Post Movies Endpoint
router.post('/', MoviesController.createNewMovie);

// Create - Post Bulk Movies Endpoint
router.post('/bulk', MoviesController.createBulkMovies);

// Read - Get All Movies Endpoint
router.get('/', MoviesController.getAllMovie);

// Read - Get Movie By Id Endpoint
router.get('/:id', MoviesController.getMovieById);

// Update - Patch Movies Endpoint
router.patch('/:id', MoviesController.updateMovie);

// Delete - Delete All Movies Endpoint
router.delete('/', MoviesController.deleteAllMovie);

// Delete - Delete Movies By Id Endpoint
router.delete('/:id', MoviesController.deleteMovieById);

export default router;
