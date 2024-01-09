let mysql = require('mysql');
let util = require('util');

let con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "unajmagame"
});

con.query = util.promisify(con.query);

async function getResults() {
  let results;
  try {
    await con.connect();
    let sql = "SELECT * FROM usuario";
    results = await con.query(sql);
  } catch (err) {
    console.error(err);
  } finally {
    con.end();
  }
  return results;
}

async function main() {
  let data = await getResults();
  console.log(data);
}

main();
