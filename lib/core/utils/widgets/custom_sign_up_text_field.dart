import 'package:flutter/material.dart';
import '../styles.dart';

class CustomSignUpTextField extends StatelessWidget {
  const CustomSignUpTextField({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xffF6F6F6).withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 34, top: 10, bottom: 10),
        child: Text(
          text,
          style: Styles.fontSize18.copyWith(
            color: const Color(0xffFFFDFD).withOpacity(0.3),
          ),
        ),
      ),
    );
  }
}
