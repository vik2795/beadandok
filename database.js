import sqlite3 from "sqlite3";

const db = new sqlite3.Database("./database.sqlite");

const initializeDB = async () => {
    // await dbRun("DROP TABLE IF EXISTS users")
    await dbRun("CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT)");

    // const users = [
    //      {
    //            id:"01"
    //           firstName:"Geronadzo",
    //           lastName:"Mária",
    //            email:"gerimari@turorudi.com"
    //      },
    
     //          {  id:"02"
    //           firstName:"Vakasáblás",
     //           lastName:"Vladimir",
        //            email:"vaklada@turorudi.com"
        //      },
        
 //         {
            //              id:"03"
            //           firstName:"Bokros",
             //           lastName:"Garnéla",
            //            email:"bogee@turorudi.com"
            //      }

    // ];
    
    // for (const user of users) {
    //     await dbRun("INSERT INTO users (name, email) VALUES (?, ?)", [user.name, user.email]);
    // }
};

function dbQuery(sql, params = []) {
    return new Promise((resolve, reject) => {
        db.all(sql, params, (err, rows) => {
            if (err) reject(err);
            else resolve(rows);
        });
    });
}

function dbRun(sql, params = []) {
    return new Promise((resolve, reject) => {
        db.run(sql, params, function (err) {
            if (err) reject(err);
            else resolve(this);
        });
    });
}

export { db, dbQuery, dbRun, initializeDB };