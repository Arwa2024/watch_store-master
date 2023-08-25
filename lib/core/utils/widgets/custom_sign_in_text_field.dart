import 'package:flutter/material.dart';
import '../styles.dart';

class CustomSignInTextField extends StatelessWidget {
  const CustomSignInTextField({
    super.key,
    required this.text,
    required this.imgPath,
  });

  final String text;
  final String imgPath;

  // final bool obscureText;
  // final TextInputType keyboardType;
  // final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6).withOpacity(0.3),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8, top: 8, left: 18),
        child: Row(
          children: [
            Image.asset(imgPath, height: 30),
            const SizedBox(
              width: 7,
            ),
            Container(
              width: 2,
              height: 32,
              color: Colors.black,
            ),
            const SizedBox(
              width: 10,
            ),
            // TextFormField(
            //   obscureText: obscureText,
            //   keyboardType: keyboardType,
            //   textInputAction: textInputAction,
            //   decoration: InputDecoration(
            //       hintText: text,
            //       border: InputBorder.none),
            //
            // ),
            Text(
              text,
              style: Styles.fontSize18.copyWith(
                color: const Color(0xffFFFDFD).withOpacity(0.3),
              ),
            )
          ],
        ),
      ),
    );
  }
}
