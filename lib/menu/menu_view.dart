import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/round_textfield.dart';
import 'package:flutter/material.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {

  List menuArr = [
    {
      "name": "Gas", 
      "image": "assets/img/menu_1.png", 
      "items_count": "120",
    },
    
   {
      "name": "Equipment", 
      "image": "assets/img/menu_2.png", 
      "items_count": "220",
    },

{
      "name": "Accessories", 
      "image": "assets/img/menu_3.png", 
      "items_count": "234",
    },

    {
      "name": "Promotions", 
      "image": "assets/img/menu_4.png", 
      "items_count": "789",
    },

    ];
  TextEditingController txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
   
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
                SizedBox(
                    height: 46,
                    ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    "Menu",
                     style: TextStyle(
                      color: TColor.primaryText, 
                      fontSize: 20, 
                      fontWeight: FontWeight.w800 ),
                      ),

                      IconButton(onPressed: (){},
                       icon: Image.asset(
                        "assets/img/shopping_cart.png", 
                        width: 25, 
                        height: 25
                        )
                        ),
                ],),
              ),

               const SizedBox(
                    height: 20,
                    ),
              
                 
              
                 Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextField(
                  hintText: "Search items",
                  controller: txtSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child:Image.asset(
                        "assets/img/search.png", 
                        width: 20, 
                        height: 20
                        ),
                  ),
                  )
                 ),

                 const SizedBox(
                    height: 30,
                    ),

                ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, index){}))
                 ],
             ),
          ),
        ),
     );
  }
}