const express = require('express');
const mysql = require('mysql'); // 数据库
const cors = require('cors'); // 跨域
const session = require('express-session'); // 配置session
const http = require('http')
const proxy = require('http-proxy-middleware')
// 创建连接池
var pool = mysql.createPool({
   host: "127.0.0.1",
   user: "root",
   password: "",
   port: 3306,
   database: "tourism",
   connectionLimit: 15
});

// 配置跨域模块
var server = express();
server.use(cors({
   origin: ["http://127.0.0.1:8080", "http://localhost:8080"], //允许这两个地址跨域
   credentials: true // 请求验证
}));

// 配置session
server.use(session({
   secret: "128位字符串",
   resave: true,
   saveUninitiaLized: true
}));

// 配置项目静态目录
server.use(express.static("public"));

server.listen(5050);

// server.use('/',
//    proxy({
//       target: "http://3g.163.com/touch/nc/api/video/recommend/Video_Recom/10-10.do?callback=videoList",
//       // ws: true,
//       changeOrigin: true,
//    })
// )


// server.get("/user", (req, res) => {
//    http.get('/', (res) => {
//       res.on('data', (data) => {
//          console.log(data.toString())
//       })
//    })
// })

function isArr(str) {
   let arr_imgs = [];
   arr_imgs = str.split(";");
   return arr_imgs;
}

// 主页查询产品详情数据
server.get("/details", (req, res) => {
   let $page = Number(req.query.page);
   let sql = "select id,deta_title,deta_price,small_img,deta_images,deta_info from tour_details limit ?,6;";
   pool.query(sql, [$page], (err, result) => {
      if (err) throw err;
      if (result.length > 0) {
         for (let i = 0; i < result.length; i++) {
            let arrImg = isArr(result[i].deta_images);
            result[i].deta_images = arrImg[0];
         }
         res.send(result);
         return;
      } else {
         res.send({
            code: -1,
            msg: "查询失败"
         })
      }
   })
})

// 主页分页查询产品详情数据(同程热搜)

// 根据id查询产品详情数据
server.get("/detail", (req, res) => {
   let $did = req.query.did
   let sql = "select id,lineid,deta_title,deta_show,deta_info,deta_price,deta_images from tour_details where id=?";
   pool.query(sql, [$did], (err, result) => {
      if (err) throw err;
      if (result.length > 0) {
         let arrInfo = isArr(result[0].deta_info);
         result[0].deta_info = arrInfo;
         let arrImg = isArr(result[0].deta_images);
         result[0].deta_images = arrImg;
         res.send(result);
         return;
      } else {
         res.send({
            code: -1,
            msg: "查询失败"
         })
      }
   })
})