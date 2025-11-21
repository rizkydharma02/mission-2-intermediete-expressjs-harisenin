import dbPool from '../config/database.js';

const getAllMylist = async () => {
  const SQLQuery = 'SELECT * FROM my_list';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getMylistById = async (id) => {
  const SQLQuery = `SELECT * FROM my_list WHERE id_mylist=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewMylist = async (body) => {
  const SQLQuery = `INSERT INTO my_list(id_user, id_movie, id_series, list_image) VALUES('${body.id_user}', '${body.id_movie}', '${body.id_series}', '${body.list_image}')`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updateMylist = async (body, id) => {
  const SQLQuery = `UPDATE my_list SET id_user='${body.id_user}', id_movie='${body.id_movie}', id_series='${body.id_series}', list_image='${body.list_image}' WHERE id_mylist=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllSeries = async () => {
  const SQLQuery = 'DELETE FROM my_list';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteSeriesById = async (id) => {
  const SQLQuery = `DELETE FROM my_list WHERE id_mylist=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

export const MylistModel = { getAllMylist, getMylistById, createNewMylist, updateMylist, deleteAllSeries, deleteSeriesById };
