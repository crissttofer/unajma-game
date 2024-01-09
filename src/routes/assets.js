const express=require('express')
const path=require('path')

const routesAssets=express.Router()

routesAssets.get('/assets/img/:imgName',(req,res)=>{
    let fileName=req.params.imgName
    const options={
        root:path.join(__dirname,'../views/assets/img')
    }
    res.sendFile(fileName,options)
})
routesAssets.get('/assets/css/:style',(req,res)=>{
    let styleName=req.params.style
    const options={
        root:path.join(__dirname,'../views/assets/css')
    }
    res.sendFile(styleName,options)
})
routesAssets.get('/assets/src/:sript',(req,res)=>{
    let scriptName=req.params.sript
    const options={
        root:path.join(__dirname,'../views/assets/src')
    }
    res.sendFile(scriptName,options)
})
module.exports=routesAssets