import dbPool from '../config/database.js';

const getAllSeries = async () => {
  const SQLQuery = 'SELECT * FROM series';

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const getSeriesById = async (id) => {
  const SQLQuery = `SELECT * FROM series WHERE id_series=${id}`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createNewSeries = async (body) => {
  const SQLQuery = `INSERT INTO series(id_genre, series_title, series_subtitle, series_desc, series_year, series_classification, series_producer, series_cast, series_image, series_duration, amount_episode, series_rating, series_ongoing) VALUES('${body.id_genre}','${body.series_title}', '${body.series_subtitle}', '${body.series_desc}', ${body.series_year}, '${body.series_classification}', '${body.series_producer}', '${body.series_cast}', '${body.series_image}', '${body.series_duration}', '${body.amount_episode}', '${body.series_rating}', '${body.series_ongoing}')`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const createBulkSeries = async (body) => {
  if (!Array.isArray(body)) {
    throw new Error('Input must be an array');
  }

  const values = body.map((item) => [
    item.id_genre,
    item.series_title,
    item.series_subtitle,
    item.series_desc,
    item.series_year,
    item.series_classification,
    item.series_producer,
    item.series_cast,
    item.series_image,
    item.series_duration,
    item.amount_episode,
    item.series_rating,
    item.series_ongoing,
  ]);

  // single placeholder for bulk insert on nested array
  const SQLQuery = `INSERT INTO series (
    id_genre,
    series_title,
    series_subtitle,
    series_desc,
    series_year,
    series_classification,
    series_producer,
    series_cast,
    series_image,
    series_duration,
    amount_episode,
    series_rating,
    series_ongoing
    ) VALUES ?`;

  const [result] = await dbPool.query(SQLQuery, [values]);
  return result;
};

const updateSeries = async (body, id) => {
  const SQLQuery = `UPDATE series SET id_genre='${body.id_genre}', series_title='${body.series_title}', series_subtitle='${body.series_subtitle}', series_desc='${body.series_desc}', series_year=${body.series_year}, series_classification='${body.series_classification}', series_producer='${body.series_producer}', series_cast='${body.series_cast}', series_image='${body.series_image}', series_duration='${body.series_duration}', amount_episode='${body.amount_episode}', series_rating='${body.series_rating}', series_ongoing='${body.series_ongoing}' WHERE id_series=${id}`;

  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteAllSeries = async () => {
  const SQLQuery = 'DELETE FROM series';
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

const deleteSeriesById = async (id) => {
  const SQLQuery = `DELETE FROM series WHERE id_series=${id}`;
  const [result] = await dbPool.execute(SQLQuery);
  return result;
};

export const SeriesModel = { getAllSeries, getSeriesById, createNewSeries, createBulkSeries, updateSeries, deleteAllSeries, deleteSeriesById };
