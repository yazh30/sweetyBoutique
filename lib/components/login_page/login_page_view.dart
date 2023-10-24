import 'dart:async';


import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/components/Theme/colorTheme.dart';
import 'package:sweetyboutique_app/components/login_page/SignUppage/SignUp_page.dart';
import 'package:sweetyboutique_app/components/login_page/landingpage/landing_page.dart';
import 'package:sweetyboutique_app/components/login_page/login_page.dart';
import 'package:sweetyboutique_app/components/mainpage/main_page.dart';
import './login_page_view_model.dart';
  
class LoginPageView  extends State<LoginPage>{
 LoginPageViewModel viewModel=new LoginPageViewModel(); 
 TextEditingController namecontroller=TextEditingController();
 bool check=true;
 bool obscureText=true;



@override
  Widget build(BuildContext context) {
 
    
    // Replace this with your build function
    return Container(
       decoration: BoxDecoration(image: DecorationImage(image:AssetImage("assets/png/blue.png"),fit: BoxFit.cover)),
       child: Scaffold(
         resizeToAvoidBottomInset:false,
         backgroundColor: Colors.transparent, 
         body: Stack(
          children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 150,left:50),
            child: Text("SingIn",style:TextStyle(fontSize:30,fontWeight: FontWeight.bold,color:colortheme.colorTheme.constantcolor),
          )),
           maincontend(),
          Center(
            child: Container(
                 padding: EdgeInsets.only(top: 330,right: 10,left: 10),
                  width: 300,
                  child:Column(
                    children: <Widget>[
                  TextField(
                  cursorColor:Colors.black,
                  decoration: InputDecoration(
                    hintText:"Enter your E-mail address",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black,width: 2.0)
                  ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      viewModel.UserData.email=value;
                    });
                    print(value);
                  },
               ),
                SizedBox(height: 20),
                TextField(
                  cursorColor:Colors.black,
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon:IconButton(
                     onPressed: () {
                    setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: Icon(obscureText ? Icons.visibility_outlined: Icons.visibility_off_outlined),
                color: Colors.black,
               ),
                 hintText: "Enter your password",
                 counterText: "Forgot password?",
                 enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30),
                 borderSide: BorderSide(color: Colors.black)
                ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black,width: 2.0)
                ),
                ),
                  onChanged: (value) {
                    setState(() {
                      viewModel.UserData.password=value;
                    });
                    print(value);
                  },
                ),
                CheckboxListTile(
                  checkColor:Colors.white,
                  fillColor:MaterialStatePropertyAll(Colors.black),
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text("Remember me"),
                  value:check, 
                  onChanged:(value) {
                    setState(() {
                      check=value!;
                      viewModel.UserData.Rememberme=value;
                    });
                  },),
                  SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom( backgroundColor:viewModel!.UserData.LoginBottomValidation()
                        ?  colortheme.colorTheme.constantcolor
                        : colortheme.colorTheme.black,
                        minimumSize: Size(200,40),onPrimary: Colors.white,
                      textStyle:TextStyle(fontSize:15,fontWeight:FontWeight.bold)),
                      child:Text("Login"),
                      onPressed: () {
                        if (viewModel!.UserData.LoginBottomValidation()){
                          Navigator.push(context,MaterialPageRoute(builder:(context) =>landingPage() ));
                        }
                      },
                      ),
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
                            Text("Don't have an account ?",style: TextStyle(fontSize:15),),
                            TextButton(
                                style: TextButton.styleFrom(foregroundColor:colortheme.colorTheme.constantcolor),
                                child: Text("SignUp",style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,decoration:TextDecoration.underline)),
                                onPressed:() {
                                   Navigator.push(context,MaterialPageRoute(builder:((context) => SignUpPage())));
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
               )
          )
         ],
        ),
       ),
       );
    }
  Widget maincontend(){
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50,horizontal: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder:((context) => mainPage())));
        },
        child: Icon(Icons.arrow_back,color: Colors.black,)),
    );
  }
}