import dbPool from '../config/database.js';

const getAllPayment = async () => {
  const SQLQuery = 'SELECT * FROM payments';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getPaymentById = async (id) => {
  const SQLQuery = `SELECT * FROM payments WHERE id_payment=${id}`;
  const [result] = dbPool.execute(SQLQuery);
  return result;
};

const createNewPayment = async (body) => {
  const SQLQuery = `INSERT INTO payments(id_packet, payment_price, code_voucher, payment_method, payment_status) VALUES('${body.id_packet}', '${body.payment_price}', '${body.code_voucher}', '${body.payment_method}', '${body.payment_status}')`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updatePayment = async (body, id) => {
  const SQLQuery = `UPDATE payments SET id_packet='${body.id_packet}', payment_price='${body.payment_price}', code_voucher='${body.code_voucher}', payment_method='${body.payment_method}', payment_status='${body.payment_status}' WHERE id_payment=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllPayment = async () => {
  const SQLQuery = 'DELETE FROM payments';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deletePaymentById = async (id) => {
  const SQLQuery = `DELETE FROM payments WHERE id_payment=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

export const PaymentsModel = { getAllPayment, getPaymentById, createNewPayment, updatePayment, deleteAllPayment, deletePaymentById };
