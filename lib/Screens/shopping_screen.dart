import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:store_app/Screens/cart_screen.dart';
import 'package:store_app/Screens/favorite_screen.dart';
import 'package:store_app/Screens/first_screen.dart';
import 'package:store_app/Screens/home_page.dart';
import 'package:store_app/widgets/gridview.dart';
import 'package:store_app/widgets/hidden_drawer.dart';
import 'package:store_app/widgets/text_field_in_shopping_screen.dart';

class shoopingscreen extends StatefulWidget {
  shoopingscreen({super.key});

  @override
  State<shoopingscreen> createState() => _shoopingscreenState();
}

class _shoopingscreenState extends State<shoopingscreen> {
  // int index = 2;
  List imageList = [
    {"id": 1, "image_path": 'assets/charlesdeluvio--79h5kXs6Mw-unsplash.jpg'},
    {"id": 2, "image_path": 'assets/charlesdeluvio-FK81rxilUXg-unsplash.jpg'},
    {"id": 3, "image_path": 'assets/freestocks-_3Q3tsJ01nc-unsplash.jpg'}
  ];

  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final items = <Widget>[
    //   Icon(
    //     Icons.search,
    //     size: 30,
    //   ),
    //   Icon(
    //     Icons.favorite,
    //     size: 30,
    //   ),
    //   Icon(
    //     Icons.home,
    //     size: 30,
    //   ),
    //   Icon(
    //     Icons.shopping_cart_rounded,
    //     size: 30,
    //   ),
    //   Icon(
    //     Icons.settings,
    //     size: 30,
    //   ),
    // ];
    //   List Screens = [
    // shoopingscreen(),
    //     shoopingscreen(),
    //     favorit_screen(),
    //     home_page(),
    //     cart_screen(),
    //   ];
    int _selectedIndex = 2;
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.grey.shade200,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        // appBar: AppBar(
        //   excludeHeaderSemantics: true,
        //   bottomOpacity: 44,
        //   backgroundColor: Colors.transparent,
        //   primary: true,
        //   centerTitle: true,
        //   title: Text('متجر معتصم '),
        //   actions: [
        //     Icon(
        //       Icons.shopping_cart_outlined,
        //       size: 30,
        //       color: Colors.black,
        //     ),
        //     SizedBox(
        //       width: 12,
        //     )
        //   ],
        // ),
/////////////////////////////////////////////////////////////
        // bottomNavigationBar: CurvedNavigationBar(
        //   animationDuration: Duration(milliseconds: 500),
        //   backgroundColor: Colors.grey,
        //   color: Colors.grey.shade300,
        //   items: items,
        //   height: 70,
        //   index: _selectedIndex,
        //   onTap: (index){
        //     _selectedIndex=index;
        //   } ,
        // ),

        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              //       mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    print(currentIndex);
                  },
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                        item['image_path'],
                        fit: BoxFit.cover,

                        width: double.infinity,
                      ),
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imageList.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () => carouselController.animateToPage(entry.key),
                          child: Container(
                            child: SizedBox(height: 12),
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? Colors.red
                                    : Colors.teal),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 178.0, top: 12),
                  child: Text(
                    " Discover",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      // shadows: [
                      //   Shadow(
                      //     blurRadius: 9.0,
                      //     color: Colors.black.withOpacity(0.8),
                      //     offset: Offset(5.0, 5.0),
                      //   ),
                      //  ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0, bottom: 9),
                  child: Text(
                    'check out our new collaction..!!',
                    style: TextStyle(
                        // shadows: [
                        //   Shadow(
                        //     blurRadius: 9.0,
                        //     color: Colors.black.withOpacity(0.8),
                        //     offset: Offset(2.0, 2.0),
                        //   ),
                        // ],
                        ),
                  ),
                ),
                text_field_in_shopping_screen(),
                Container(
                  child: first_Screen(),
                ),

                SingleChildScrollView(child: the_gridview()),
                // Container(
                //   child: the_gridview(),
                // ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
