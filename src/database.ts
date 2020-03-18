import { Pool } from "pg";

//Credenciales de conexión con Postgres
export const pool = new Pool({
    user: 'postgres',
    host: 'localhost',
    password: '1234',
    database: 'hubre',
    port: 5432
})