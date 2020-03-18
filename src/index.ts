//import express from 'express'
import indexRoutes from './routes/index'
const cors = require('cors');
const express = require("express");
const request = require("request");
//require("dotenv").config();

const app = express();
const port = process.env.PORT || 3001;



//app.use(cors());
//Habilitando CORS(Intercambio de Recursos de Orígen Cruzado)
app.use((req: any, res: { header: (arg0: string, arg1: string) => void; }, next: () => void) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});

//Middlewares
app.use(express.json());
app.use(express.urlencoded({extended: false}));

//Routes
app.use(indexRoutes);

app.listen(port);
console.log('Server on port' , port);