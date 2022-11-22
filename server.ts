import express from "express";

const app = express();

////////////////////////////////////////
/// Start Pipeline

app.use((req, res, next) => {
  const query = req.query && Object.keys(req.query).length > 0
    ? `?${Object.entries(req.query).map(([key, val]) => `${key}=${val}`).join("&")}`
    : "";
  console.log(`=> ${req.method} ${req.path}${query}`);
  next();
});

app.use((req, res) => {
  console.log("404: Not Found");
  res.status(404).send("Not Found");
});

/// End Pipeline
////////////////////////////////////////

const port = 8080;
app.listen(port, () => console.log(`Listening on port ${port}!`));
