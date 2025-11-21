import dbPool from '../config/database.js';

const getAllPacket = async () => {
  const SQLQuery = 'SELECT * FROM packets';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getPacketById = async (id) => {
  const SQLQuery = `SELECT * FROM packets WHERE id_packet=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewPacket = async (body) => {
  const SQLQuery = `INSERT INTO packets(packet_name, packet_status) VALUES('${body.packet_name}', '${body.packet_status}')`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const updatePacket = async (body, id) => {
  const SQLQuery = `UPDATE packets SET packet_name='${body.packet_name}', packet_status='${body.packet_status}' WHERE id_packet=${id}}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllPacket = async () => {
  const SQLQuery = 'DELETE FROM packets';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deletePacketById = async (id) => {
  const SQLQuery = `DELETE FROM packets WHERE id_packet=${id}`;
  const [result] = dbPool.execute(SQLQuery);
  return result;
};

export const PacketsModel = { getAllPacket, getPacketById, createNewPacket, updatePacket, deleteAllPacket, deletePacketById };
