import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/pages/cart.dart';
import 'package:dimaan/pages/drawerpages.dart';
import 'package:dimaan/pages/location/yourlocations.dart';
import 'package:dimaan/test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Widget text(String text , Color color ,double fontsize , FontWeight fontWeight){
  return Text(
    text ,
    textDirection: TextDirection.rtl,
    style: GoogleFonts.tajawal(
      color: color,
      fontSize: fontsize,
      fontWeight: fontWeight
      ),
    );
}

Widget image (String image ,double width, double hieght , double radius){
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: Image.asset(
      image,
      width: width,
      height: hieght,
    ),
  );
}

Widget imageWithColor (String image ,double width, double hieght ,Color color){
  return Image.asset(
    image,
    width: width,
    height: hieght,
    color: color,
  );
}

Widget filterSmlBtn(String text ,IconData icon){
  return SizedBox(
    height: 30,    
    child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 4),
           child: TextButton(
             onPressed: (){},
              style: TextButton.styleFrom(
               backgroundColor: Colors.transparent,
               padding: EdgeInsets.symmetric(horizontal: 5),
               side: BorderSide(
                 width: .3,
                 color: Colors.grey
               )
              ), 
             child: Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.only(right: 4, top: 4),
                   child: Text(
                     text,
                     textAlign: TextAlign.right,
                     textDirection: TextDirection.rtl,
                     style: GoogleFonts.tajawal(
                       color: Colors.grey,
                       fontSize: 14,
                       fontWeight: FontWeight.w500
                     ),
                     ),
                 ),
                 Icon(
                   icon,
                   size: 18,
                   color: Colors.grey,
                   )
               ],
             ),
            ),
          ),
  );
}

Widget backgroundImage(){
  return Opacity(
            opacity: .4,
            child: ShaderMask(
              shaderCallback: 
              (bounds) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.transparent
                ],
                stops: [
                  .1,
                  1
                ]
                ).createShader(bounds),
                blendMode: BlendMode.dstIn,
              child: Image.asset(
                "assets/drops.png" , 
                width: double.infinity , 
                fit: BoxFit.cover,
                ),
            ),
          );
}

Widget backgroundImageBig(){
  return Image.asset(
    "assets/drops.png" , 
    opacity: AlwaysStoppedAnimation(.1),
    width: double.infinity ,
    height: double.infinity, 
    fit: BoxFit.cover,
    );
}
 
 Widget otpField (){
  bool notNull = false;
  return 
  StatefulBuilder(
    builder: (context , setState) {
      return Container(
       width: 56,
       height: 56,
       decoration: BoxDecoration(
        color: notNull == true? AppColors.greenColor:null,
         borderRadius: BorderRadius.circular(50),
         border: notNull == false? Border.all(
           width: 1,
           color: Color.fromARGB(255, 227, 226, 226)
           ) : null,
       ),
       margin: EdgeInsets.only(
         top: 20,
         left: 10,
         bottom: 30
       ),
       child: TextFormField(
        onChanged: (value) {
            setState((){
              notNull = true;
            });
          if(value.isEmpty){
            setState((){
              notNull = false;
            });
          }
        },
         showCursor: false,
         maxLength: 1,
         textAlign: TextAlign.center,
         cursorColor: Colors.green,
         style: GoogleFonts.tajawal(
           fontSize: 30,
           color: Colors.white
         ),
         decoration: InputDecoration(
           counterText: "1",
           counterStyle: GoogleFonts.tajawal(
             color: Colors.transparent
           ),
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(50),
             borderSide: BorderSide.none
           )
         ),
       ),
       );
    }
  );
 }

Widget homeImage (String bigText ,String smallText ,String image ,String icon){
  return Stack(
    alignment: Alignment.bottomCenter,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          width: 350, 
          height: 200, 
          fit: BoxFit.cover,
          )
        ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(210, 0, 0, 0),
              Colors.transparent
            ],
          begin: Alignment.bottomCenter ,
          end: Alignment.topCenter 
          )
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8 , vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
            width: 80,
            height: 30,
            child: TextButton(
              onPressed: (){}, 
              child: 
              Text(
                "اطلب الآن" , 
                style: GoogleFonts.tajawal(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                ),
                style: TextButton.styleFrom(
                  shadowColor: Colors.black,
                  backgroundColor: Color.fromARGB(255, 0, 128, 176)
                ),
              ),
          ),
          SizedBox(
            height: 40,
            width: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  bigText,
                  style: GoogleFonts.tajawal(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  ),
                ),
               Text(
                  smallText,
                  style: GoogleFonts.tajawal(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            icon,
            width: 30,
            height: 30,
            fit: BoxFit.cover,
            )
          ],
        ),
      )
    ],
  );
}

Widget homePageTop (){
  return  SizedBox(
    height: 40,
    width: double.infinity,
    child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Image.asset("assets/topbar.png",width: 90,),
                IconButton(
                  onPressed: (){
                    print("object");
                    scaffoldKey.currentState!.openEndDrawer();
                  }, 
                  icon: Image.asset(
                    "assets/drawer.png",
                    width: 30,
                    )
                  )
              ],
            ),
  );
 }

  ////////////////?? Bottom Nav Bar ///////////////////
  Widget homepage (){
    return Stack(
        children: [
          backgroundImage(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  homePageTop(),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.topRight,
                    child: Text(
                      "مرحباً بك" , 
                      style: GoogleFonts.tajawal(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 131, 145, 161)
                      ),
                      ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      "قم بتسجيل الدخول" , 
                      style: GoogleFonts.tajawal(
                        fontSize: 17,
                        fontWeight: FontWeight.w700
                      ),
                      ),
                  ),
                  CarouselSlider(
                    items: [
                        homeImage(
                          "الجمعيات", 
                          "ساهم في الجمعيات الخيرية", 
                          "assets/charity.jpeg", 
                          "assets/charityicon.png"
                          ),
                        homeImage(
                          "المساجد",
                          "اطلب للمساجد واكسب الثواب", 
                          "assets/mosque.png", 
                          "assets/mosqueicon.png"
                          ),
                        homeImage(
                          "العروض", "احصل على أفضل العروض", 
                          "assets/offers.jpeg", 
                          "assets/offersicon.png"
                          ),
                    ], 
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                          homePageIndex = index;
                      },
                      viewportFraction: .8,
                      enlargeCenterPage: true,
                      autoPlay: true
                    ),
                    
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: AnimatedSmoothIndicator(
                        activeIndex: homePageIndex, 
                        count: 3,
                        effect: ScaleEffect(
                          dotColor: AppColors.blueColor,
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: AppColors.blueColor,
                        ),
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: TextButton(
                              onPressed: (){},
                               style: TextButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                side: BorderSide(
                                  width: .3,
                                  color: Colors.grey
                                )
                               ), 
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 4, top: 4),
                                    child: Text(
                                      "مساجد/ صدقات" ,
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.tajawal(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500
                                      ),
                                      ),
                                  ),
                                  Image.asset(
                                    "assets/mosqueicon.png",
                                    width: 25,
                                    color: Colors.grey,
                                    height: 25,
                                    )
                                ],
                              ),
                              ),
                          ),
                        TextButton(
                            onPressed: (){},
                             style: TextButton.styleFrom(
                              backgroundColor: AppColors.blueColor,
                              padding: EdgeInsets.symmetric(horizontal: 5)
                             ), 
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4, top: 4),
                                  child: Text(
                                    "المنزل" ,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.tajawal(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500
                                    ),
                                    ),
                                ),
                                Icon(
                                  Icons.home_filled , 
                                  color: Colors.white,
                                  size: 20,
                                  ),
                              ],
                            ),
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 1/1.3
                          ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 250,
                            width: 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset("assets/homepagewater.png" , fit: BoxFit.cover,),
                                SizedBox(height: 10,),
                                Text(
                                  "عبوات ديمان المميزة",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                                Text(
                                  "24 عبوة",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color.fromARGB(255, 141, 141, 141)
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: .3,
                                          color: Colors.grey
                                          ),
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            height: 19,
                                            width: 19,
                                            child: IconButton(
                                              onPressed: (){}, 
                                              style: IconButton.styleFrom(
                                                backgroundColor: AppColors.blueColor,
                                                padding: EdgeInsets.all(0)
                                              ),
                                              iconSize: 19,
                                              icon: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.topCenter,
                                            margin: EdgeInsets.symmetric(horizontal: 5),
                                            height: 19,
                                            width: 19,
                                            child: Text("0")
                                          ),
                                          SizedBox(
                                            height: 19,
                                            width: 19,
                                            child: IconButton(
                                              onPressed: (){}, 
                                              style: IconButton.styleFrom(
                                                backgroundColor: const Color.fromARGB(255, 138, 151, 161),
                                                padding: EdgeInsets.all(0)
                                              ),
                                              iconSize: 19,
                                              icon: Icon(
                                                Icons.remove,
                                                color: Colors.white,
                                                ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Text(
                                      "١٠٠ ر.س",
                                      style: GoogleFonts.tajawal(
                                        color: AppColors.blueColor,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700
                                        ),
                                      )
                                  ],
                                )
                              ],
                            ),
                          );
                        },),
                    )
                ],
              ),
            )
           )
        ],
      );
  }

  Widget orderpage (context){
    return Stack(
      children: [
        backgroundImage(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: 
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  homePageTop(),
                  SizedBox(height: 30,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TabBar(
                      labelColor: AppColors.blueColor,
                      indicatorColor: AppColors.blueColor,
                      overlayColor: WidgetStatePropertyAll(Colors.transparent),
                      unselectedLabelColor: const Color.fromARGB(255, 131, 145, 161),
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            "الطلبات الجارية",
                            style: GoogleFonts.tajawal(
                              fontSize: 14 ,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                        ),
                        Text(
                          "الطلبات المفضلة",
                          style: GoogleFonts.tajawal(
                            fontSize: 13 ,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                        Text(
                          "سجل الطلبات",
                          style: GoogleFonts.tajawal(
                            fontSize: 14 ,
                            fontWeight: FontWeight.w700,
                          ),
                          ),
                      ]
                      ),
                  ),
                  Expanded(
                    child: 
                    TabBarView(
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(67, 158, 158, 158)
                                )
                              ),
                              width: MediaQuery.of(context).size.width * .9,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "منزل",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.home , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم انشاء الطلب",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.green,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                            
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color.fromARGB(75, 158, 158, 158),
                                    margin: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 10
                                    ),
                                  ),
                            
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "مسجد التوحيد",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.mosque , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "جاري التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: AppColors.blueColor,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: AppColors.blueColor,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(67, 158, 158, 158)
                                )
                              ),
                              width: MediaQuery.of(context).size.width * .9,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "منزل",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.home , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                            
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color.fromARGB(75, 158, 158, 158),
                                    margin: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 10
                                    ),
                                  ),
                            
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "المنزل",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.home , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color.fromARGB(75, 158, 158, 158),
                                    margin: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 10
                                    ),
                                  ),
                            
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "مسجد التوحيد",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.mosque , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.white,
                                border: Border.all(
                                  width: 1,
                                  color: const Color.fromARGB(67, 158, 158, 158)
                                )
                              ),
                              width: MediaQuery.of(context).size.width * .9,
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "منزل",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.home , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                            
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color.fromARGB(75, 158, 158, 158),
                                    margin: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 10
                                    ),
                                  ),
                            
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "المنزل",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.home , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: const Color.fromARGB(75, 158, 158, 158),
                                    margin: EdgeInsets.symmetric(
                                      vertical: 20,
                                      horizontal: 10
                                    ),
                                  ),
                            
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width * .65,
                                        child: Column( 
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "100 ر.س",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 14.4,
                                                    color: AppColors.blueColor,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  ),
                                                  Text(
                                                    "اسم المنتج",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 14.4,
                                                      fontWeight: FontWeight.w500
                                                    ),
                                                    )
                                              ],
                                            ),
                                            Row( 
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "20.08.2024",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                Container(
                                                  height: 2,
                                                  width: 2,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                                  child: Text(
                                                    "مسجد التوحيد",
                                                    style: GoogleFonts.tajawal(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                    ),
                                                ),
                                                  Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Icon(
                                                      Icons.mosque , 
                                                      size: 14,
                                                      color: Colors.grey,
                                                      ),
                                                  ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                     Icon(
                                                      Icons.arrow_left,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 95,
                                                      height: 25,
                                                      child: TextButton(
                                                        onPressed: (){}, 
                                                        child: 
                                                        Text(
                                                          "إعادة الطلب" , 
                                                          style: GoogleFonts.tajawal(
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors.white,
                                                          ),
                                                          ),
                                                          style: TextButton.styleFrom(
                                                            alignment: Alignment.center,
                                                            padding: EdgeInsets.only(top: 2),
                                                            shadowColor: Colors.black,
                                                            backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                                          ),
                                                        ),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.end,
                                                  children: [
                                                Text(
                                                      "تم التوصيل",
                                                      style: GoogleFonts.tajawal(
                                                        color: Colors.grey,
                                                        fontSize: 14.4,
                                                        fontWeight: FontWeight.w700
                                                      ),
                                                      ),
                                                    Container(
                                                  margin: EdgeInsets.only(
                                                    left: 5
                                                  ),
                                                  height: 4,
                                                  width: 4,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20)
                                                  ),
                                                )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        "assets/orderimage.png",
                                        width: 70 ,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                      ]
                      )
                    )
                ],
              ),
            ),
          )
          )
      ],
    );
  }

Widget shop(){
  return Stack(
        children: [
          backgroundImage(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  homePageTop(),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: const Color.fromARGB(68, 158, 158, 158)),
                        ),
                        hintStyle: GoogleFonts.tajawal(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                        hintTextDirection: TextDirection.rtl,
                        hintText: "ابحث هنا ...",
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.search, size: 30, color: Colors.grey),
                        ),
                        prefixIcon: Container(
                          width: 35,
                          height: 35,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: AppColors.blueColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            padding: EdgeInsets.all(0),
                            icon: Icon(Icons.filter_alt, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            filterSmlBtn("عروض", Icons.discount),
                            filterSmlBtn("600 مل", MdiIcons.bottleSoda),
                            filterSmlBtn("300 مل", MdiIcons.bottleSoda),
                            filterSmlBtn("200 مل", MdiIcons.bottleSoda),
                            filterSmlBtn("100 مل", MdiIcons.bottleSoda),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1 / 1.3,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          height: 250,
                          width: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset("assets/homepagewater.png", fit: BoxFit.cover),
                              SizedBox(height: 10),
                              Text(
                                "عبوات ديمان المميزة",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "24 عبوة",
                                style: GoogleFonts.tajawal(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromARGB(255, 141, 141, 141),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: .3,
                                        color: Colors.grey,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 19,
                                          width: 19,
                                          child: IconButton(
                                            onPressed: () {},
                                            style: IconButton.styleFrom(
                                              backgroundColor: AppColors.blueColor,
                                              padding: EdgeInsets.all(0),
                                            ),
                                            iconSize: 19,
                                            icon: Icon(
                                              Icons.add,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topCenter,
                                          margin: EdgeInsets.symmetric(horizontal: 5),
                                          height: 19,
                                          width: 19,
                                          child: Text("0"),
                                        ),
                                        SizedBox(
                                          height: 19,
                                          width: 19,
                                          child: IconButton(
                                            onPressed: () {},
                                            style: IconButton.styleFrom(
                                              backgroundColor: const Color.fromARGB(255, 138, 151, 161),
                                              padding: EdgeInsets.all(0),
                                            ),
                                            iconSize: 19,
                                            icon: Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "١٠٠ ر.س",
                                    style: GoogleFonts.tajawal(
                                      color: AppColors.blueColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}

Widget profile(dynamic context){
  return Stack(
         alignment: AlignmentDirectional.topCenter,
        children: [
          backgroundImage(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  homePageTop(),
                  SizedBox(
                    width: 98,
                    child: Stack(alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            ClipRect(
                              child: Align(
                                alignment: Alignment.topCenter,
                                heightFactor: 0.5,
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width: 98,
                                  height: 98,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 189, 219, 241),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset("assets/profileimage.jpeg" , width: 90, height: 90,),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: (){}, 
                          padding: EdgeInsets.all(0),
                          icon: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.circular(50)
                            ),
                            child: Image.asset("assets/edit.png" , width: 10,)
                            )
                          )
                      ],
                    ),
                  ),
                  Text("ياسين ابوقلاوة",style: GoogleFonts.tajawal(fontSize: 22 , fontWeight: FontWeight.w700),),
                  Text("+971 563 000 195",style: GoogleFonts.tajawal(fontSize: 14 , fontWeight: FontWeight.w500 , color: Colors.grey),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      overflowWdgt("الاسترداد النقدي", "20 ر.س", "assets/cameraicon.png"),
                      overflowWdgt( "رصيد المحفظة", "100 ر.س", "assets/walleticon.png"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      overflowWdgt("النقاط","10","assets/pointsicon.png"),
                      overflowWdgt("منتجات مجانية","5","assets/freeicon.png"),
                    ],
                  ),
                  Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color.fromARGB(255,247, 248, 249),
                    ),
                    child: Column(
                      children: [
                        profileClmnBTN("الاشتراكات", "assets/subicon.png", "3" , false , context),
                        thickLine(),
                        profileClmnBTN("العناوين", "assets/addressicon.png", "3", false , context),
                        thickLine(),
                        profileClmnBTN("وسائل الدفع", "assets/crediticon.png", "5" , false , context),
                        thickLine(),
                        profileClmnBTN("المفضلة", "assets/staricon.png", "5" , false , context),
                        thickLine(),
                        profileClmnBTN("الإعدادات", "assets/settingsicon.png" ,"5" , true , context),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      );
}

Widget overflowWdgt (String text , String value ,String icon ){
  return Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 65,
              width: 190,
              decoration: BoxDecoration(
                color: Color.fromARGB(255,247, 248, 249),
                borderRadius: BorderRadius.circular(8)
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Image.asset(icon , width: 20, height: 17,)
                  ),
                  SizedBox(height: 5,),
                  Text(
                    text,
                    style: GoogleFonts.tajawal(
                      fontSize: 10,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  Text(
                    value,
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.tajawal(
                      fontSize: 12,
                      color: AppColors.blueColor,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(height: 10,),
              ],
            )
          ],
        );
}

Widget profileClmnBTN(String text , String icon , String notification , bool settings , context){
  return TextButton(
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Yourlocations(),));
    },
    style: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(0),
      overlayColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      )
    ),
    child: Container(
      margin: const EdgeInsets.all(10),
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.arrow_left , size: 24, color: const Color.fromARGB(255, 131, 145, 161),),
              settings == true? Container() : Container(
                padding: EdgeInsets.all(2),
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Text(
                  notification,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.tajawal(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700
                  ),
                  ),
              )
            ]
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.tajawal(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 21, 31, 45),
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(width: 8,),
              Image.asset(icon , width: 24, height: 24,)
            ],
          ),
        ],
      ),
    ),
  );
}

Widget thickLine(){
  return Container(
         margin: EdgeInsets.only(right: 10 , left: 10 , bottom: 10),
         height: 1,
         width: double.infinity,
         color: const Color.fromARGB(50, 158, 158, 158),
       );
}

Widget bottomButton(backgroundColor, textColor, image , TEXT){
  return TextButton(
    style: TextButton.styleFrom(
    backgroundColor: backgroundColor,
    overlayColor: const Color.fromARGB(19, 158, 158, 158),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50)
    ),
    ),
    onPressed: (){}, 
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35 , vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(image , width: 42,height: 16,),
          Text(
            TEXT,
            style: GoogleFonts.tajawal(
              fontSize: 14,
              color: textColor,
              fontWeight: FontWeight.w500
            ),
          ),
        ],
      ),
    )
    );
}

Widget topBar(String imagePath , title , context){
  return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          imagePath.isNotEmpty?  Image.asset(imagePath, width: 24, height: 24,) : Container(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0 , right: 15),
                child: Text(
                  title,
                  style: GoogleFonts.tajawal(
                    fontSize: 19.2,
                    fontWeight: FontWeight.w500
                  ),
                  ),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color.fromARGB(65, 158, 158, 158)
                )
                ),
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    }, 
                    padding: EdgeInsets.all(0),
                    icon: Icon(Icons.keyboard_arrow_right , size: 35,)
                    ),
                ),
              ),
            ],
          )
          ],
        );
}

Widget drawerRowBTN(String text , String icon , String notification , bool not ,int page ,BuildContext context){
  return StatefulBuilder(
    builder: (context , setState) {
      return InkWell(
        onTap: (){
          setState((){
            drawerPage = page;
          });
          if(page == 1){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Cart(),));
          }
          else{
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Drawerpages(),));
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              not == false? Container() : Container(
                      padding: EdgeInsets.all(2),
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(30)
                      ),
                      child: Text(
                        notification,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                    ),
              Row(
                children: [
                  Text(
                    text,
                    style: GoogleFonts.tajawal(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
                    SizedBox(width: 10,),
                  Image.asset(icon ,width: 20 , height: 20,)
                ],
              )
            ],
          ),
        ),
      );
    }
  );
}

Widget exitBTN(context){
  return TextButton(
    onPressed: (){
      showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Center(
            child: Text(
              "تسجيل الخروج", 
              style: GoogleFonts.tajawal(
                fontSize: 21.6,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          content: 
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width * .99,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("assets/logoutimg.png" , width: 170, height: 170,)
              ),
          ),
          actionsAlignment: MainAxisAlignment.start,
          actions: [
            SizedBox(
                 width: 104,
                  height: 48,
                  child: TextButton(
                    onPressed: (){}, 
                    child: 
                    Text(
                      "تأكيد" , 
                      style: GoogleFonts.tajawal(
                        fontSize: 19.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 128, 176),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),
                ),
                SizedBox(
                  height: 58,
                  child: TextButton(
                    onPressed: (){}, 
                    child: 
                    Text(
                      "عودة" , 
                      style: GoogleFonts.tajawal(
                        fontSize: 19.2,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white
                      ),
                    ),
                ),
          ],
        );
      },
      );
                    
    },
    style: TextButton.styleFrom(
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.all(0),
      overlayColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      )
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Row(
            children: [
              Text(
                "تسجيل الخروج",
                style: GoogleFonts.tajawal(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 235, 87, 87)
                ),
                ),
                SizedBox(width: 10,),
              Image.asset("assets/logouticon.png" ,width: 20 , height: 20,)
            ],
          )
        ],
      ),
    ),
  );
}

Widget simplePage(String bigText , String smallText , String buttonName , String image){
  return Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(image, width: 256, height: 212,),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        bigText,
                        style: GoogleFonts.tajawal(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: 272,
                      child: Text(
                        smallText,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    SizedBox(
                 width: double.infinity,
                  height: 58,
                  child: TextButton(
                    onPressed: (){}, 
                    child: 
                    Text(
                     buttonName , 
                      style: GoogleFonts.tajawal(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 128, 176)
                      ),
                    ),
                ),
                  ],
                ),
              );
}

Widget cartItem(context){
  return  Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .65,
                          child: Column( 
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Color.fromARGB(255, 235, 87, 87)
                                    ),
                                    child: Image.asset("assets/deleteicon.png" , width: 10 , height: 10,)
                                    ),
                                    Text(
                                      "قوارير آبار مكة النقية",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 14.4,
                                        fontWeight: FontWeight.w500
                                      ),
                                      )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: Row( 
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "40 عبوة",
                                        textDirection: TextDirection.rtl,
                                        style: GoogleFonts.tajawal(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                        ),
                                        ),
                                    ),
                                    Container(
                                      height: 2,
                                      width: 2,
                                      decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(20)
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        "330 مل",
                                        style: GoogleFonts.tajawal(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400
                                        ),
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "100 (200) ر.س",
                                    textDirection: TextDirection.rtl,
                                    style: GoogleFonts.tajawal(
                                      fontSize: 14.4,
                                      color: AppColors.blueColor,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color.fromARGB(255, 247, 248, 249)
                                        ),
                                        child: Icon(Icons.add , size: 15,),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 10),
                                          child: Text("2 كرتونة"),
                                        ),
                                      Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color.fromARGB(255, 247, 248, 249)
                                        ),
                                        child: Icon(Icons.remove , size: 15,),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          "assets/orderimage.png",
                          width: 80 ,
                        )
                      ],
                    ),
  );
}

Widget textBetweenLines (String text , context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 25 , horizontal: 20),
        height: 1,
        width: MediaQuery.of(context).size.width *.24,
        color: const Color.fromARGB(75, 158, 158, 158),
      ),
      Text(
        text,
        style: GoogleFonts.tajawal(
          color: Colors.grey,
          fontSize: 14.4,
          fontWeight: FontWeight.w500
        ),
        ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 25 , horizontal: 20),
        height: 1,
        width: MediaQuery.of(context).size.width *.24,
        color: const Color.fromARGB(75, 158, 158, 158),
      ),
    ],
  );
}

Widget waterDrop (int itemNo){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 2),
    child: CustomPaint(
            painter: WaterDrop(
              pageIndex: pageindex,
              itemNo: itemNo
            ),
            child: SizedBox(
              width: 12,
              height: 12,
            ),
          ),
  );
}

class WaterDrop extends CustomPainter {
  final int pageIndex;
  final int itemNo;

  WaterDrop({
    required this.itemNo , 
    required this.pageIndex
    });

  @override
  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    final waterPaint = Paint()..
  color = pageIndex >= itemNo ? AppColors.blueColor : AppColors.greyTextColor ..
  style = PaintingStyle.fill;

  final waterPath = Path();

  waterPath.moveTo(w * .5, 0);

  waterPath.quadraticBezierTo(0 , h * .5 , w * .25, h * .77);
  waterPath.quadraticBezierTo( w * .5 , h, w * .75, h * .77);
  waterPath.quadraticBezierTo( w , h * .5 , w * .5, 0);

  canvas.drawPath(waterPath, waterPaint);

    final shapePaint = Paint()..
  color = AppColors.whiteColor..
  style = PaintingStyle.fill;

  final shapePath = Path();

  shapePath.moveTo(w * .4, h * .8);

  shapePath.quadraticBezierTo(w * .7 , h * .85,w * .4, h * .8);
  shapePath.quadraticBezierTo(w * .7 , h  * .85, w * .7 , h * .6);

  canvas.drawPath(shapePath, shapePaint);
  }

  @override
  bool shouldRepaint(WaterDrop oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(WaterDrop oldDelegate) => false;
}