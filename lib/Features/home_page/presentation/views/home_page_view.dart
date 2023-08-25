import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/Features/home_page/presentation/views/widgets/home_page_body.dart';
class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body:const HomePageViewBody() ,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        elevation: 10,
       selectedItemColor:  Colors.white,

        
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/home.svg',height: 30,color: Colors.grey,),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/fav.svg',height: 30,color: Colors.grey),label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset('assets/icons/profile.svg',height: 32,),label: ''),
        
        
        
      ],
        
        
      ),
    );
  }
}
