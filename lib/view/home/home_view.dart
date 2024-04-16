import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/category_cell.dart';
import 'package:cicosy/common_widget/most_popular_cell.dart';
import 'package:cicosy/common_widget/popular_distributors_row.dart';
import 'package:cicosy/common_widget/recent_item_row.dart';
import 'package:cicosy/common_widget/round_textfield.dart';
import 'package:cicosy/common_widget/view_all_title_row.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "assets/img/cat_offer.png", "name": "Gas"},
    {"image": "assets/img/cat_sri.png", "name": "Tanks"},
    {"image": "assets/img/cat_3.png", "name": "Accessories"},
    {"image": "assets/img/cat_4.png", "name": "Pipes"},
    ];

     List popArr = [
    {
      "image": "assets/img/res_1.png", 
      "name": "Cadac", 
      "rate": "4.9", 
      "rating": "124",
      "type": "Gas",
      "location": "Chitungwiza",
    },

    {
      "image": "assets/img/res_2.png", 
      "name": "Enviro", 
      "rate": "4.0", 
      "rating": "135",
      "type": "Gas",
      "location": "Harare",
    },

    {
      "image": "assets/img/res_3.png", 
      "name": "Zuva", 
      "rate": "2.7", 
      "rating": "138",
      "type": "Accessories",
      "location": "Mutare",
    },
  
    ];

      List recoArr = [
    {
      "image": "assets/img/m_res_1.png", 
      "name": "Cadac", 
      "rate": "4.9", 
      "rating": "124",
      "type": "Gas",
      "location": "Chitungwiza",
    },

    {
      "image": "assets/img/m_res_2.png", 
      "name": "Enviro", 
      "rate": "4.0", 
      "rating": "135",
      "type": "Gas",
      "location": "Harare",
    },

    ];

    
     List recentArr = [
    {
      "image": "assets/img/item_1.png", 
      "name": "Nexus", 
      "rate": "4.9", 
      "rating": "124",
      "type": "Gas",
      "location": "Chitungwiza",
    },

    {
      "image": "assets/img/item_2.png", 
      "name": "Total", 
      "rate": "4.0", 
      "rating": "135",
      "type": "Gas",
      "location": "Harare",
    },

    {
      "image": "assets/img/item_3.png", 
      "name": "Norgaz", 
      "rate": "2.7", 
      "rating": "138",
      "type": "Accessories",
      "location": "Mutare",
    },
  
    ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
                const SizedBox(
                    height: 46,
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    "Hello Dala",
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "Delivering to",
                     style: TextStyle(
                      color: TColor.secondaryText, 
                      fontSize: 11, 
                       ),
                      ),

                       const SizedBox(
                    height: 6,
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                  Text(
                    " Current Location",
                     style: TextStyle(
                      color: TColor.secondaryText, 
                      fontSize: 16, 
                      fontWeight: FontWeight.w700),
                      ),

                      const SizedBox(width: 25,),

                      Image.asset(
                        "assets/img/dropdown.png", 
                        width: 12, 
                        height: 12
                        )
                      ],
                      )
                ],
                ),
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

                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: catArr.length,
                    itemBuilder: ((context, index) {
                      var cObj = catArr[index] as Map? ??{};
                    return CategoryCell(
                      cObj: cObj, 
                      onTap:() {} ,
                      );
                  })),
                ),
              

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                ViewAllTitleRow(title: "Popular Distributors", onView: () {

                } ,)          
              ),

               ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: popArr.length,
                    itemBuilder: ((context, index) {
                      var pObj = popArr[index] as Map? ??{};
                    return PopularDistributorsRow(
                      pObj: pObj, 
                      onTap:() {} ,
                      );
                  })),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                ViewAllTitleRow(title: "Most Popular", onView: () {

                } ,)          
              ),
                 

                 SizedBox(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: popArr.length,
                    itemBuilder: ((context, index) {
                      var mObj = popArr[index] as Map? ??{};
                    return MostPopularCell(
                      mObj: mObj, 
                      onTap:() {} ,
                      );
                  })),
                ),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child:
                ViewAllTitleRow(title: "Recent Items", onView: () {

                } ,)          
              ),

              ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: recentArr.length,
                    itemBuilder: ((context, index) {
                      var mObj = recentArr[index] as Map? ??{};
                    return RecentItemRow(
                      rObj: mObj, 
                      onTap:() {} ,
                      );
                  })),
            ],
            ),
          ),
      ),
    );
  }
}
