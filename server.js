const ronin = require("ronin-server");
const mocks = require("ronin-mocks");
const database = require("ronin-database");
const server = ronin.server();

// process.env.CONNECTIONSTRING=mongodb://mongodb:27017/notes
database.connect(process.env.CONNECTIONSTRING);

server.use("/foo", (req, res) => {
  return res.json({ foo: "bar" });
});

server.use("/", mocks.server(server.Router(), false, false));
server.start();
