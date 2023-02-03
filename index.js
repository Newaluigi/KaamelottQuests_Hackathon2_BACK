const express = require('express');
const cors = require("cors")
const database = require("./config/db");
const app = express();

app.use(cors("*"))

app.get("/kingdoms",(req,res)=>{
    database
    .query("SELECT * FROM kingdoms")
    .then(([kingdoms])=>res.json(kingdoms))
    .catch((err)=>{
        console.error(err);
        res.status(500)
        .send("error retrieving data from database");
    });
});

app.get("/knights/:id",(req,res)=>{
    const id = req.params.id
    database
    .query("SELECT * FROM knights where id = ? ", id )
    .then(([knights])=>res.json(knights))
    .catch((err)=>{
        console.error(err);
        res.status(500)
        .send("error retrieving data from database");
    });
});

app.get("/quests",(req,res)=>{
    database
    .query("SELECT * FROM quests")
    .then(([quests])=>res.json(quests))
    .catch((err)=>{
        console.error(err);
        res.status(500)
        .send("error retrieving data from database");
    });
});

app.get("/knights",(req,res)=>{
    database
    .query("SELECT * FROM knights")
    .then(([knights])=>res.json(knights))
    .catch((err)=>{
        console.error(err);
        res.status(500)
        .send("error retrieving data from database");
    });
});


app.listen(4242,console.log("http://localhost:4242"))

