import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watch_store/Features/home_page/presentation/views/widgets/watches.dart';

import '../../../../../core/utils/styles.dart';
import 'brands.dart';
import 'image_controller.dart';

class HomePageViewBody extends StatefulWidget {
  const HomePageViewBody({Key? key}) : super(key: key);

  @override
  State<HomePageViewBody> createState() => _HomePageViewBodyState();
}

class _HomePageViewBodyState extends State<HomePageViewBody> {
  PageController controller = PageController();
  List<Brand> brands = [
  Brand(
  image: 'assets/images/omega.png',
  brand: 'Omega',
  ),
    Brand(
      image: 'assets/images/tag.png',
      brand: 'TAG',
    ),
    Brand(
      image: 'assets/images/jaeger.png',
      brand: 'Jaeger',
    ),
  ];
  List<Watch> items = [
  Watch(
  name: 'Piaget',
  image: 'assets/images/piaget.png',
  price: 500,),
  Watch(
  name: 'meister',
  image: 'assets/images/meister.png',
  price: 500,),
    Watch(
      name: 'Piaget',
      image: 'assets/images/piaget.png',
      price: 500,),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: buildBoxDecorationColor(),
      child: CustomScrollView(
        shrinkWrap: false,
        slivers: [
          SliverAppBar(
            centerTitle: false,
            pinned: true,
            stretch: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            expandedHeight: 210,
            automaticallyImplyLeading: false,

            title: Row(
              children: [
                SvgPicture.asset('assets/icons/menu.svg', height: 32),
                const Spacer(
                  flex: 1,
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                     CircleAvatar(backgroundColor: Colors.red[700],
                    radius: 3,),
                    SvgPicture.asset('assets/icons/cart.svg', height: 30),
                  ],
                ),
              ],
            ),
            flexibleSpace:
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 64,left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Hello,',style: Styles.fontSize24.copyWith(color: const Color(0x80000000)),),
                    Text('Rebprt Nicklas',style: Styles.fontSize24.copyWith(color:Colors.black),),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 45,
                            child: TextField(decoration: InputDecoration(
                              enabledBorder:OutlineInputBorder(

                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(color: Color(0x80000000)),

                              ) ,
                              focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(color: Color(0x80000000)),

                              ),
                              prefixIcon: SvgPicture.asset('assets/icons/search.svg',height: 10,fit: BoxFit.scaleDown),

                              label: Text('Search',style: Styles.fontSize20.copyWith(color: const Color(0x80000000)),),



                              border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(color:Color(0x80000000)),

                              )
                            ),),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        SvgPicture.asset('assets/icons/setting.svg',height: 36,)
                      ],
                    ),
                    SizedBox(height: 20,),

                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    height:170,
                    child: PageView(
                      controller: controller,
                      children: [
                        ImageView(
                          fontSize: 24,
                          imageContreller:controller ,
                          image: 'assets/images/unsplash.png',
                          text: 'Sale Upto',

                        ),
                        ImageView(
                          imageContreller: controller ,
                          image: 'assets/images/unsplash.png',
                        ),
                        ImageView(
                          imageContreller:controller ,
                          image: 'assets/images/unsplash.png',
                        ),
                      ],
                    ),


                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: controller,
                      effect: const WormEffect(
                        dotColor: Color(0xffD9D9D9),
                        activeDotColor: Color(0xffFFFDFD),
                        spacing: 15,
                        dotHeight: 12,
                        dotWidth: 12,
                      ),
                      count: 3,
                      onDotClicked: (index) => controller.jumpToPage(index),
                    ),
                  ),
                  Row(
                    children: [
                      Text('Brands',style: Styles.fontSize24.copyWith(color:Colors.black),),
                      const Spacer(),
                      TextButton(onPressed: (){},
                        child: const Text('See All',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),

                        ),),
                    ],
                  ),
                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 140,
                    child: ListView.builder(
                        itemCount: brands.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Brands(index: index, brands: brands)),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Popular',style: Styles.fontSize24.copyWith(color:Colors.black),),
                      const Spacer(),
                      TextButton(onPressed: (){},
                        child: const Text('See All',
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.7),
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),

                        ),),
                    ],
                  ),
                ],
              ),

            ),


          ),

          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Watches(
                    index: index,
                    items: items,
                  ),
                ),
                childCount: items.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
              ),)
        ],
      ),
    );
  }
}
