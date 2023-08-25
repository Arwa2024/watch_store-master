import 'package:flutter/material.dart';

class Watches extends StatelessWidget {
  Watches({Key? key, required this.index, required this.items}) : super(key: key);
  int index;
  List<Watch> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 100,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black,
          width: 1,),
      ),
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.transparent,
        elevation: 0,
        child: GridTile(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                color: Color.fromRGBO(68, 68, 68, 1),

          borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
          ),
        ),
                        child: Text( '${items[index].price}'r'$',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        )),
                    Spacer(),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image(image: AssetImage('assets/images/Vector.png')),
                   ),
                  ],
                ),
                 Spacer(),
                 Image.asset(
                   items[index].image,
                   height: 116,
                   width: 150,
                 ),
                 Spacer(),

                 Container(
                   width: 200,
                   height: 45,
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(68, 68, 68, 1),

                     borderRadius: BorderRadius.only(
                       bottomLeft: Radius.circular(16),
                       bottomRight: Radius.circular(16),
                     ),
                   ),

                   child: Center(
                     child: Text(
                       items[index].name,
                       style: const TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.w500,
                         color: Colors.black,),
                     ),
                   ),
                 ),
              ],
            ),


        ),
      ),
    );
  }
}

class Watch {
  final String image;
  final String name;
  final double price;
  Watch({required this.image,required this.price,required this.name});
}