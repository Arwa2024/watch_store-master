import 'package:flutter/material.dart';
import 'package:watch_store/core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_sign_in_text_field.dart';
import '../sign_up_view.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: buildBoxDecorationColor(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png", height: 250),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Form(
                child: Column(
                  children: [
                    const CustomSignInTextField(
                      imgPath: "assets/images/black-male-user-symbol.png",
                      text: "Username",
                      // obscureText: false,
                      //   keyboardType: TextInputType.text,
                      //   textInputAction: TextInputAction.next,
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const CustomSignInTextField(
                        imgPath: "assets/images/key.png", text: "Password"),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "forget password ?",
                            style: Styles.fontSize10,
                          ),
                        ],
                      ),
                    ),
                    const CustomButton(text: "sign in")
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/google.png"),
                  Image.asset("assets/images/facebook.png"),
                  Image.asset("assets/images/gmail.png"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "New User ? ",
                  style: Styles.fontSize18,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpView(),
                      )),
                  child: Text(
                    "Sign Up",
                    style: Styles.fontSize18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
