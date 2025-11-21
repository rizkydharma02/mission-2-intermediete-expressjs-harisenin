import dbPool from '../config/database.js';

const getAllUser = async () => {
  const SQLQuery = 'SELECT * FROM users';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getUserById = async (id) => {
  const SQLQuery = `SELECT * FROM users WHERE id_user=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewUser = async (body) => {
  const SQLQuery = `INSERT INTO users(username, password) VALUES('${body.username}', '${body.password}')`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updateUser = async (body, id) => {
  const SQLQuery = `UPDATE users SET username='${body.username}', password='${body.password}' WHERE id_user=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllUser = async () => {
  const SQLQuery = 'DELETE FROM users';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteUserById = async (id) => {
  const SQLQuery = `DELETE FROM users WHERE id_user=${id}`;
  const [result] = await dbPool.execute.apply(SQLQuery);
  return result;
};

export const UsersModel = { getAllUser, getUserById, createNewUser, updateUser, deleteAllUser, deleteUserById };
