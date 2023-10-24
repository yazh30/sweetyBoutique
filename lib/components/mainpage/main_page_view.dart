import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/components/Theme/colortheme.dart';
import 'package:sweetyboutique_app/components/login_page/SignUppage/SignUp_page.dart';
import 'package:sweetyboutique_app/components/login_page/login_page.dart';
import 'package:sweetyboutique_app/components/mainpage/main_page.dart';
import 'package:sweetyboutique_app/components/mainpage/main_page_view_model.dart';

class mainPageView extends State<mainPage> {
mainPageviewmodel viewModel=new mainPageviewmodel(); 
  
 @override
 Widget build(BuildContext context) {
  return Scaffold(
   body:Container(
      height:double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colortheme.colorTheme.constantcolor,
            colortheme.colorTheme.white,
          ]),
      ),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 50)),
          Image(image: AssetImage("assets/png/logo4.png"),height: 140,width: 140,),
          Text("SWEETY BOUTIQUE",style: TextStyle(color:colortheme.colorTheme.black,fontSize:15,fontWeight: FontWeight.bold),),
          SizedBox(height: 70),
          Text("Welcome Back",style: TextStyle(color:colortheme.colorTheme.black,fontSize:30,fontWeight: FontWeight.bold)),
          SizedBox(height:50),
          Column(
            children: [
              MaterialButton(
                minWidth:300,
                height:60,
                onPressed: (){
                  setState(() {
                    
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context) => LoginPage()));
                },
                shape: RoundedRectangleBorder(
                  side:BorderSide(color:colortheme.colorTheme.black),borderRadius: BorderRadius.circular(30),
                ),
                child: Text("SignIn",style: TextStyle(color:colortheme.colorTheme.black,fontSize:20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height:20),
             MaterialButton(
              minWidth:300,
                height:60,
                onPressed: (){
                  setState(() {
                    
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpPage()));
                },
                shape: RoundedRectangleBorder(
                  side:BorderSide(color:colortheme.colorTheme.black),borderRadius: BorderRadius.circular(30),
                ),
                child: Text("SignUp",style: TextStyle(color:colortheme.colorTheme.black,fontSize:20,fontWeight: FontWeight.bold),),
              )
            ],
          ),
          SizedBox(height:80),
          Text("Login with:",style: TextStyle(fontWeight: FontWeight.bold,color:colortheme.colorTheme.black),),
          SizedBox(height: 20),
          Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow:[BoxShadow(color:colortheme.colorTheme.white,blurRadius: 0.3,spreadRadius: 2)],
                      color:colortheme.colorTheme.white,shape: BoxShape.circle),
                      child:CircleAvatar(
                      backgroundImage: AssetImage("assets/png/fb png.png")),
                      height: 30,
                      width: 30,
                      ) ,
                    SizedBox(width: 10),
                       Container(
                         decoration: BoxDecoration(boxShadow:[BoxShadow(color:colortheme.colorTheme.white,blurRadius: 0.3,spreadRadius: 2)],
                         color:colortheme.colorTheme.white,shape: BoxShape.circle),
                        child:CircleAvatar(backgroundImage: AssetImage("assets/png/google png.png")),
                        height: 30,
                        width: 30,
                  ),
                    SizedBox(width: 10),
                     Container(
                       decoration: BoxDecoration(boxShadow:[BoxShadow(color:colortheme.colorTheme.white,blurRadius: 0.3,spreadRadius: 2)],
                         color:colortheme.colorTheme.white,shape: BoxShape.circle),
                      child: CircleAvatar(backgroundImage: AssetImage("assets/png/twitter.png")),
                      height: 30,
                      width: 30,
                  ), 
                   ]
                  ),
        ] 
              ),
          )
         
         
              );
        
            
        
      
    
  
   
          
              
            
        
          
        
    
    
     
    
  
 }
}