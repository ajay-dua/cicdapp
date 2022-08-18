const express = require('express');
const app = express();
const path = require('path');
const port = process.env.PORT || 3000;
const publicDirPath = path.join(__dirname, `../public`);
app.use(express.static(publicDirPath));
app.get("/test",(req,res)=>{
res.status(200).send('got it!');
})
app.listen(port,()=>{
    console.log('server runing on port',port);
});