const express = require('express')
const exphbs = require('express-handlebars')
const mysql = require('mysql')
const session = require('express-session')

const app = express() 

app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));
app.use(
    express.urlencoded({
        extended:true
    })
)
app.use(express.json())
app.use(express.static('public'))

app.engine('handlebars', exphbs.engine())

app.set('view engine','handlebars')

app.get('/', (req,res) => {
    const home = 'background-color: lightcoral'
    const user = req.session.nome_usuario
    if (req.session.logado) {
        const flex1 = 'display: flex;'
        const none1 = 'display: none'
        res.render('home',  { user, home, flex1, none1 })
    } else {
        const flex = 'display: flex;'
        const none = 'display: none'
        res.render('home',  { user, home, flex, none })
    }
})

app.get('/blog', (req,res) => {
    const sql = 'SELECT * FROM blog'
    const mensagem2 = '.mensagem { background-color: rgba(0, 0, 0, 0.0); } .blogform { padding-bottom: 0px }'
    const user = req.session.nome_usuario
    const blog = 'background-color: lightcoral'
    conn.query(sql, function (err, dados) {
        if (err) {
            console.log(err)
        }
        if (req.session.logado) {
            if(user == 'admin'){
                res.render('blogadmin', {dados, user, mensagem2, blog})
            }else{
                res.render('blog', {dados, user, mensagem2, blog})
            }
        } else {
            const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
            res.render('login', {layout: false, mensagem })
        }
})})

app.get('/meusposts', (req, res)=>{
    const user = req.session.nome_usuario
    const blog = 'background-color: lightcoral'
    const sql = `SELECT * FROM blog WHERE autor_postagem = '${user}'`
    conn.query(sql, function (err, dados) {
        if (err) {
            console.log(err)
        }
        if (req.session.logado) {
            res.render('meusposts', {dados, user, blog})
        } else {
            const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
            res.render('login', {layout: false, mensagem, })
        }
})
})
app.get('/blog/:id_postagem', (req, res)=>{
    const id_postagem = req.params.id_postagem
    const user =  req.session.nome_usuario
    const blog = 'background-color: lightcoral'
    const sql = `SELECT * FROM blog WHERE id_postagem = '${id_postagem}'`
    conn.query(sql, function(err, dados,){
        if (err){
            console.log(err)
        }
        if (req.session.logado) {
            res.render('postalterar',{dados, user, blog})
        } else {
            const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
            res.render('login', {layout: false, mensagem, })
        }
    })
})

app.get('/blog/excluir/:id_postagem', (req,res)=>{
    const id_postagem = req.params.id_postagem
    const sql = `DELETE FROM blog WHERE id_postagem = '${id_postagem}'`
    conn.query(sql, function (err, dados) {
        if (err) {
            console.log(err)
        }
        res.redirect('/blog')
    })
})
app.get( '/streetwear', (req,res) => {
    const user = req.session.nome_usuario
    const sw = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Streetwear'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Streetwear' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Streetwear' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Streetwear' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Streetwear' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('streetwear', {imagens, colunaA, colunaB, colunaC, colunaD, user, sw})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})
app.get('/sportwear', (req,res) => {
    const user = req.session.nome_usuario
    const spw = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Sportwear'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Sportwear' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Sportwear' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Sportwear' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Sportwear' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('sportwear', {imagens, colunaA, colunaB, colunaC, colunaD, user, spw})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/casual', (req,res) => {
    const user = req.session.nome_usuario
    const cas = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Casual'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Casual' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Casual' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Casual' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Casual' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('casual', {imagens, colunaA, colunaB, colunaC, colunaD, user, cas})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/classico', (req,res) => {
    const user = req.session.nome_usuario
    const cla = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Clássico'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Clássico' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Clássico' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Clássico' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Clássico' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('classico', {imagens, colunaA, colunaB, colunaC, colunaD, user, cla})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/vintage&retro', (req,res) => {
    const user = req.session.nome_usuario
    const vr = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Vintage'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Vintage' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Vintage' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Vintage' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Vintage' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('vintage', {imagens, colunaA, colunaB, colunaC, colunaD, user, vr})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/grunge', (req,res) => {
    const user = req.session.nome_usuario
    const gr = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Grunge'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Grunge' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Grunge' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Grunge' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Grunge' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('grunge', {imagens, colunaA, colunaB, colunaC, colunaD, user, gr})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/comfy', (req,res) => {
    const user = req.session.nome_usuario
    const cf = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Comfy'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Comfy' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Comfy' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Comfy' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Comfy' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('comfy', {imagens, colunaA, colunaB, colunaC, colunaD, user, cf})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/hipster', (req,res) => {
    const user = req.session.nome_usuario
    const hip = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Hipster'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Hipster' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Hipster' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Hipster' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Hipster' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('hipster', {imagens, colunaA, colunaB, colunaC, colunaD, user, hip})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/indie', (req,res) => {
    const user = req.session.nome_usuario
    const ind = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Indie'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Indie' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Indie' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Indie' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Indie' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('indie', {imagens, colunaA, colunaB, colunaC, colunaD, user, ind})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/minimalista', (req,res) => {
    const user = req.session.nome_usuario
    const min = 'background-color: lightcoral;'
    const logado = req.session.logado
    const sql = `SELECT * FROM imagens WHERE estilo_imagem = 'Minimalista'`
    const sql2 = `SELECT * FROM imagens WHERE estilo_imagem = 'Minimalista' AND coluna_imagem = 'a'`
    const sql3 = `SELECT * FROM imagens WHERE estilo_imagem = 'Minimalista' AND coluna_imagem = 'b'`
    const sql4 = `SELECT * FROM imagens WHERE estilo_imagem = 'Minimalista' AND coluna_imagem = 'c'`
    const sql5 = `SELECT * FROM imagens WHERE estilo_imagem = 'Minimalista' AND coluna_imagem = 'd'`
    conn.query( sql, function (err, dados){
        if (err){
            console.log(err)
        }
        const imagens = dados
    conn.query( sql2, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaA = dados
    conn.query( sql3, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaB = dados
    conn.query( sql4, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaC = dados
    conn.query( sql5, function (err, dados){
        if (err){
            console.log(err)
        }
        const colunaD = dados
    if (req.session.logado) {
        res.render('minimalista', {imagens, colunaA, colunaB, colunaC, colunaD, user, min})
    } else {
        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
        res.render('login', {layout: false, mensagem})
    }
    })
    })
    })
    })
    })
})

app.get('/configuracoes', (req,res)=>{
    const user = req.session.nome_usuario
    const configuracoes = 'background-color: lightcoral'
    const mensagem2 = '.mensagem { background-color: rgba(0, 0, 0, 0.0); } .configuracoes { padding-bottom: 0px }'
        const sql = `SELECT * FROM usuarios WHERE nome_usuario = "${user}"`
        const sql2 = `SELECT * FROM blog WHERE autor_postagem = "${user}"`
        conn.query(sql, sql2, function (err, dados) {
        if (err) {
            console.log(err)
        }
        const usuario = dados
        if (req.session.logado){
            if(user == 'admin'){
                const sql3 = `SELECT * FROM usuarios WHERE NOT nome_usuario = "admin"`
                conn.query(sql3, function (err, dados){
                    if (err) {
                        console.log(err)
                    }
                    const usuarios = dados
                    console.log(usuarios)
                    res.render('configuracoesadmin', { usuario, usuarios, user, configuracoes, mensagem2 })
                })
            }else{
                res.render('configuracoes', { usuario, user, configuracoes, mensagem2 })
            }
        } else {
            const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
            res.render('login', {layout: false, mensagem })
        }
    })
})
app.get('/logout',(req,res)=>{
    req.session.logado = false
    res.redirect('/')
})
app.get('/configuracoes/excluir', (req, res)=>{
    const nome_usuario = req.session.nome_usuario
    const sql = `DELETE FROM blog WHERE autor_postagem = '${nome_usuario}'`
    const sql2 = `DELETE FROM usuarios WHERE nome_usuario = '${nome_usuario}'`
    conn.query(sql, sql2, function (err, dados) {
        if (err) {
            console.log(err)
        }
        req.session.logado = false
        res.redirect('/')
    })
})

app.get('/usuarios/excluir/:id_usuario', (req,res)=>{
    const id_usuario = req.params.id_usuario
    const sql = `DELETE FROM usuarios WHERE id_usuario = '${id_usuario}'`
    conn.query(sql, function (err, dados) {
        if (err) {
            console.log(err)
        }
        res.redirect('/configuracoes')
    })
})

app.get('/login', (req,res) => {
    const mensagem2 = '.mensagem { background-color: rgba(0, 0, 0, 0.0); } .formulario { padding-bottom: 0px }'
    res.render('login', {layout: false, mensagem2})
})

app.get('/cadastro', (req,res) => {
    const mensagem2 = '.mensagem { background-color: rgba(0, 0, 0, 0.0); } .formulario { padding-bottom: 0px }'
    res.render('cadastro', {layout: false, mensagem2})
})


app.post('/blog/adicionar', (req,res)=>{
    var date = new Date()
    var minutes = date.getMinutes()
    var hour = date.getHours()
    var day = date.getDate()
    var month = date.getMonth() + 1
    var year = date.getFullYear()
    const titulo_postagem = req.body.titulo_postagem
    const descricao_postagem = req.body.descricao_postagem
    const autor_postagem = req.session.nome_usuario
    const data_postagem = hour + ':' + minutes + ', ' + day + '/' + month + '/' + year
    const sql = `INSERT INTO blog (titulo_postagem, descricao_postagem, autor_postagem, data_postagem) VALUES ('${titulo_postagem}','${descricao_postagem}','${autor_postagem}','${data_postagem}')`
    if(titulo_postagem && descricao_postagem){
    conn.query(sql,function(err){
        if(err){
            console.log(err)
        }
        res.redirect('/blog')
    })
    } else {
        app.get('/blogcampos', (req, res)=>{
            const mensagemblog = 'Preencha os campos'
            const user = req.session.nome_usuario
            const sql2 = `SELECT * FROM blog`
            conn.query(sql2, function (err, dados) {
                if (err) {
                    console.log(err)
                }
                if (req.session.logado) {
                    if(user == 'admin'){
                        res.render('blogadmin', {dados, user, mensagemblog})
                        
                    }else{
                        res.render('blog', {dados, user, mensagemblog})
                        
                    }
                } else {
                    const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
                    res.render('login', {layout: false, mensagem })
                }
        })})
        res.redirect('/blogcampos')
    }
})
app.post('/blog/alterar',(req,res)=>{
    var date = new Date()
    var minutes = date.getMinutes()
    var hour = date.getHours()
    var day = date.getDate()
    var month = date.getMonth() + 1
    var year = date.getFullYear()
    const id_postagem = req.body.id_postagem
    const titulo_postagem = req.body.titulo_postagem
    const descricao_postagem =  req.body.descricao_postagem
    const edicao_postagem = 'Editado em: ' + hour + ':' + minutes + ', ' + day + '/' + month + '/' + year
    const sql = `UPDATE blog SET titulo_postagem = '${titulo_postagem}', descricao_postagem = '${descricao_postagem}', edicao_postagem = '${edicao_postagem}' WHERE id_postagem = '${id_postagem}' `
    conn.query(sql, function(err, dados){
        if (err){
            console.log(err)
        }
        res.redirect('/blog')
    })
})

app.post('/configuracoes/alterar', (req, res)=>{
    const id_usuario = req.body.id_usuario
    const nome_usuario = req.body.nome_usuario
    const email_usuario = req.body.email_usuario
    const senha_usuario = req.body.senha_usuario
    const autor_postagem = req.session.nome_usuario
    const user = req.session.nome_usuario
    const sql = `SELECT * FROM usuarios WHERE nome_usuario = '${nome_usuario}' AND NOT nome_usuario = '${user}'`
    conn.query(sql, function(erro, results, fields){
        if (erro) throw erro
        const sql2 = `UPDATE usuarios SET nome_usuario = '${nome_usuario}', email_usuario = '${email_usuario}', senha_usuario = '${senha_usuario}' WHERE id_usuario = '${id_usuario}'`
        const sql3 = `UPDATE blog SET autor_postagem = '${nome_usuario}' WHERE autor_postagem = '${autor_postagem}'`
        if (results.length == 0){
            if (senha_usuario.length > 7){
            conn.query(sql2, sql3, function (err) {
                if (err) {
                    console.log(err)
                }
                req.session.logado = true
                req.session.nome_usuario = nome_usuario
                res.redirect('/')
            })
            }else{
                app.get('/configuracoessenha', (req, res)=>{
                const configuracoes = 'background-color: lightcoral'
                const user = req.session.nome_usuario
                const sql = `SELECT * FROM usuarios WHERE nome_usuario = "${user}"`
                const sql2 = `SELECT * FROM blog WHERE autor_postagem = "${user}"`
                conn.query(sql, sql2, function (err, dados) {
                    if (err) {
                        console.log(err)
                    }
                    const usuario = dados
                    if (req.session.logado){
                        const mensagemconfig =  'Senha deve conter pelo menos 8 caracteres'
                        if(user == 'admin'){
                            const sql3 = `SELECT * FROM usuarios WHERE NOT nome_usuario = "admin"`
                            conn.query(sql3, function (err, dados){
                                if (err) {
                                    console.log(err)
                                }
                                const usuarios = dados
                                res.render('configuracoesadmin', { usuario, usuarios, user, configuracoes, mensagemconfig })
                            })
                        }else{
                            res.render('configuracoes', { usuario, user, configuracoes, mensagemconfig })
                        }
                    } else {
                        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
                        res.render('login', {layout: false, mensagem })
                    }
                })
            }) 
            res.redirect('/configuracoessenha')
            }   
        }else{
            app.get('/configuracoeserro', (req,res)=>{
                const configuracoes = 'background-color: lightcoral'
                const user = req.session.nome_usuario
                const sql = `SELECT * FROM usuarios WHERE nome_usuario = "${user}"`
                const sql2 = `SELECT * FROM blog WHERE autor_postagem = "${user}"`
                conn.query(sql, sql2, function (err, dados) {
                    if (err) {
                        console.log(err)
                    }
                    const usuario = dados
                    if (req.session.logado){
                        const mensagemconfig =  'Este username já existe'
                        if(user == 'admin'){
                            const sql3 = `SELECT * FROM usuarios WHERE NOT nome_usuario = "admin"`
                            conn.query(sql3, function (err, dados){
                                if (err) {
                                    console.log(err)
                                }
                                const usuarios = dados
                                res.render('configuracoesadmin', { usuario, usuarios, user, configuracoes, mensagemconfig })
                            })
                        }else{
                            res.render('configuracoes', { usuario, user, configuracoes, mensagemconfig })
                        }
                    } else {
                        const mensagem = 'Para fazer esta ação, entre ou cadastre-se'
                        res.render('login', {layout: false, mensagem })
                    }
                })
            }) 
            res.redirect('/configuracoeserro')
        }

    })
})

app.post('/login/user', (req, res) => {
    const nome_usuario = req.body.nome_usuario
    const senha_usuario = req.body.senha_usuario
    const sql = `SELECT * FROM usuarios WHERE nome_usuario = '${nome_usuario}' && senha_usuario = '${senha_usuario}'`
    if (nome_usuario && senha_usuario) {
        conn.query(sql, function (erro, results) {
            if (erro) throw erro
            if (results.length > 0) {
                var string=JSON.stringify(results);
                console.log(string)
                var json =  JSON.parse(string);
                console.log(json)
                console.log(json[0].email_usuario)
                req.session.logado = true
                req.session.email_usuario = json[0].email_usuario
                req.session.nome_usuario = nome_usuario
                res.redirect('/')
            } else {
                req.session.logado = false
                const mensagem = 'Email e/ou senha incorretos ou inexistentes'
                app.get('/loginerro', (req,res) => {
                    res.render('login', {layout: false, mensagem})})
                res.redirect('/loginerro')
            }
            res.end()
        })
    } else {
        const mensagem = 'Preencha os campos'
                app.get('/logincampos', (req,res) => {
                    res.render('login', {layout: false, mensagem})})
                res.redirect('/logincampos')
        res.end()
    }
})

app.post('/cadastro/user',(req,res)=>{
    const nome_usuario = req.body.nome_usuario
    const email_usuario = req.body.email_usuario
    const senha_usuario = req.body.senha_usuario
    const confirme_senha = req.body.confirme_senha
    const sql = `SELECT * FROM usuarios WHERE nome_usuario = '${nome_usuario}'`
    conn.query(sql, function(erro, results){
        if (erro) throw erro
        const sql2 = `INSERT INTO usuarios (nome_usuario, email_usuario, senha_usuario ) VALUES ('${nome_usuario}','${email_usuario}','${senha_usuario}')`
        if (nome_usuario && email_usuario && senha_usuario && confirme_senha && senha_usuario == confirme_senha && senha_usuario.length > 7){
            if(results.length == 0){
                conn.query(sql2,function(err){
                    if(err){
                        console.log(err)
                    }
                    req.session.nome_usuario = nome_usuario
                    req.session.email_usuario = email_usuario
                    req.session.logado = true
                    res.redirect('/')
                })
            } else {
                app.get('/cadastrouser', (req,res) => {
                    const mensagem = 'Username já existe'
                    res.render('cadastro', {layout: false, mensagem, nome_usuario, email_usuario, senha_usuario, confirme_senha})
                })
                res.redirect('/cadastrouser')
            }
        }else if(nome_usuario && email_usuario && senha_usuario && confirme_senha && senha_usuario != confirme_senha && senha_usuario.length > 7){
            app.get('/cadastrosenha', (req,res) => {
                const mensagem = 'Senhas diferentes'
                res.render('cadastro', {layout: false, mensagem, nome_usuario, email_usuario, senha_usuario, confirme_senha})
            })
            res.redirect('/cadastrosenha')
        }else if(nome_usuario && email_usuario && senha_usuario && confirme_senha && senha_usuario.length < 8){
            app.get('/cadastrosenhatamanho', (req,res) => {
                const mensagem = 'Senhas deve conter pelo menos 8 caracteres'
                res.render('cadastro', {layout: false, mensagem, nome_usuario, email_usuario, senha_usuario, confirme_senha})
            })
            res.redirect('/cadastrosenhatamanho')
        } else {
            app.get('/cadastrocampos', (req,res) => {
                const mensagem = 'Preencha os campos'
                res.render('cadastro', {layout: false, mensagem, nome_usuario, email_usuario, senha_usuario, confirme_senha})
            })
            res.redirect('/cadastrocampos')
    }
})
})


const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'yourmodus'
})

conn.connect(function (err) {
    if (err) {
        console.log(err)
    }
    console.log('Conectou Mysql')
    app.listen(3000)
})