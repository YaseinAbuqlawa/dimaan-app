import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dimaan/pages/Home.dart';
import 'package:dimaan/pages/auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundImage(),
          SafeArea(
            child: Column(
             children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
                        }, 
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 16),
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(25, 0 , 128 , 176)
                          ),
                          child: Text(
                            "زيارة كضيف",
                            style: GoogleFonts.tajawal(
                              color: AppColors.blueColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                        )
                        ),
                    ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: CarouselSlider(
                      items: [
                        Image.asset(
                          "assets/welcome1.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                          ),
                        Image.asset(
                          "assets/welcome2.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                          ),
                        Image.asset(
                          "assets/welcome3.png",
                          width: double.infinity,
                          fit: BoxFit.cover,
                          ),
                      ], 
                      options: CarouselOptions(
                        enableInfiniteScroll: false,
                        reverse: true,
                        height: 300,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            pageindex = index;
                          });
                        },
                      )
                      ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      waterDrop(2),
                      waterDrop(1),
                      waterDrop(0),
                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: 
                      Text(
                       pageindex == 0? "نقاوة مكة في بيتك":
                       pageindex == 1? "من آبار مكة المكرمة " : "ديمان .. سر الحياة"
                       ,
                        style: GoogleFonts.tajawal(
                          color: const Color.fromARGB(255, 4 ,16 ,20),
                          fontWeight: FontWeight.w700,
                          fontSize: 28,
                        ),
                        ),
                    ),
                    SizedBox(
                      width: 300,
                      child: 
                      Text(
                        pageindex == 0? "اطلبها الآن من خلال التطبيق حتى تصلك إلى باب منزلك":
                       pageindex == 1? "نوفر لك ماء ديمان النقية ١٠٠٪؜ من منطقة آبار مكة المكرمة": "أنشئ حسابك واطلبها أو تبرع بها للمساجد والجمعيات بنقرة واحدة",
                        style: GoogleFonts.tajawal(
                          color: const Color.fromARGB(255, 131, 145, 161),
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                        ),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50 , bottom: 10),
                    child: Container(
                      width: 296,
                      height: 56,
                      decoration: BoxDecoration(
                        color: AppColors.blueColor,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: TextButton(
                            onPressed: (){
                              setState(() {
                                authIntailPage = 1;
                              });
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Auth(),));
                            }, 
                            child: Text(
                              "انشاء حساب جديد",
                              style: GoogleFonts.tajawal(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                              )
                            ),
                    ),
                  ),
                  Container(
                    width: 296,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: TextButton(
                          onPressed: (){
                            setState(() {
                                authIntailPage = 1;
                              });
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => Auth(),));
                          },
                          style: TextButton.styleFrom(
                            overlayColor: Colors.transparent
                          ),
                          child: Text(
                            "تسجيل الدخول",
                            style: GoogleFonts.tajawal(
                              fontWeight: FontWeight.w700,
                              color: AppColors.blueColor,
                              fontSize: 16,
                            ),
                            )
                          ),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}