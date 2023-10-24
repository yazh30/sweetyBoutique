import 'package:flutter/material.dart';
import 'package:sweetyboutique_app/components/Homepage/Home_page.dart';
import 'package:sweetyboutique_app/components/Homepage/Home_page_view_model.dart';
import 'package:sweetyboutique_app/components/Theme/colorTheme.dart';
import 'package:sweetyboutique_app/components/mainpage/main_page.dart';
import 'package:sweetyboutique_app/models/menu/menu.dart';

class HomePageView extends State<HomePage> {
HomePageviewmodel viewModel=new HomePageviewmodel(); 
bool changeicon=true;

@override
void initState(){
  super.initState();
  viewModel!.menuList.menuItem = [];
  viewModel!.menuList = MenuList.fromJson(viewModel!.menuObj);
}

@override
 Widget build(BuildContext context) {
  return Scaffold(
    resizeToAvoidBottomInset:false,
    drawer: Drawer(
       backgroundColor: colortheme.colorTheme.constantcolor,
      width: MediaQuery.of(context).size.width*0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width:200,
             child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: colortheme.colorTheme.constantcolor,
              ),
              accountName:Text('Sweety',style:TextStyle(fontSize:19,fontWeight:FontWeight.bold),),
              accountEmail:Text('sweetyBoutique@gmail.com',style:TextStyle(fontSize:13,fontWeight:FontWeight.bold),),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image:AssetImage('assets/png/logo3.png',))
                ),
              ),
              ),
             ),
          SizedBox(height: 20),
          ListTile( onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            leading: Icon(Icons.home_outlined,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Home',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile( onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.favorite_border_outlined,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Favorite',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile( onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.wallet_outlined,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Wallet',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile( onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.settings,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Setting',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile( onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.help_outline,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Help',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile(
             onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.info_outline,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('About Us',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
           ListTile(
             onTap: () {
              setState(() {});
            },
            leading: Icon(Icons.star_border_purple500,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Rate Us',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,
            ),),
          ),
          SizedBox(height:100),
           ListTile(
            onTap: () {
              setState(() {
                Navigator.push(context,MaterialPageRoute(builder: (context) => mainPage()));
              });
            },
            leading: Icon(Icons.logout,size:30),
            iconColor: colortheme.colorTheme.white,
            title: Text('Logout',style: TextStyle(color: colortheme.colorTheme.white,
            fontSize:20,fontWeight: FontWeight.bold
            ),),
          ),
        ],
      ),
    ),
    appBar: AppBar(
     actions: [
        Container(
          padding: EdgeInsets.only(right:20),
          child: Icon(
            Icons.trolley,
            color: colortheme.colorTheme.white,
          ),
        ),
     ], 
     foregroundColor: colortheme.colorTheme.white,
      toolbarHeight:50,
      backgroundColor: colortheme.colorTheme.constantcolor,
    ),
    body: pagecontent(),
  );
 }
 Widget pagecontent(){
  return ListView(
 
    children:<Widget> [
      SizedBox(height:25),
      welcomesection(),
      SizedBox(height: 15),
      Row(
        children: [
          Expanded(
            child: SearchBarsection(),
          ),
         filterbuttonSection(),
        ],
      ),
      SizedBox(height: 30),
      chipsection(),
       SizedBox(height:30),
        specialoffersection(),
         SizedBox(height:20),
         textsection(),
      SizedBox(height:20),
    
    ],
  );
 }
 

 Widget textsection(){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal:25),
              child: Text('products For You',
              style: TextStyle(color:colortheme.colorTheme.black,fontSize:17,),
              ),
      ),
       Container(
        padding: EdgeInsets.only(right:20),
        child: Text('View All',
         style: TextStyle(color:colortheme.colorTheme.black,fontSize:17,),
         ),
      ),
          ],
        ),
      SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
          padding: EdgeInsets.symmetric(horizontal:20),
      child:Row(
        children:viewModel!.menuList.menuItem!
        .asMap()
        .map((key, eachmenu) =>MapEntry(key,popularcard(eachmenu)
        )).values
        .toList(),
      ) ,
      ),
    )
      ],
    ),

  );
 }


Widget popularcard(Menu eachmenu){
 return Stack(
  children: <Widget>[
     Container(
       padding: EdgeInsets.only(right:10,top:24),
       margin: EdgeInsets.only(left:10,top:6),
         decoration: BoxDecoration(
            color: colortheme.colorTheme.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: Colors.grey,blurRadius:4.0),
            ]
          ),
          child:Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left:10),
                padding: EdgeInsets.symmetric(vertical:12),
                height: 130,
                width: 120,
                child:Image.network(eachmenu.avatar!)
              ),
              SizedBox(height:4),
              Container(
                padding: EdgeInsets.only(left:10),
                child: Text(eachmenu.title!,
                style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),
                )),
              Container(
                padding: EdgeInsets.only(left:10), 
                child: Text("₹ ${eachmenu.Price!}",
                style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color:colortheme.colorTheme.constantcolor),
                ))
            ],
          ),
        ),
        Positioned(
         right:1,
          top:1,
          child:IconButton(
            icon:Icon(changeicon ? Icons.favorite_outline : Icons.favorite,
            color:Colors.red,size: 20,),
            onPressed: () {
              setState(() {
                changeicon = !changeicon;
              });
            },
          )
          )
        
      ],
    );
}


 Widget specialoffersection(){
  return Container(
    margin: EdgeInsets.symmetric(horizontal:20),
    height: 150,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: colortheme.colorTheme.white,
      boxShadow: const [
        BoxShadow(color: Colors.grey,
        blurRadius:5.0
        ),
      ]
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left:5),
          width: 200,
         child:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUFXNHw0KHOBhhwSQMlWisl1OEtwQH87dcGA&usqp=CAU'),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal:25,vertical:9),
          child: Column(
            children:<Widget> [
              Container(
                child: Text('diwali big sale',
                style: TextStyle(
                  color: colortheme.colorTheme.black,
                  fontSize:15,fontWeight: FontWeight.bold),
                  ),
              ),
              SizedBox(height:6),
               Container(
                child: Text('special offer',
                style: TextStyle(
                  color: colortheme.colorTheme.constantcolor,
                  fontSize:15,fontWeight: FontWeight.bold),
                  ),
              ),
              SizedBox(height:7),
               Container(
                child: Text('UP TO 50% OFF',
                style: TextStyle(
                  color: colortheme.colorTheme.black,
                  fontSize:15,fontWeight: FontWeight.bold),
                  ),
              ),
              SizedBox(height:6),
               Column(
                 children: [
                  MaterialButton(
                    onPressed:() {
                    setState(() {
                   });
                  },
                  shape: RoundedRectangleBorder(
                  side:BorderSide(
                    color:colortheme.colorTheme.constantcolor),
                   borderRadius: BorderRadius.circular(20),
                ),
                  child: Text('shop now',
                    style: TextStyle(
                      color: colortheme.colorTheme.constantcolor,
                      fontSize:15,fontWeight: FontWeight.bold),
                      ),
                  ),]
                 ),
                 ],
               )
             ),
           ]
         )
     );
  }


 Widget filterbuttonSection(){
  return Container(
    padding: EdgeInsets.all(6),
    child: Icon(Icons.filter_list,color: colortheme.colorTheme.constantcolor,size:40,),
   );
 }

 Widget SearchBarsection(){
  return Container(
    padding: EdgeInsets.all(6),
    margin: EdgeInsets.only(left:10),
   child: TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left:30),
      border:InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: colortheme.colorTheme.black),
      ),
       enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: colortheme.colorTheme.black),),
      hintText:'search',
      prefixIcon: Icon(Icons.search,color: colortheme.colorTheme.black,),
      suffixIcon: Icon(Icons.mic),
     ),
    ),
   ); 
 }
 

 Widget chipsection(){
  return Container(
    child: SingleChildScrollView(
       scrollDirection: Axis.horizontal,
         padding: EdgeInsets.only(left:20,top:5,bottom:5),
          child:Row(
             children:viewModel!.chipData
              .asMap()
              .map((key,eachData) => MapEntry
              (key,
              Container(
                margin: EdgeInsets.only(right:10),
                child: InkWell(onTap:(){
                  setState(() {
                    viewModel!.chosenchip=eachData;
                  });
                },
                child:Container(
                    decoration: BoxDecoration(
                    color:viewModel!.chosenchip==eachData
                     ? colortheme.colorTheme.constantcolor
                     : colortheme.colorTheme.white,
                     boxShadow:const [BoxShadow(color:Colors.grey,blurRadius:5.0)],
                    borderRadius:const BorderRadius.all(Radius.circular(5)),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal:10,vertical:6),
                  child: Text(eachData,style: TextStyle(
                    color: viewModel!.chosenchip==eachData
                     ? colortheme.colorTheme.white
                     : colortheme.colorTheme.constantcolor,
                  ),),
                )),
              )))
               .values
              .toList()
              ),
          ),
  );
}



 Widget welcomesection(){
  return Padding(
         padding:const EdgeInsets.symmetric(horizontal:20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
               child:Text("WELCOME",
               style:TextStyle(fontSize:20,color:colortheme.colorTheme.constantcolor,fontWeight:FontWeight.bold),
               )
                ),
                Text.rich(
                  TextSpan(
                    children:[
                      TextSpan(
                        text:"what's your",  
                        style: TextStyle(fontWeight: FontWeight.bold,color:colortheme.colorTheme.black,fontSize:25,)
                        ),
                      TextSpan(
                        text:" OUTFIT ",
                        style: TextStyle(fontWeight: FontWeight.bold,color:colortheme.colorTheme.constantcolor,fontSize:23)
                        ),
                      TextSpan(
                        text:"today?",
                        style: TextStyle(fontWeight: FontWeight.bold,color:colortheme.colorTheme.black,fontSize:25)
                        ),
                    ]
              ),
            ),
         ]
      )
     
  );
  }
}

 