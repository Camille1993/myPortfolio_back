require("dotenv").config;
const express = require("express");
const connection = require("./db-config");
const app = express();
const cors = require("cors");
const { setupRoute } = require("./routes");

const port = process.env.PORT || 5000;

/**
 * test connection
 */
connection.connect((err) => {
  if (err) {
    console.error("error connection" + err.stack);
  } else {
    console.log("connected as id " + connection.threadId);
  }
});

const corsOption = {
  origin: "http://localhost:3000",
  optionSuccessStatus: 200,
};
app.use(cors(corsOption));
app.use(express.json());
setupRoute(app);

app.listen(port, () => {
  console.log(`Server listening on port ${port}`);
});
