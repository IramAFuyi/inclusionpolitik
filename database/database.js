const { createPool
} = require('mysql');

const pool = createPool({
    host:"localhost",
    user: "root",
    password: "",
    database:"inclusionpolitik",
    connectionLimit: 20
})

pool.query('select * from usuarios where id=? ',[],
(Nombres, Apellidos, fecha_nacimiento, email, password_,created_,at )=>{
    if(err){
        return console.log(err);
    }
    return console.log(result);
})