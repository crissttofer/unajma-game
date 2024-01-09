const path=require('path')

function storeGame(req,res){
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