const express = require("express");
const app = express();


app.get('/api/get',(req,res) => {
    res.send({message:"Hey Admin! CI/CD Pipeline is running on ec2 AWS testing Server by Admin Anuskhan"})
})


app.get('/api/get_user_details',(req,res) => {
    res.send({
        user:{
            name:"AnusKhan",
            age:24,
            contact:7763435
        }
    })
});

app.listen(3040,() => {
    console.log("Listening to 3040");
})
