import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dimaan/pages/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish_bottom_bar/helpers/bottom_bar.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 65,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 247, 248, 249)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ياسين ابوقلاوة",style: GoogleFonts.tajawal(fontSize: 22 , fontWeight: FontWeight.w700),),
                            Text("+971 563 000 195",style: GoogleFonts.tajawal(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.grey),),
                          ],
                        ),
                        Container(
                        margin: EdgeInsets.only(left: 15 , right: 8),
                         width: 40,
                         height: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(50),
                           border: Border.all(
                             color: Color.fromARGB(255, 189, 219, 241)
                           )
                         ),
                         child: ClipRRect(
                           borderRadius: BorderRadius.circular(50),
                           child: Image.asset("assets/profileimage.jpeg" , width: 40, height: 40,),
                           ),
                        ),
                      ],
                    ),
                  ),
                  drawerRowBTN("السلة", "assets/carticon.png", "5", true , 1 ,context),
                  drawerRowBTN("الإشعارات", "assets/notificationicon.png", "5", true , 2 ,context),
                  thickLine(),
                  drawerRowBTN("الدعم الفني", "assets/supporticon.png", "", false ,3 , context),
                  drawerRowBTN("من نحن", "assets/infoicon.png", "", false ,4 , context),
                  drawerRowBTN("التقييمات", "assets/staricon.png", "", false ,5 , context),
                  drawerRowBTN("مبيعات الجملة", "assets/salesicon.png", "", false ,6 , context),
                  drawerRowBTN("تحديث التطبيق", "assets/refreshicon.png", "", false ,7 , context),
                  thickLine(),
                  drawerRowBTN("الشروط والأحكام", "assets/licenseicon.png", "", false ,8  ,context),
                  drawerRowBTN("سياسة الخصوصية", "assets/privacyicon.png", "", false ,9  ,context),
                  drawerRowBTN("سياسة الاسترجاع", "assets/refundicon.png", "", false ,10  ,context),
                  drawerRowBTN("قم بزيارة موقعنا", "assets/websiteicon.png", "", false ,11  ,context),
                  thickLine(),
                  exitBTN(context),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.only(bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          AppColors.greenColor,
                          Color.fromARGB(255, 0, 177, 143,)
                        ]
                      )
                    ),
                    child: Center(
                      child: Text("×" , textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Colors.white , fontWeight: FontWeight.w500),)
                    ),
                  ),
                  Text(
                    "V.1.0.0",
                    style: GoogleFonts.tajawal(fontSize: 14 , fontWeight: FontWeight.w500 ),
                    )
                ],
              )
            ],
          )
        ),
      ),
      body: navBarIndex == 4? homepage() : navBarIndex == 3? orderpage(context) : navBarIndex == 1? shop() : navBarIndex == 0? profile(context) : Container(),
      bottomNavigationBar: 
      Container(
        height: 105,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 30,
              spreadRadius: 30
            )
          ]
        ),
        child: Stack(
          children: [
            ClipPath(
              clipper: NavBarClipper(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(50, 232, 236, 244),
                      Color.fromARGB(255, 232, 236, 244),
                      Color.fromARGB(50, 232, 236, 244),
                    ]
                  )
                ),
              ),
            ),
            Container(
              height: 105,
              padding: const EdgeInsets.only(top: 1.0),
              child: ClipPath(
                clipper: NavBarClipper(),
                child: StylishBottomBar(
                  items: [
                    BottomBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          navBarIndex == 0? "assets/profileslct.png" :"assets/profile.png" , 
                          width: 30,
                          ),
                      ),
                      title: Text("الحساب" , style: GoogleFonts.tajawal(
                        color: navBarIndex == 0? AppColors.blueColor : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                     )
                    ),
                    BottomBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          navBarIndex == 1? "assets/storeslct.png" :"assets/store.png" , 
                          width: 35,
                          ),
                      ),
                      title: Text("المتجر" , style: GoogleFonts.tajawal(
                        color: navBarIndex == 1? AppColors.blueColor : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                     )
                    ),
                    BottomBarItem(
                      icon: Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Image.asset(
                          "assets/shoppingcart.png" , 
                          width: 30,
                          )
                        ),
                      title: Text("" , style: GoogleFonts.tajawal(
                        fontSize: 0,
                      ),
                     )
                    ),
                    BottomBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          navBarIndex == 3? "assets/orderslct.png" :"assets/order.png" , 
                          width: 30,
                          ),
                      ), 
                      title: Text("الطلبات" , style: GoogleFonts.tajawal(
                        color: navBarIndex == 3? AppColors.blueColor : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                     )
                    ),
                    BottomBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset(
                          navBarIndex == 4? "assets/homeslct.png" : "assets/home.png" , 
                          width: 30,
                          ),
                      ),
                      title: Text("الرئيسية" , style: GoogleFonts.tajawal(
                        color:navBarIndex == 4? AppColors.blueColor : Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),
                     )
                    ),
                  ], 
                  onTap: (value) {
                    if(value == 2){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(),));
                    }
                    else{
                      setState(() {
                      navBarIndex = value;
                    });
                    }
                  },
                  currentIndex: navBarIndex,
                  option: AnimatedBarOptions(
                    padding: const EdgeInsets.all(0)
                  ),
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarClipper extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0,20);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 20);
    path.lineTo(size.width * .7, 20);
    path.quadraticBezierTo(size.width * .5, -18, size.width * .3, 15);
    path.quadraticBezierTo(size.width * .5, -18, size.width * .35, 15);
    path.quadraticBezierTo(size.width * .5, -18, size.width * .3, 15);
    path.lineTo(0, 20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}