const express = require("express");
const app = express();


app.get('/api/get',(req,res) => {
    res.send({message:"Hey Admin! CI/CD Pipeline is running"})
})

app.listen(8000,() => {
    console.log("Listening to 8030");
})