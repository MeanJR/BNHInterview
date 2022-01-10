let express = require('express');
let server = express();
let ejs = require('ejs');
server.engine('html',ejs.renderFile);
server.listen(80);

let mysql = require('mysql');
let source = {  host : '127.0.0.1', database: 'newyear2022',
                user :  'admin', password: 'admin1234'};
let pool = mysql.createPool(source);

server.get('/random',showRandom);




function showRandom(req, res){
    let status = req.query.status;
    let sql = `SELECT s.* , r.* FROM staff as s, reward as r
               WHERE s.staff_id NOT IN (SELECT staff_id FROM selected)
               AND r.reward_status = '${status}'
               ORDER BY rand()
               LIMIT 1;`
    if(status == null){
        res.render('random.html',{all:[]})
    }else{
       
        getInfo(sql,function(result){
            
            
            let model = {all:result};
            let volume = 0
           
            if(result.length > 0){
                
                volume = result[0].reward_volume;
            }            
            if(volume > 0){

                let rewardId = result[0].reward_id;
                let staffId = result[0].staff_id;  
                let newVolume = volume - 1; 
                let sqlUp = `UPDATE reward SET reward_volume = ${newVolume} WHERE reward_id = ${rewardId}`;
                let sqlIn = 'INSERT INTO `selected` (`staff_id`, `reward_id`) VALUES (?, ?)';
                        
                res.render('random.html',model);
                pool.query(sqlUp,function(error,result){});
                pool.query(sqlIn,[staffId,rewardId],function(error,result){}) 

            }else{
                 res.render('random.html',model)
            }
        
        }); 

     }

}

function getInfo(sql,callback){

    pool.query(sql, function(err, results){
          if (err){ throw err;}
          return callback(results);
  })
}








