
import 'package:flutter/material.dart';
class ImageView extends StatelessWidget {
  ImageView({Key? key,required this.image, this.text,this.fontSize,this.color,required this.imageContreller}) : super(key: key);
  String image;
  String ?text;
  PageController imageContreller = PageController();
  double? fontSize;
  Color? color;



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image),
        Padding(
          padding: const EdgeInsets.only(top: 10,left:20 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: ' Sale Upto ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: '70%',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                          fontSize: 24,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
              ),
             SizedBox(height: 30,),
              const Text('ELEATE YOUR STYLE\n AND STAY CONNECTED',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromRGBO(255, 255, 255, 0.7),
              ),),


            ],
          ),
        )
      ],
    );
  }
}