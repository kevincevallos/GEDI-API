import { Router } from "express";
import { getUsers, getUserbyId } from "../controllers/index.controller";
const router = Router();

//Creación de las rutas
router.get('/users', getUsers);
router.get('/users/:id', getUserbyId);
//router.post('/users', createUser);
//router.put('/users/:id', getUsers);
//router.delete('/users/:id', getUsers);

export default router;