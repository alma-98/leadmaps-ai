const express=require("express");
const cors=require("cors");

const app=express();

app.use(cors());
app.use(express.json());


app.post("/api/leads/search",(req,res)=>{


const {
keyword,
location
}=req.body;


const demo=[

{
name:`${keyword} Indonesia`,
address:location,
website:"https://example.com",
phone:"08123456789",
email:"info@example.com"
},


{
name:"PT Maju Jaya",
address:location,
website:"https://maju.com",
phone:"02188888",
email:"sales@maju.com"
}

];


res.json({

success:true,
total:demo.length,
data:demo

});


});


app.listen(3001,()=>{

console.log(
"LeadMaps API running port 3001"
);

});
