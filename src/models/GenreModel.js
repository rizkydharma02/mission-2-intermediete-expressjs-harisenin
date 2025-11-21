import dbPool from '../config/database.js';

const getAllGenre = async () => {
  const SQLQuery = 'SELECT * FROM genre';

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getGenreById = async (id) => {
  const SQLQuery = `SELECT * FROM genre WHERE id_genre=${id}`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewGenre = async (body) => {
  const SQLQuery = `INSERT INTO genre(genre_title) VALUES('${body.genre_title}')`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updateGenre = async (body, id) => {
  const SQLQuery = `UPDATE genre SET genre_title='${body.genre_title}' WHERE id_genre=${id}`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllGenre = async () => {
  const SQLQuery = 'DELETE FROM genre';

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteGenreById = async (id) => {
  const SQLQuery = `DELETE FROM genre WHERE id_genre=${id}`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

export const GenreModel = { getAllGenre, getGenreById, createNewGenre, updateGenre, deleteAllGenre, deleteGenreById };
