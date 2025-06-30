var mysql = require('mysql');
var connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "password",
  database: 'artgallery' 
});

connection.connect(function(error){
  if (error){
    throw error;
}
else{
  console.log("Connected!");
}
});

module.exports= connection;