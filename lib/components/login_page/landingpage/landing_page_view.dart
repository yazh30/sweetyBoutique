import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sweetyboutique_app/components/Homepage/Home_page.dart';
import 'package:sweetyboutique_app/components/Theme/colortheme.dart';
import 'package:sweetyboutique_app/components/login_page/landingpage/landing_page.dart';
import 'package:sweetyboutique_app/components/login_page/landingpage/landing_page_view_model.dart';

class landingPageView extends State<landingPage> {
landingPageviewmodel viewModel=new landingPageviewmodel(); 
 int selectedindex = 0; 
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar:
      Container(
        color: colortheme.colorTheme.constantcolor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: GNav(
           backgroundColor: colortheme.colorTheme.constantcolor,
            tabBackgroundColor: Colors.white,
            gap: 8,
            onTabChange:(index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon:Icons.home,
                text: "Home",
                ),
              GButton(
                icon:Icons.menu,
                text: "category",
                ),
              GButton(
                icon:Icons.shopping_cart,
                text: "cart",
                ),
              GButton(
                icon:Icons.person,
                text: "profile",
                ),
            ],
            ),
        ),
      ),

      body:
       switchcaseFun(),
      

    );
 }
 Widget switchcaseFun(){
  switch (selectedindex){
    case 0:
    return HomePage();
    
    default:
    return Container();
    
  }
 }
}