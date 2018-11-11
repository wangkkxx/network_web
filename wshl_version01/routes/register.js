const express=require("express")
const router=express.Router()
const pool=require("../pool")
router.post("/",(req,res)=>{
    var uname=req.body.uname
    var upwd=req.body.upwd
    var user_name=req.body.user_name
    var user_id=req.body.user_id
    var qq=req.body.qq
    var phone=req.body.phone
    var email=req.body.email
    var kf=req.body.kf
    var sql="INSERT INTO `wshl_user` VALUES(NULL,?,?,?,?,?,?,?,?,0,NULL)"
    pool.query(sql,[uname,upwd,user_name,user_id,qq,phone,email,kf],(err,result)=>{
        if(err) throw err
        if(result.affectedRows>0){
            res.writeHead(200);
            res.write(JSON.stringify({
              ok:1
            }))
          }else{
            res.write(JSON.stringify({
              ok:0,
              msg:"注册失败"
            }))
          }
          res.end();
    })
})
router.get("/check",(req,res)=>{
    var uname=req.query.uname
    var sql="SELECT * FROM `wshl_user` WHERE uname=?"
    pool.query(sql,[uname],(err,result)=>{
        if(err) throw err
        if(result.length>0) res.send({code:0,msg:"该账户已被注册"})
        else res.send({code:1})
    })
})
module.exports=router;