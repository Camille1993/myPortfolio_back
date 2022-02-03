const connection = require("../db-config");

const db = connection.promise();

const findAll = () => {
  return db.query("SELECT * FROM project").then(([results]) => results);
};

const findOne = (id) => {
  return db
    .query("SELECT * FROM project WHERE id = ?", [id])
    .then(([results]) => results);
};

const findTechno = (id) => {
  return db
    .query(
      "SELECT technologie.name FROM technologie INNER JOIN project_techno ON technologie.id = project_techno.technologie_id INNER JOIN project ON project.id = project_techno.project_id WHERE project.id = ?",
      [id]
    )
    .then(([results]) => results);
};

module.exports = {
  findAll,
  findOne,
  findTechno,
};
