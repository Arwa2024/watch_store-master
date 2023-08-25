import 'package:flutter/material.dart';
import 'package:watch_store/Features/authentication/presentation/views/sign_in_view.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import '../../../../../core/utils/widgets/custom_sign_up_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: buildBoxDecorationColor(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 48),
                child: Text("Sign Up",
                    style: Styles.fontSize32.copyWith(color: Colors.black)),
              ),
              const SizedBox(
                height: 57,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Form(
                  child: Column(
                    children: [
                      CustomSignUpTextField(text: "Email address"),
                      SizedBox(
                        height: 16,
                      ),
                      CustomSignUpTextField(text: "User Name"),
                      SizedBox(
                        height: 16,
                      ),
                      CustomSignUpTextField(text: "Password"),
                      SizedBox(
                        height: 16,
                      ),
                      CustomSignUpTextField(text: "Confirm Password"),
                      SizedBox(
                        height: 32,
                      ),
                      CustomButton(text: "sign Up")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already Have Account ? ",
                    style: Styles.fontSize18,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInView(),
                        )),
                    child: Text(
                      "Sign In",
                      style: Styles.fontSize18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
