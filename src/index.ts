import express from "express"

const app = express()


app.get("/",(req,res)=>{
    res.json({"msg":"hello world"})
})

app.listen(8001,()=>{
    console.log("Listening to port 8001")
})