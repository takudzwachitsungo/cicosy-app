import 'package:cicosy/common/color_extension.dart';
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  const RoundTextField({super.key,  required this.hintText, this.controller, this.keyboardType, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return   Container(
                      decoration: BoxDecoration(
                        color: TColor.textfield, 
                        borderRadius: BorderRadius.circular(25)),
                      child: TextField(
                        autocorrect: false, 
                        controller: controller,
                        obscureText: obscureText,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                              color: TColor.placeholder, 
                              fontSize: 14,
                              fontWeight: FontWeight.w500),),
                                  ),);
                    
  }
}