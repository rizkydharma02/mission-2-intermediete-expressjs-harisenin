import { MylistModel } from '../models/MylistModel.js';

const getAllMylist = async (req, res) => {
  try {
    const result = await MylistModel.getAllMylist();
    res.status(200).json({
      message: 'Successfully get all mylist',
      data: result,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

const getMylistById = async (req, res) => {
  const { id } = req.params;

  if (!id) {
    return res.status(400).json({
      message: 'Bad Request: Missing required mylist id',
      data: null,
    });
  }

  try {
    const result = await MylistModel.getMylistById(id);
    res.status(200).json({
      message: 'Successfully get mylist by id',
      data: result,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

const createNewMylist = async (req, res) => {
  const { body } = req;

  if (!body.id_user || !body.id_movie || !body.id_series || !body.list_image) {
    return res.status(400).json({
      message: 'Bad Request: Missing required mylist fields',
      data: null,
    });
  }

  try {
    await MylistModel.createNewMylist(body);
    res.status(201).json({
      message: 'Successfully created new mylist',
      data: body,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

const updateMylist = async (req, res) => {
  const { id } = req.params;
  const { body } = req;

  if (!id) {
    return res.status(400).json({
      message: 'Bad Request: Missing required mylist id',
      data: null,
    });
  }

  try {
    await MylistModel.updateMylist(body, id);
    res.status(200).json({
      message: 'Successfully updated mylist by id',
      data: {
        id: id,
        ...body,
      },
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

const deleteAllMylist = async (req, res) => {
  try {
    await MylistModel.deleteAllMylist();
    res.status(200).json({
      message: 'Successfully deleted all mylist',
      data: null,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

const deleteMylistById = async (req, res) => {
  const { id } = req.params;

  if (!id) {
    return res.status(400).json({
      message: 'Bad Request: Missing required mylist id',
      data: null,
    });
  }

  try {
    await MylistModel.deleteMylistById(id);
    res.status(200).json({
      message: 'Successfully deleted mylist by id',
      data: null,
    });
  } catch (error) {
    res.status(500).json({
      message: 'Internal Server Error',
      error: error.message,
    });
  }
};

export const MylistController = {
  getAllMylist,
  getMylistById,
  createNewMylist,
  updateMylist,
  deleteAllMylist,
  deleteMylistById,
};
