var express = require('express');
var router = express.Router();
var user = require('./controllers/user');
var product = require('./controllers/product');


router.get('/user/:id?',function(req,res,next){
    if(req.params.id){
        user.getUserById(req.params.id,function(err,rows){
            if(err){
                res.json(err);
            }
            else{
                res.json(rows);
            }
        });
    }else{
        user.getAllUser(function(err,rows){
            if(err){
                res.json(err);
            } else {
                res.json(rows);
            }

        });
    }
});

router.post('/user/add',function(req,res,next){
    user.addUser(req.body,function(err,count){
        if(err){
            res.json(err);
        } else{
            res.json(req.body);
        }
    });
});

router.delete('/user/delete/:id',function(req,res,next){
    user.deleteUser(req.params.id,function(err,count){
        if(err){
            res.json(err);
        } else{
          res.json(count);
        }
    });
});

router.put('/user/update/:id',function(req,res,next){
    user.updateUser(req.params.id,req.body,function(err,rows){
        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
});

////////////////////////////////////////////////Product////////////////////////////////////


router.get('/getAllProduct',function(req,res,next){
    product.getAllProduct(function(err,rows){
        if(err){
           res.json(err);
        } else {
           res.json({ status: true, totalItem: 20, totalPage: 2, pageSize: 10, currentPage: 1, data: rows });
        }

    });
});

router.get('/product/:id?',function(req,res,next){
    if(req.params.id){
        product.getProductById(req.params.id,function(err,rows){
            if(err){
                res.json(err);
            }
            else{
                res.json(rows);
            }
        });
    }else{
        product.getAllProduct(function(err,rows){
            if(err){
                res.json(err);
            } else {
                res.json(rows);
            }

        });
    }
});

router.post('/product/add',function(req,res,next){
    product.addProduct(req.body,function(err,count){
        if(err){
            res.json(err);
        } else{
            res.json(req.body);
        }
    });
});

router.delete('/product/delete/:id',function(req,res,next){
    product.deleteProduct(req.params.id,function(err,count){
        if(err){
            res.json(err);
        } else{
          res.json(count);
        }
    });
});

router.put('/product/update/:id',function(req,res,next){
    product.updateProduct(req.params.id,req.body,function(err,rows){
        if(err){
            res.json(err);
        } else{
            res.json(rows);
        }
    });
});

module.exports=router;