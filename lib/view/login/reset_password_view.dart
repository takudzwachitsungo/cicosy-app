import 'package:cicosy/common/color_extension.dart';
import 'package:cicosy/common_widget/round_button.dart';
import 'package:cicosy/common_widget/round_textfield.dart';
import 'package:cicosy/view/login/new_password_view.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {

  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          
              const SizedBox(height: 64,),
          
              Text(
                "Reset Password", 
                style: TextStyle(
                  color: TColor.primaryText, 
                  fontSize: 30,
                   fontWeight: FontWeight.w800),
                   ),

                const SizedBox(
                  height: 15,
                  ),
              Text(
                "Please enter your email to receive a\nlink to create a new password via email.", 
                style: TextStyle(
                  color: TColor.secondaryText, 
                  fontSize: 14,
                   fontWeight: FontWeight.w500),),
          
                   const SizedBox(
                    height: 60,
                    ),
          
                RoundTextField(
                  hintText: "Your Email", 
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                  ),

                   const SizedBox(
                    height: 30,
                    ),

                RoundButton(title: "Send", onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const NewPasswordView()));
                }
                ),

      
          ],),
        ),),
    );
  }
}