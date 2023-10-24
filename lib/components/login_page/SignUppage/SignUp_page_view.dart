import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/components/Theme/colortheme.dart';
import 'package:sweetyboutique_app/components/login_page/SignUppage/SignUp_page.dart';
import 'package:sweetyboutique_app/components/login_page/SignUppage/SignUp_page_view_model.dart';
import 'package:sweetyboutique_app/components/login_page/login_page.dart';

class SignUpPageView extends State<SignUpPage> {
SignUpPageviewmodel viewModel=new SignUpPageviewmodel(); 
  bool obscureText=true;
 @override
 Widget build(BuildContext context) {
    return Container(
     decoration:BoxDecoration(image: DecorationImage(image: AssetImage("assets/png/blue1.png"),fit: BoxFit.cover)),
     child: Scaffold(
      resizeToAvoidBottomInset: false,
       backgroundColor: Colors.transparent,
       body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 40,horizontal: 10),
            child: IconButton(
                 color: Colors.white,
                 onPressed:() {
                 Navigator.push(context,MaterialPageRoute(builder:((context) => LoginPage())));
               },
                icon:Icon(Icons.arrow_back),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 150,horizontal: 50),
            child: Text("SignUp",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color:Colors.white),),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 300,right:12,left:12),
              width: 300,
              child: Column(
                children: <Widget>[ 
            TextField(
              decoration: InputDecoration(
              hintText: "Enter your name",hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colortheme.colorTheme.black)
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colortheme.colorTheme.black)
              )
              ), 
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your E-mail address",hintStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colortheme.colorTheme.black)
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colortheme.colorTheme.black)
              )
              ), 
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter ypur password",hintStyle: TextStyle(color: Colors.white),
                suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(obscureText ? Icons.visibility_outlined: Icons.visibility_off_outlined),
                color: Colors.white,
               ),
                enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color:colortheme.colorTheme.black)
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: colortheme.colorTheme.black)
              )
              ), 
              ),
              SizedBox(height: 20),
              ElevatedButton(
                 style: ElevatedButton.styleFrom(minimumSize: Size(200,40),primary:Colors.white,onPrimary: colortheme.colorTheme.constantcolor,
                 textStyle:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                child:Text("Signup"),
                onPressed:() {},
                 ),
                 Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                          Container(
                          padding: EdgeInsets.only(left: 15,right: 15),
                          child: Row(
                           children:<Widget> [
                            Text("Already have an account?", style: TextStyle(fontSize:14,color:Colors.white),),
                            TextButton(
                                style: TextButton.styleFrom(foregroundColor:Colors.white),
                                child: Text("SignIn",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,decoration:TextDecoration.underline)),
                                onPressed:() {
                                   Navigator.push(context,MaterialPageRoute(builder:((context) => LoginPage())));
                                }, 
                               ),
                            ],
                          ),
                        )
                       ],
                      ),
                     ],
                    ),
                  SizedBox(height: 40),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 0.3,spreadRadius: 2)],
                      color: Colors.white,shape: BoxShape.circle),
                      child:CircleAvatar(
                      backgroundImage: AssetImage("assets/png/fb png.png")),
                      height: 30,
                      width: 30,
                      ) ,
                    SizedBox(width: 10),
                       Container(
                         decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.grey,blurRadius: 0.3,spreadRadius: 2)],
                         color: Colors.white,shape: BoxShape.circle),
                        child:CircleAvatar(backgroundImage: AssetImage("assets/png/google png.png")),
                        height: 30,
                        width: 30,
                  ),
                    SizedBox(width: 10),
                     Container(
                       decoration: BoxDecoration(boxShadow:[BoxShadow(color: Colors.blueGrey,blurRadius: 0.3,spreadRadius: 2)],
                         color: Colors.white,shape: BoxShape.circle),
                      child: CircleAvatar(backgroundImage: AssetImage("assets/png/twitter.png")),
                      height: 30,
                      width: 30,
                  ), 
                   ]
                  ),
                
                ],
              ),
            ),
          ),
         
        ],
       ),
     ),
    );
 }
}   