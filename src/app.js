const express = require("express");
const mysql = require("mysql");
const { engine } = require("express-handlebars");
const myconnection = require("express-myconnection");
const bodyparser = require("body-parser");
const session = require("express-session");

const loginRoutes = require("./routes/login");
const assetsRoutes = require("./routes/assets");
const app = express();

app.set("port", 4000);
app.set("views", __dirname + "/views");
app.engine(
    ".hbs",
    engine({
        extname: ".hbs",
    })
);
app.set("view engine", "hbs");
app.use(
    bodyparser.urlencoded({
        extended: true,
    })
);
app.use(bodyparser.json());
app.use(
    myconnection(mysql, {
        host: "localhost",
        user: "root",
        password: "",
        port: 3306,
        database: "unajmagame",
    })
);
app.use(
    session({
        secret: "secret",
        resave: true,
        saveUninitialized: true,
    })
);

app.get("/", (req, res) => {
    if (req.session.loggedin) {
        res.render("home");
    } else {
        res.redirect("/login");
    }
});
app.get("/biblioteca", (req, res) => {
    if (req.session.loggedin) {
        res.render("biblioteca");
    } else {
        res.redirect("/login");
    }
});
app.get("/search", (req, res) => {
    if (req.session.loggedin) {
        res.render("search");
    } else {
        res.redirect("/login");
    }
});
app.get("/shop", (req, res) => {
    if (req.session.loggedin) {
        res.render("shop");
    } else {
        res.redirect("/login");
    }
});

app.get("/getResults", async (req, res) => {
    let results;
    try {
        let idUsuario = req.session.name;

        if (!idUsuario) {
            return res.status(400).send("Falta el parámetro id");
        }

        let sql = "SELECT * FROM games WHERE user = ?";
        req.getConnection((err, conn) => {
            if (err) return res.send(err);

            conn.query(sql, [idUsuario], (err, rows) => {
                if (err) return res.send(err);

                res.json(rows);
            });
        });
    } catch (err) {
        console.error(err);
        res.sendStatus(500);
    }
});

app.post("/insert", async (req, res) => {
    try {
        let id = req.body.id;
        let title = req.body.title;
        let keyimage =`${req.body.keyimage}`;
        let description = req.body.description;
        let user = req.session.name;

        let sql = "INSERT INTO games (id, title, keyimage, description, user) VALUES (?, ?, ?, ?, ?)";
        req.getConnection((err, conn) => {
            if (err) return res.send(err);

            conn.query(sql, [id, title, keyimage, description, user], (err, rows) => {
                if (err) return res.send(err);
            });
        });
    } catch (err) {
        console.error(err);
        res.sendStatus(500);
    }
});

app.listen(app.get("port"), () => {
    console.log(`Listening on port ${app.get("port")}...`);
});
app.use("/", loginRoutes);
app.use("/", assetsRoutes);
