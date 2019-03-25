var db = require('../connection/dbconnection');

var product={
	getAllProduct:function(callback){
		return db.query("select a.* from product a ",callback);
	},

	// getProductById:function(id,callback){
	// 	return db.query("SELECT * FROM PRODUCT WHERE ID=?",[id],callback);
	// },
	addProduct:function(product,callback){
		return db.query("INSERT INTO PRODUCT(name,category,description,status,createDate) values(?,?,?,?,?)",[product.name,product.category,product.description,product.status,new Date()],callback);
	},
	// deleteProduct:function(id,callback){
	// 	return db.query("DELETE FROM PRODUCT WHERE ID=?",[id],callback);
	// },
	// updateProduct:function(id,product,callback){
	// 	return db.query("UPDATE PRODUCT SET Name=?,Code=?,Image=?,Price=? WHERE ID=?",[product.name,product.code,product.image,product.price,id],callback);
	// }
};

 module.exports=product;