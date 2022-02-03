const projectRouter = require("./project");

const setupRoute = (app) => {
  app.use("/project", projectRouter);
};

module.exports = {
  setupRoute,
};
