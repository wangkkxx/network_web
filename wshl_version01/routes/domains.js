const express=require("express")
const router=express.Router()
const pool=require("../pool")

router.get("/",(req,res)=>{
    var output={ pageSize:8 }
    output.pno=req.query.pno
    
    var sql="SELECT * FROM `wshl_domains`"
    pool.query(sql,[],(err,result)=>{
        if(err) console.log(err)
        output.count=result.length;//获得总记录数
        output.pageCount=Math.ceil(output.count/output.pageSize);//计算总页数
        output.domains=result.slice(output.pno*8,output.pno*8+8);
        res.writeHead(200,{
            "Content-Type":"application/json;charset=utf-8",
            "Access-Control-Allow-Origin":"*"
        })
        res.write(JSON.stringify(output))
        res.end()

    })
})

module.exports=router;