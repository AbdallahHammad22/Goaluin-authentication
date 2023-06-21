import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:goaluin_flutter/view/home/screen/home_screen.dart';
import 'package:goaluin_flutter/view/registration/widget/CustomButton.dart';
import '../../../control/constant.dart';
import '../../../control/home_controller.dart';

class SignINScreen extends GetView<HomeController> {
  const SignINScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: p3,
      body: Form(
        key: controller.loginFormKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.close,
                  size: 30,
                )),
            SvgPicture.asset("assets/image/signIn.svg"),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 40, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/image/welcomeback.svg",
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 320,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Email Address",
                            suffixIcon: Icon(Icons.email_outlined),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.emailController,
                          onSaved: (value) {
                            controller.email = value!;
                          },
                          validator: (value) {
                            return controller.validateEmail(value!);
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscuringCharacter:'*', //added obscuringCharacter here
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: "Password",
                            suffixIcon: Icon(Icons.lock_outline),
                          ),

                          controller: controller.passwordController,
                          onSaved: (value) {
                            controller.password = value!;
                          },
                          validator: (value) {
                            return controller.validatePassword(value!);
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CustomButton(
                            textTyp: "Login",
                            OnPressed: ()=>Get.to(HomeScreen())),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        )),
      ),
    );
  }
}
