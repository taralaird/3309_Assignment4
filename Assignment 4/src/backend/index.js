const bodyParser = require("body-parser");
const express = require("express");
const app = express();
const mysql = require("mysql");
const cors = require("cors");

const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "password", //your passwod
  database: "3309", //name of database/schema thats been loaded
});

app.use(cors());
app.use(express.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.get("/", (req, res) => {
  res.send("Hello world");
});

//meant to get resturantName from frontened then send all menu items to froentend using query
app.get("/api/menu", (req, res) => {
  const restaurantName = req.query.restaurantName;
  console.log(restaurantName);  

  const sqlSelect =
    `SELECT m.itemName, m.price, m.category 
    FROM Restaurant r, Menu m 
    WHERE r.restaurantName = ?
    AND r.restaurantID = m.restaurantID 
    ORDER BY m.category, m.itemName`;

  db.query(sqlSelect, [restaurantName], (err, result) => {
    if (err) {
      console.error(err);
      res.status(500).json({}); 
      return
    }
    console.log(result);
    res.json(result);
  });
});

app.get("/api/restaurants", (req, res) => {
    const city = req.query.city;
    console.log(city);  
  
    const sqlSelect =
        `SELECT restaurantName, street, postalCode, category, rating, promotion, area
        FROM Restaurant r
        WHERE r.city = 'Ottawa'
        ORDER BY r.restaurantName`;
  
    db.query(sqlSelect, [city], (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).json({});
        return
      }
      console.log(result);
      res.json(result);
    });
  });

  app.get("/api/drivers", (req, res) => {
    const area = req.query.area;
    console.log(area);
  
    const sqlSelect =
        `SELECT username, licensePlate, serviceArea, rating, carModel
        FROM driver
        WHERE available = 'TRUE'
        AND rating > 5
        AND serviceArea = ?`;
  
    db.query(sqlSelect, [area], (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).json({});
        return
      }
      console.log(result);
      res.json(result);
    });
  });

  app.get("/api/orders", (req, res) => {
    const email = req.query.email;
    console.log(email);
  
    const sqlSelect =
        `SELECT o.orderNo, o.orderDate, o.orderTime, o.price, o.review, o.driver, o.orderstatus, r.restaurantName, r.street, r.city, r.postalCode, r.category, r.rating, r.promotion, r.area
        FROM orders o, customer c, restaurant r
        WHERE o.customer = c.username
        AND o.restaurantID = r.restaurantID
        AND c.email = ?`;
  
    db.query(sqlSelect, [email], (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).json({});
        return
      }
      console.log(result);
      res.json(result);
    });
  });

  app.get("/api/customers", (req, res) => {
    const membership = req.query.membership;
    console.log(membership);
  
    const sqlSelect =
        `SELECT m.level, m.autopay, c.email, c.phoneNo, c.fName, c.lName, c.street, c.city, c.postalCode, c.area
        FROM membership m, customer c
        WHERE m.username = c.username
        AND level = ?`;
  
    db.query(sqlSelect, [membership], (err, result) => {
      if (err) {
        console.error(err);
        res.status(500).json({});
        return
      }
      console.log(result);
      res.json(result);
    });
  });


app.listen(3001, () => {
  console.log("running on port 3001");
});
