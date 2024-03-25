import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/round_button.dart';
import 'package:cicosy/common_widget/round_icon_button.dart';
import 'package:cicosy/common_widget/round_textfield.dart';
import 'package:cicosy/view/login/reset_password_view.dart';
import 'package:cicosy/view/login/sign_up_view.dart';
import 'package:cicosy/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              const SizedBox(height: 64,),
          
              Text(
                "Login", 
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30,
                   fontWeight: FontWeight.w800),),
          
          
          
              Text(
                "Add your details to login", 
                style: TextStyle(
                  color: TColor.secondaryText, 
                  fontSize: 14,
                   fontWeight: FontWeight.w500),),
          
                   const SizedBox(
                    height: 25,
                    ),
          
                RoundTextField(
                  hintText: "Your Email", 
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                  ),

                   const SizedBox(
                    height: 25,
                    ),

                RoundTextField(
                  hintText: "Password", 
                  controller: txtPassword,
                  obscureText: true,
                  ),
          
                   const SizedBox(
                    height: 25,
                    ),

                RoundButton(title: "Login", onPressed: () {
                  Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const OnBoardingView()
                      )
                      );
                }
                ),

                const SizedBox(
                    height: 4,
                    ),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordView()
                      )
                      );
                  },
                  child: Text(
                    "Forgot your Password?",
                    style: TextStyle(
                      color: TColor.secondaryText, 
                      fontSize: 14,
                      fontWeight: FontWeight.w500),),
                ),

                const SizedBox(
                    height: 30,
                    ),


                Text(
                    "or Login with",
                    style: TextStyle(
                      color: TColor.secondaryText, 
                      fontSize: 14,
                      fontWeight: FontWeight.w500),),

                const SizedBox(
                    height: 30,
                    ),
                    RoundIconButton(
                      icon: "assets/img/facebook_logo.png",
                      title:  "Login with Facebook" ,
                      color: const  Color(0xff367FC0),
                      onPressed: () {}),


                    const SizedBox(
                    height: 25,
                    ),

                     RoundIconButton(icon: "assets/img/google_logo.png",title: "Login with Google" ,  color: const Color(0xffDD4B39), onPressed: () {}),


                    const SizedBox(
                    height: 80,
                    ),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const SignUpView()
                      )
                      );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: TColor.secondaryText, 
                          fontSize: 14,
                          fontWeight: FontWeight.w500),),

                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: TColor.primary, 
                          fontSize: 14,
                          fontWeight: FontWeight.w700),),
                    ],
                  ),
                ),

                    
          ],),
        ),),
    );
  }
}