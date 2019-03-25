var db = require('../connection/dbconnection');

var product={
	getAllProduct:function(callback){
		return db.query("select a.* from product a ",callback);
	},
	addProduct:function(product,callback){
		return db.query("INSERT INTO PRODUCT(name,category,img,sales,stock,status,statusColor,description,createDate) values(?,?,?,?,?,?,?,?,?)",[product.name,product.category,product.img,product.sales,product.stock,product.status,product.statusColor,product.description,new Date()],callback);
	},
	getProductById:function(id,callback){
		return db.query("SELECT * FROM PRODUCT WHERE id=?",[id],callback);
	},
	deleteProduct:function(id,callback){
		return db.query("DELETE FROM PRODUCT WHERE id=?",[id],callback);
	},
	updateProduct:function(id,product,callback){
		return db.query("UPDATE PRODUCT SET name = ?, category = ?, img = ?, sales = ?, stock = ?, status = ?, statusColor = ?, description = ?, createDate = ? WHERE ID=?",[product.name,product.category,product.img,product.sales,product.stock,product.status,product.statusColor,product.description,new Date(),id],callback);
	}
};

 module.exports=product;