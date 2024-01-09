const bcrypt =require('bcrypt')
const path=require('path')

function login(req,res){
    if(req.session.loggedin===true){
        res.redirect('/')
    }else{
        const options={
            root:path.join(__dirname,'../views/login')
        }
        res.sendFile('login.html',options)
    }
}
function auth(req,res){
    const data=req.body
    req.getConnection((err,conn)=>{
        conn.query('SELECT * FROM usuario WHERE correo = ?',[data.correo],(err,userdata)=>{
            
            if(userdata[0]){
                bcrypt.compare(data.password,userdata[0].password,(err,isMatch)=>{
                    if(isMatch){
                        req.session.loggedin=true
                        req.session.name=userdata[0].correo
                        res.redirect('/')
                    }else{
                        console.log('Incorrecto');
                    }
                })
            }
        })
    })
}
function register(req,res){
    if(req.session.loggedin===true){
        res.redirect('/')
    }else{
        const options={
            root:path.join(__dirname,'../views/login')
        }
        res.sendFile('register.html',options)
    }
    
}
function storeUser(req,res){
    const data=req.body;
    req.getConnection((err,conn)=>{
        conn.query('SELECT * FROM usuario WHERE correo = ?',[data.correo],(err,userdata)=>{
            console.log(userdata)
            if(userdata.length){
                console.log('El usuario ya existe')
            }else{
                bcrypt.hash(data.password,12).then(hash=>{
                    data.password=hash
                    req.getConnection((err,conn)=>{
                        conn.query('INSERT INTO usuario SET ?',[data],(err,rows)=>{
                            res.redirect('/')
                        })
                    })
                })
            }
        })
    })
}
function logout(req,res){
    if(req.session.loggedin==true){
        req.session.destroy()
    }
    res.redirect('/login')
}

module.exports={
    login,
    auth,
    register,
    storeUser,
    logout
}