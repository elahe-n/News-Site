const express = require('express');
const router = express.Router();
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');
const fileUpload = require('express-fileupload');

const SERVER_PORT=8080;

app.use(express.static('public'));
app.use(express.static('app'));
app.set('view engine', 'ejs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(fileUpload());


const connection = mysql.createConnection({
    user: 'u7f0p3y6hce7eonz',
    password: '8EEtzUBhtoFaK6bwPgIf',
    host: 'bw1aon6any7g4y3mof9u-mysql.services.clever-cloud.com',
    port: 3306,
    database: 'bw1aon6any7g4y3mof9u'
  });
  
connection.connect(err => {
    if (err) {
      throw err;
    }
    console.log('Connected to database!');
  });

router.get('/', function(req, res) {
    const queryStr= "SELECT * from newslist;";
    connection.query(queryStr, function(err, result) {
        if (!err) {
        res.render('index',{data:result});
        } else {
            console.log('Error in connecting to database !');
        }
    });  
});

router.get('/add-news', function(req, res) {
    res.render('add-news');
});

router.get("/news/:id", function (req, res) {
    const queryStr = `SELECT * FROM newslist WHERE id = ${req.params.id};`;
    connection.query(queryStr, (err, result) => {
      if (err) {
        throw err;
      }
      res.render("news", { data: result[0] });
    });
  });

  router.get("/news-detail/:id", function (req, res) {
    const queryStr = `SELECT * FROM newslist WHERE id = ${req.params.id};`;
    connection.query(queryStr, (err, result) => {
      if (err) {
        throw err;
      }
      res.render("news-detail", { data: result[0] });
    });
  });

router.post('/add-news-submit', function(req, res) {
        var file = req.files.uploaded_image;                        
          file.mv('public/images/upload_images/'+file.name, function(err) {              
            if (err)
              return res.status(500).send(err);
            let queryStr = `INSERT INTO newslist (title , description , image ) VALUES ('${req.body.newsTitle}','${req.body.newsDesc}', '${req.files.uploaded_image.name}');`;
            connection.query(queryStr);
            res.writeHead(302, {
            Location: '/'
            });
            res.end();
           })      
});

  router.post("/update-news", function (req, res) {
    if (req.files.uploaded_image){
      var file = req.files.uploaded_image;                    
        file.mv('public/images/upload_images/'+file.name, function(err) {         
           if (err)
             return res.status(500).send(err);
            const queryStr = `UPDATE newslist SET title = '${req.body.newsTitle}' , description = '${req.body.newsDesc}' , image = '${req.files.uploaded_image.name}' WHERE id = '${req.body.id}'`;
            connection.query(queryStr);
            res.writeHead(302, { Location: "/" });
            res.end();
        })
     } else 
     {
      const queryStr = `UPDATE newslist SET title = '${req.body.newsTitle}' , description = '${req.body.newsDesc}' WHERE id = '${req.body.id}'`;
      connection.query(queryStr);
      res.writeHead(302, { Location: "/" });
      res.end();
     }
  });

  router.post("/delete-news", function (req, res) {
    const queryStr = `DELETE FROM newslist WHERE id = '${req.body.id}'`;
    connection.query(queryStr);
    res.writeHead(204);
    res.end();
  });
  

app.use('/', router);

app.listen(SERVER_PORT);

console.log(`Server is running on Port ${SERVER_PORT}` );