
var app = require("express").Router();
const DBPool = require('./crowdfunding_db.js')

// fundraisers
app.get('/api/getFundraisersList', (req, res) => {
    let searchSql = 'SELECT * from `FUNDRAISER`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers ACTIVE ---page
app.get("/api/getFundraisersListActive", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE ACTIVE = ?'
    DBPool.query(searchSql, [param.active], (results) => {
        let result = results.results
        res.send(result);
    })
});
//fundraisers by  Criteria
app.get("/api/getFundraisersListByCriteria", (req, res) => {
    let param = req.query
    let searchSql
    if(param.CATEGORY_ID == 'All'){
        searchSql = 'SELECT * from `FUNDRAISER`'
    }else {
        searchSql = 'SELECT * from `FUNDRAISER` WHERE CITY = ? AND CATEGORY_ID = ?'
    }
    DBPool.query(searchSql, [param.CITY,param.CATEGORY_ID], (results) => {
        let result = results.results
        res.send(result);
    })
});
//details
app.get("/api/getFundraisersListByFUNDRAISERID", (req, res) => {
    let param = req.query
    let searchSql = 'SELECT * from `FUNDRAISER` WHERE FUNDRAISER_ID = ?'
    DBPool.query(searchSql, [param.FUNDRAISER_ID], (results) => {
        let result = results.results
        res.send(result);
    })
});
//all categories
app.get("/api/getCategoriesList", (req, res) => {
    let searchSql = 'SELECT * from `CATEGORY`'
    DBPool.query(searchSql, [], (results) => {
        let result = results.results
        res.send(result);
    })
});


module.exports = app;