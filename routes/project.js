// Create the router object that will manage all operations on project
const projectRouter = require("express").Router();
// Import the project model that we'll need in controller functions
const Project = require("../model/project");

//GET / project
projectRouter.get("/", (req, res) => {
  Project.findAll()
    .then((project) => {
      res.json(project);
    })
    .catch((err) => {
      res.status(500).send("Error retrieving datas from base");
    });
});

//GET / project/id
projectRouter.get("/:id", (req, res) => {
  Project.findOne(req.params.id)
    .then((project) => {
      if (project.length) res.status(201).json(project);
      else res.status(404).send("Project not found");
    })
    .catch((err) => {
      res.status(500).send("Error retrieving data from base");
    });
});

//GET / project/id/techno
projectRouter.get("/:id/techno", (req, res) => {
  Project.findTechno(req.params.id)
    .then((project) => {
      res.status(200).json(project);
    })
    .catch((err) => {
      res.status(500).send("Error retrieving datas from base");
    });
});

module.exports = projectRouter;
