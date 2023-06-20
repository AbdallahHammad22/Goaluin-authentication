import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../control/constant.dart';
import '../screen/sign_in.dart';
import '../screen/sign_up.dart';

class CustomLogButton extends StatelessWidget {
  const CustomLogButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 70,
      width: 340,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap:()=>Get.to(()=>const SignINScreen()),
            child: Container(
              height: 70,
              width: 170,
              decoration: BoxDecoration(
                color: p2,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child:  Text(
                  "SignIn",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap:()=>Get.to(()=>const SignUPScreen()),
            child: const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text("SignUp", style: TextStyle(fontSize: 14,)),
            ),
          ),
        ],
      ),
    );
  }
}
