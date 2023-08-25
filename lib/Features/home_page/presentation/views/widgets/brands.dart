
import 'package:flutter/material.dart';

class Brands extends StatelessWidget {
  Brands({Key? key, required this.index, required this.brands}) : super(key: key);
  int index;
  List<Brand> brands;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 140,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.black,
            width: 1,),
      ),
        child: Column(
          children: [
            Image.asset(
              brands[index].image,
              width:120,
              height: 100,
            ),
           Container(
             width: 100,
             height: 38,
             decoration: BoxDecoration(
               color: Color.fromRGBO(68, 68, 68, 1),

               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(16),
                 bottomRight: Radius.circular(16),
               ),
             ),

             child:  Text(
               brands[index].brand,
               style: const TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 color: Colors.black,
               ),
               textAlign: TextAlign.center,
             ),
           )
          ],
        ),
      ),

    );
  }
}

class Brand {
   final String image;
   final String brand;
  Brand({required this.image,required this.brand});

}