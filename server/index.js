require("dotenv").config();

const express = require("express");
const cors = require("cors");
const helmet = require("helmet");
const compression = require("compression");

const app = express();

app.use(cors());
app.use(helmet());
app.use(compression());
app.use(express.json());

app.get("/", (req, res) => {
  res.json({
    app: "LeadMaps AI",
    company: "Investment Technology Indonesia",
    status: "API Running"
  });
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`🚀 LeadMaps AI API running on http://localhost:${PORT}`);
});
