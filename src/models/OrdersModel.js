import dbPool from '../config/database.js';

const getAllOrder = async () => {
  const SQLQuery = 'SELECT * FROM orders';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getOrderById = async (id) => {
  const SQLQuery = `SELECT * FROM orders WHERE id_order=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewOrder = async (body) => {
  const SQLQuery = `INSERT INTO orders(id_payment, order_price) VALUES('${body.id_payment}', '${body.order_price}')`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updateOrder = async (body, id) => {
  const SQLQuery = `UPDATE orders SET id_payment='${body.id_payment}', order_price='${body.order_price}' WHERE id_order=${id}`;
  const [result] = dbPool.execute(SQLQuery);
  return result;
};

const deleteAllOrder = async () => {
  const SQLQuery = 'DELETE FROM orders';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteOrderById = async (id) => {
  const SQLQuery = `DELETE FROM orders WHERE id_order=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

export const OrdersModel = { getAllOrder, getOrderById, createNewOrder, updateOrder, deleteAllOrder, deleteOrderById };
