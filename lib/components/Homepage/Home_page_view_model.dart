import 'package:sweetyboutique_app/models/menu/menu.dart';

class HomePageviewmodel{
 List<String> chipData =  ['All','kurti','Men clothing','Kids','Westernwear','saree','Lehengas'];
 String? chosenchip='All';
MenuList menuList = MenuList();
    dynamic  menuObj = {
      "menuItem":[
        {
         'title':'Flower Bloom',
         'Price':'500',
         'Description':
           "  Chicken Biryani is a delicious savory rice dish that is loaded with spicy marinated chicken, caramelized onions, and flavorful saffron rice.",
          'avatar' :
           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKzsgWHfKHtxvG6ZLiMy-m2RKjHzLlgeFrOw&usqp=CAU'
        },
        {
          'title':'Lymio kurta set',
          'Price': '999',
          'Description':
                    "This grilled chicken breast recipe is boneless skinless chicken breasts soaked in a garlic and herb marinade, then grilled to perfection.",
           'avatar':
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVbmU9kfmt8j97JJkBkuD6trguAZ-b5g3aaw&usqp=CAU'
        },
        {
          'title':'party wear',
          'Price': '1000',
          'Description':
                        " chicken shawarma is typically served with garlic sauce, fries, and pickles. The garlic sauce served with the sandwich depends on the meat.",
           'avatar' :
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisvvMjerTn1AAwvhGy8XobhE8HB5I1dDEfA&usqp=CAU'
        },
        {
          'title':'Kurta pajama',
          'Price': '1999',
          'Description':
                        "Chicken lollipop is a popular Indo-Chinese appetizer where a frenched chicken drumette is marinated and then batter fried or baked until crisp.",
           'avatar' :
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVsep9Z7rqCPtbUmSbpmAf55VsfAvb_JMolDao837JLh3uDI1cQ5W0cXRGPNMmUEMQygA&usqp=CAU' 
                      
        },
        {
          'title':'Fancy Satin Lehenga',
          'Price': '1500',
          'Description':
                        "Chicken tikka masala is a dish consisting of roasted marinated chicken chunks (chicken tikka) in a spiced sauce.",
           'avatar' :
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ979rhcfgRfUS3dfYZ5RyJ7Wt3v5YDCNuvPQ&usqp=CAU'    
        }

      ],
    };


}