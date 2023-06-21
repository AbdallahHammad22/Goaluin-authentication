import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../control/constant.dart';
import '../../registration/widget/CustomButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: p4,
        body: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20, left: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/image/welcome.svg"),
              const SizedBox(
                height: 20,
              ),
              const Text("to Test App"),
              const SizedBox(
                height: 20,
              ),
              CustomButton(textTyp: "SignOut", OnPressed: () {}),
            ],
          ),
        ));
  }
}
