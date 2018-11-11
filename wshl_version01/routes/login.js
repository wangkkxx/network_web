const express=require("express")
const router=express.Router()
const pool=require("../pool")
//登录页查询用户信息
router.post("/",(req,res)=>{
    var uname=req.body.uname
    var upwd=req.body.upwd
    var sql="SELECT * FROM wshl_user WHERE uname=? AND upwd=?"
    pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err
        if(result.length>0){
            res.writeHead(200);
            var user=result[0]
            console.log(result[0])
            req.session.uid=user.uid
            res.write(JSON.stringify({
              code:1,
              msg:"登录成功!"
            }))
          }else{
            res.write(JSON.stringify({
              code:0,
              msg:"用户名或密码错误！"
            }))
          }
          res.end();
    })
})
//登陆后查询用户信息并发送回网页
router.get("/info",(req,res)=>{
    res.writeHead(200);
    if(req.session.uid===undefined){
        res.write(JSON.stringify({code:0}))
        res.end()
    }else{
      var uid=req.session.uid;
      var sql="SELECT * FROM wshl_user WHERE uid=?"
      pool.query(sql,[uid],(err,result)=>{
        if(err) throw err
        var user=result[0];
        res.write(JSON.stringify({
            code:1,user
        }))
        res.end()
      })
    }
})
//查询客服信息
router.get("/kf",(req,res)=>{
  var kname=req.query.kname
  var sql="select * from wshl_customerService where kname=?"
  pool.query(sql,[kname],(err,result)=>{
    if(err) console.log(err)
    if(result.length>0) res.send(result[0])
  })
})
//退出登录
router.get("/out",(req,res)=>{
  req.session["uid"]=undefined;
  res.end();
})
module.exports=router;