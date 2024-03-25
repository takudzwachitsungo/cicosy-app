import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/round_button.dart';
import 'package:cicosy/view/main_tabview/main_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
   
   int selectPage = 0;
   PageController controller = PageController();

  List pageArr = [
    {
    "title": "Welcome to Cicosy",
    "subtitle": "The home of innovative solutions for your business",
    "image": "assets/img/on_boarding_1.png"
    },
  
    {
    "title": "Fast Delivery",
    "subtitle": "Fast delivery of your products to your customers",
    "image": "assets/img/on_boarding_2.png"
    },
    
    {
    "title": "Live Tracking",
    "subtitle": "Real-time tracking of your products to your customers",
    "image": "assets/img/on_boarding_3.png"
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ??0;
      
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
        PageView.builder(
          controller: controller,
          itemCount: pageArr.length,
          itemBuilder: ((context, index){
            var pObj = pageArr[index] as Map? ??{};

          return Column(
            
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: media.width,
                height: media.width,
                alignment: Alignment.center,
                child: Image.asset(pObj["image"].toString(), width: media.height * 0.3,fit: BoxFit.contain,
                ),
              ),

             SizedBox(height: media.width *0.4,),

            Text(
              pObj["title"].toString(),
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 28,
                fontWeight: FontWeight.w800,
              ),
            ),

            SizedBox(height: media.width *0.07,),

             Text(
              pObj["subtitle"].toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.secondaryText,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),

             SizedBox(height: media.width *0.3,),
            ],
          );

        }
        ),
        )
     
       ,Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

           SizedBox(height: media.height *0.6,),


        Row(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: pageArr.map((e){
          int index = pageArr.indexOf(e);

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 6,
            width: 6,
           decoration: BoxDecoration(color: index == selectPage ? TColor.primary :
           TColor.placeholder, borderRadius: BorderRadius.circular(4)),
          );

        }).toList(),),

         SizedBox(height: media.height *0.22,),
     

        Padding(
          padding: const EdgeInsets.symmetric(horizontal:25),
          child: RoundButton(title:"Next", onPressed: (){
            if(selectPage >= 2){
              // Home Screen

              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => const MainTabView()
                  )
                  );
          
            }else{
              //Next Screen
              setState(() {
                selectPage = selectPage + 1;
                controller.animateToPage(
                selectPage, duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn);
              });
            }
          
          }),
        ),

       

       ],)
     
      ],
      ),
    );
  }
}