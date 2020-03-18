"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const index_controller_1 = require("../controllers/index.controller");
const router = express_1.Router();
//Creación de las rutas
router.get('/users', index_controller_1.getUsers);
router.get('/users/:id', index_controller_1.getUserbyId);
//router.post('/users', createUser);
//router.put('/users/:id', getUsers);
//router.delete('/users/:id', getUsers);
exports.default = router;
