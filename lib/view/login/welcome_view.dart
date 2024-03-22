import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/round_button.dart';
import 'package:cicosy/view/login/login_view.dart';
import 'package:cicosy/view/login/sign_up_view.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {

    var media = MediaQuery.of(context).size;


    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
        
        
              children: [
                // Image.asset(
                //   "assets/img/welcome_top_shape.png",
                //   width: media.width,
                //   height: media.height,
                //   fit: BoxFit.cover,
                // ),
        
                Image.asset(
                "assets/img/app_logo.png",
              width: media.width * 0.60,
              height: media.height * 0.60,
              fit: BoxFit.contain,)
        
              ],
            ),
        
            const SizedBox(
              height: 60,
              ),
        
              Text(
                    "Discover the best deals from over 1,000\ndistributors and fast delivery to your\ndoorstep",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color:TColor.secondaryText,
                     fontSize: 13, 
                     fontWeight: FontWeight.w500,
                    ),
                  ),
        
               SizedBox(
              height: media.width * 0.1,
              ),
        
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: RoundButton(
                title: "Login",
                onPressed: () {

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
                },
              ),
            ),
        
             const SizedBox(
            height: 10,
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create an Account",
                type: RoundButtonType.textPrimary,
                 onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpView(),));
                 },),
            ),
        
        
            
          ],
        ),
      ),
    );
  }
}