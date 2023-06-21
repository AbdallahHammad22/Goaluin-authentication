import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../control/constant.dart';
import '../widget/custom_login_button.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p1,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 60, bottom: 50),
              child: SvgPicture.asset("assets/image/GraphicPart.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const      Text(
                    "We are here",
                    style: TextStyle(fontSize: 18),
                  ),
                  const      SizedBox(
                    height: 25,
                  ),
                  const   Text(
                    "Your search is over here. We\n provide great figma designs to\n use in your project.",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  const    SizedBox(
                    height: 60,
                  ),
                        const CustomLogButton(),
                  const SizedBox(
                             height: 60,
                  ),
                  Center(
                    child: Text(
                      "App Version 1.0.0",
                      style: TextStyle(fontSize: 13,color: p2),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
