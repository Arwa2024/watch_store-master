import 'package:flutter/material.dart';
import '../styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
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
        border: Border.all(
          color: const Color(0xffF6F6F6).withOpacity(0.1),
          width: 1
        ),
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xff6B6B6B).withOpacity(0.1),
      ),
      child: Center(
        child: Text(
          text,
          style: Styles.fontSize18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
