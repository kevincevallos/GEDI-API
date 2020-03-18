import { Request, Response } from "express";
import { pool } from "../database";
import { QueryResult } from "pg";
    
export const getUsers = async (req: Request, res: Response): Promise<Response> => {

    try {
        const response: QueryResult = await pool.query('SELECT * FROM clientes');
        //console.log(response.rows);
        return res.status(200).json(response.rows);
    }
    catch (error) {
    console.log(error)
    return res.status(500).json('Internal Server Error')
    }

}
    
export const getUserbyId = async (req:Request, res:Response): Promise<Response> => {
        const id = parseInt(req.params.id)
        const response: QueryResult = await pool.query('SELECT * FROM clientes WHERE id = $1',[id]);
        return res.json(response.rows);
}

/*export const createUser = (req:Request, res: Response): Promise<Response> =>{
    const { name, email } = req.body;
    pool.query('INSERT INTO users (name, email')
    console.log(name, email)
    res.send('Recibido')
}*/