var db = require('../connection/dbconnection');
const Bcrypt = require('bcrypt');

var salt = Bcrypt.genSaltSync();


var user={
	getAllUser:function(callback){
		return db.query("SELECT * FROM USER",callback);
	},
	getUserById:function(id,callback){
		return db.query("SELECT * FROM USER WHERE ID=?",[id],callback);
	},
	addUser:function(user,callback){
		return db.query("INSERT INTO USER(USERNAME,PASSWORD,ADDRESS,EMAIL) values(?,?,?,?)",[user.USERNAME,Bcrypt.hashSync(user.PASSWORD, salt),user.ADDRESS,user.EMAIL],callback);
	},
	deleteUser:function(id,callback){
		return db.query("DELETE FROM USER WHERE ID=?",[id],callback);
	},
	updateUser:function(id,user,callback){
		return db.query("UPDATE USER SET USERNAME=?,PASSWORD=?,ADDRESS=?,EMAIL=? WHERE ID=?",[user.USERNAME,Bcrypt.hashSync(user.PASSWORD, salt),user.ADDRESS,user.EMAIL,id],callback);
	}
};

 module.exports=user;