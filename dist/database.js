"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const pg_1 = require("pg");
//Credenciales de conexión con Postgres
exports.pool = new pg_1.Pool({
    user: 'postgres',
    host: 'localhost',
    password: '1234',
    database: 'hubre',
    port: 5432
});
