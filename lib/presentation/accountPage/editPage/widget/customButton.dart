import 'package:final_project/core/utilits/constant.dart';
import 'package:flutter/material.dart';

class accountInfoButton extends StatelessWidget {
  const accountInfoButton({super.key, required this.ontap, required this.text});
  final VoidCallback ontap ; 
  final String text ; 
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
         width: double.infinity,
         decoration: BoxDecoration(
           color: kMainColor,
           borderRadius: BorderRadius.circular(8),
         ),
         child: Center(child: Text(text , style: TextStyle(color: Colors.white , fontSize: 16 , fontWeight: FontWeight.w600))),
      ),
    );
  }
}