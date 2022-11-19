const express = require('express')
const bodyParser = require('body-parser')

const client = require('./conn')
const app = express()

app.use(bodyParser.json())

app.listen(3100,() => {
    console.log('Server Running in port 3100')
})

client.connect(err =>{
   if(err){
    console.log(err.message)
   }else{
    console.log('Connected')
   }

})

app.get('/titik', (req, res)=>{
    client.query('SELECT * FROM titik',(err,result)=>{
        if(!err){
            res.send(result.rows)
        }
    })
})

app.post('/titik',(req,res) =>{
    const {idtitik, namatitik,geomtitik}=req.body
    client.query((`insert into titik(idtitik, namatitik, geomtitik)values('${idtitik}','${namatitik}',ST_GeomFromText('POINT(${geomtitik})',4326)) `),(err,result)=>{
        if(!err){
            res.send('insert sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.put('/titik/',(req,res)=>{    
    const {idtitik,namatitik,geomtitik}=req.body
    client.query((`update titik set namatitik='${namatitik}',geomtitik=ST_GeomFromText('POINT(${geomtitik})',4326) WHERE idtitik='${idtitik}'`),(err,result)=>{
        if(!err){
        res.send('Update sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.delete('/titik/',(req,res)=>{    
    const {idtitik}=req.body
    client.query((`delete from titik where idtitik='${idtitik}'`),(err,result)=>{
        if(!err){
        res.send('Delete sukses')
        }else{
            res.send(err.message)
        }
    })
})


app.post('/garis',(req,res) =>{
    const {idgaris, namagaris,geomgaris,deskripsi}=req.body
    client.query((`insert into garis(idgaris, namagaris, geomgaris,panjanggaris,deskripsi)values('${idgaris}','${namagaris}',ST_GeomFromText('LINESTRING(${geomgaris})',4326),ST_Length(ST_GeomFromText('LINESTRING(${geomgaris})',4326))/1000,'${deskripsi}') `),(err,result)=>{
        if(!err){
            res.send('insert sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.put('/garis',(req,res)=>{    
    const {idgaris,namagaris,geomgaris,deskripsi}=req.body
    client.query((`update garis set namagaris='${namagaris}',geomgaris=ST_GeomFromText('LINESTRING(${geomgaris})',4326),panjanggaris=ST_Length(ST_GeomFromText('LINESTRING(${geomgaris})',4326))/1000, deskripsi='${deskripsi}' WHERE idgaris='${idgaris}'`),(err,result)=>{
        if(!err){
        res.send('Update sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.delete('/garis',(req,res)=>{    
    const {idgaris}=req.body
    client.query((`delete from garis where idgaris='${idgaris}'`),(err,result)=>{
        if(!err){
        res.send('Delete sukses')
        }else{
            res.send(err.message)
        }
    })
})


app.post('/poly',(req,res) =>{
    const {idpoli, namapoli,geompoli,deskripsi}=req.body
    client.query((`insert into poligon(idpoli, namapoli, geompoli,luaspoli,deskripsi)values('${idpoli}','${namapoli}',ST_GeomFromText('POLYGON((${geompoli}))',4326),ST_Area(ST_GeomFromText('POLYGON((${geompoli}))',4326))/1000,'${deskripsi}') `),(err,result)=>{
        if(!err){
            res.send('insert sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.put('/poli',(req,res)=>{    
    const {idgaris,namagaris,geomgaris,deskripsi}=req.body
    client.query((`update poligon set namagaris='${namapoli}',geompoli=ST_GeomFromText('POLYGON((${geompoli}))',4326),luaspoli=ST_Area(ST_GeomFromText('POLYGON((${geompoli}))',4326))/1000, deskripsi='${deskripsi}' WHERE idpoli='${idpoli}'`),(err,result)=>{
        if(!err){
        res.send('Update sukses')
        }else{
            res.send(err.message)
        }
    })
})

app.delete('/poli',(req,res)=>{    
    const {idgaris}=req.body
    client.query((`delete from poligon where idpoli='${idpoli}'`),(err,result)=>{
        if(!err){
        res.send('Delete sukses')
        }else{
            res.send(err.message)
        }
    })
})