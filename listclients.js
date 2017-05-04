var express = require('express'),
app = express(),
path = require("path"),
mysql= require('mysql'),
Sequelize = require("sequelize"),
sequelize = new Sequelize("webclients","webclients","webclients"),
url=require('url'),
moment=require("moment"),	
q=require("q"),
Promise=require("bluebird"),
bodyParser = require('body-parser');
app.engine('html', require('ejs').renderFile);
app.set('views',path.join(__dirname,'views'));
app.use(express.static(__dirname+'/views'));
app.locals.moment = moment;
app.locals.dtformat = "dd M YY";
/*app.use(bodyParser.json);*/
app.use(bodyParser.urlencoded({
	extended:true
}));
var User = sequelize.define("user",{username:Sequelize.STRING,password:Sequelize.STRING});
var Clients = sequelize.define("client",{url:Sequelize.STRING,pic:Sequelize.STRING,packagetype:Sequelize.STRING,description:Sequelize.STRING,expdate:Sequelize.DATE});
isexist = function(){
	return false;
}
app.get('/',function(req,res){
	Clients.findAll().then(function(obj){
		/*for(var i=0;i<obj.length;i++){
			console.log(obj[i].description);
		}*/
		setInterval(function(){
			var dt = new Date();
			//console.log("Interval "+dt.getHours()+':'+dt.getMinutes()+':'+dt.getSeconds());
			if(isexist(dt.getDay())){				
				var email=require("emailjs"),
				server=email.server.connect({
					user:"puji",
					password:"yourpassword",
					host:"202.6.233.16"
				});
				server.send({
					text:"mandar mugo iso",
					from:"kutubuku.com<puji@angin.com>",
					to:"puji@padi.net.id",
					subject:"tesss"
				},function(err,message){
					//console.log(err||message);
					//res.send(err||message);
				});
			}
		},1000*60*60*60*24);
		res.render("home.html",{title:"WebDev App",username:"Dude",clients:obj});
	});
});
app.get("/getclient/:id",function(req,res){
	Clients.find({where:{id:req.params.id}}).then(function(data){
		res.send(data);
	});
});
app.post("/removeclient",function(req,res){
	Clients.find({where:{id:req.body.id}}).then(function(data){
		data.destroy();
	});
	res.send("telah dihapus");
});
function addclient(req,callback){
	Clients.create({
		url:req.body.url,
		pic:req.body.pic,
		packagetype:req.body.packagetype,
		description:req.body.description,
		expdate:req.body.expdate
	}).then(function(data){
		console.log("Data : "+data.id);
		callback(null,data.id);
	}).catch(function(err){
		console.log("tidak dapat mengembalikan nilai",err);
		callback(err,null);
	}).finally(function(){
		console.log("Ayo semangat  :D ");
	});
}
app.post('/zaveclient',function(req,res){
	addclient(req,function(error,success){
		if(error){
			console.log("error menyimpan");
			res.sendStatus(error);
		}else{
			console.log("sukses menyimpan "+success);
			res.sendStatus('{"result":'+success+'}');
		}
	})
});
app.post("/update",function(req,res){
	Clients.find({where:{id:req.body.id}}).then(function(client){
		console.log("packagetype",req.body);
		client.updateAttributes({
			url:req.body.url,
			pic:req.body.pic,
			packagetype:req.body.packagetype,
			expdate:req.body.expdate,
			description:req.body.description
		}).then(function(data){
			console.log("Success update the datas : ",data);
			res.send(data);
		}).catch(function(err){
			console.log("Cannot update",err);
		});
	});
});
app.get("/sendmail",function(req,res){
	var email=require("emailjs"),
	server=email.server.connect({
		user:"puji",
		password:"YOURPASSWORD",
		host:"202.6.233.16"
	});
	server.send({
		text:"mandar mugo iso",
		from:"kutubuku.com<puji@angin.com>",
		to:"puji@padi.net.id",
		subject:"tesss"
	},function(err,message){
		console.log(err||message);
		res.send(err||message);
	});	
});
app.listen(process.env.PORT || 2000);
