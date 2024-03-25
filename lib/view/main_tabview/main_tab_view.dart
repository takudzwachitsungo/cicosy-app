import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/view/home/home_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {

  int selctTab =2;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: pageStorageBucket,
        child: selectPageView,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: (){
        
          if(selctTab != 2){
            selctTab = 2;
            selectPageView = const HomeView();
          }
          if(mounted){
             setState(() {
              
            });
          }
           
          },
          shape: const CircleBorder(),
          backgroundColor: selctTab == 2 ? TColor.primary :TColor.placeholder ,
          child: Image.asset(
            "assets/img/tab_home.png",
            width:30 ,
            height:30,
            ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: TColor.white,
        surfaceTintColor: TColor.white,
        elevation: 1,
        notchMargin: 8,
        shape: const CircularNotchedRectangle(),
        child:  Row(
          children: [
            InkWell(onTap: (){

              if(selctTab != 0){
            selctTab = 0;
            selectPageView = Container();
          }
          if(mounted){
             setState(() {
              
            });
          }
          
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Image.asset("assets/img/tab_menu.png", width: 30, height: 30,),

                const SizedBox(height: 4,
                ),

                Text("Menu", style: TextStyle(color: TColor.placeholder, fontSize: 12, fontWeight: FontWeight.w500),)

            ],),
            )
          ],
          ),
        ),
    );
  }
}