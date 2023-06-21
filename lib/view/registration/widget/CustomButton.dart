import 'package:flutter/material.dart';

import '../../../control/constant.dart';

class CustomButton extends StatelessWidget {

  String textTyp ;
  VoidCallback OnPressed;

  CustomButton({super.key,
    required this.textTyp,
    required this .OnPressed
});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        onPressed:OnPressed,
      color: p2,
      child: Text(textTyp,style: const TextStyle(color:Colors.white),),),
    );
  }
}
