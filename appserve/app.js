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
   database: "xz",
   connectionLimit: 15
});

// 配置跨域模块
var server = express();
// server.use(cors({
//    origin: ["http://127.0.0.1:8080", "http://localhost:8080"], //允许这两个地址跨域
//    credentials: true // 请求验证
// }));

// 配置session
server.use(session({
   secret: "128位字符串",
   resave: true,
   saveUninitiaLized: true
}));

// 配置项目静态目录
server.use(express.static("public"));

server.listen(5050);

server.use('/',
   proxy({
      target: "http://3g.163.com/touch/nc/api/video/recommend/Video_Recom/10-10.do?callback=videoList",
      // ws: true,
      changeOrigin: true,
   })
)


server.get("/user", (req, res) => {
   http.get('/', (res) => {
      res.on('data', (data) => {
         console.log(data.toString())
      })
   })
})