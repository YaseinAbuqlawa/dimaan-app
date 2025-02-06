import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dimaan/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool privecy = false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: authIntailPage,
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            backgroundImage(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 80),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/dimaanlogo.png",
                        width: 180,
                        fit: BoxFit.cover,
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30 , top: 80),
                      child: TabBar(
                        overlayColor: WidgetStatePropertyAll(AppColors.greyColor1),
                        indicatorColor: AppColors.blueColor,
                        indicatorWeight: 5,
                        tabs: [
                          Text(
                            "تسجيل الدخول",
                            style: GoogleFonts.tajawal(
                              color: AppColors.blueColor
                            ),
                            ),
                          Text(
                            "حساب جديد",
                            style: GoogleFonts.tajawal(
                              color: AppColors.blueColor
                            ),
                            ),
                        ],
                        ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "!مرحباً بعودتك" , 
                                style: GoogleFonts.tajawal(
                                  fontSize: 13,
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
                            Container(
                              margin: EdgeInsets.only(top: 40 , bottom: 20),
                              width: 300,
                              height: 58,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(31, 170, 170, 170),
                                borderRadius: BorderRadius.circular(
                                  50
                                ),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  hintText: "رقم الهاتف",
                                  hintStyle: GoogleFonts.tajawal(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 131, 145, 161)
                                  ),
                                  suffixIconColor: Color.fromARGB(255, 131, 145, 161),
                                  suffixIcon: Icon(Icons.phone),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  )
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              height: 58,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
                                }, 
                                child: 
                                Text(
                                  "تسجيل الدخول" , 
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  ),
                                  style: TextButton.styleFrom(
                                    elevation: 15,
                                    shadowColor: Colors.black,
                                    backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                  ),
                                ),
                            )
                          ],
                        ),
                        
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "!أهلاً وسهلاً" , 
                                style: GoogleFonts.tajawal(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 131, 145, 161)
                                ),
                                ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "قم بعمل حساب جديد" , 
                                style: GoogleFonts.tajawal(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700
                                ),
                                ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 40),
                              width: 300,
                              height: 58,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(31, 170, 170, 170),
                                borderRadius: BorderRadius.circular(
                                  50
                                ),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  hintText: "الاسم",
                                  hintStyle: GoogleFonts.tajawal(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 131, 145, 161)
                                  ),
                                  suffixIconColor: Color.fromARGB(255, 131, 145, 161),
                                  suffixIcon: Icon(Icons.person),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  )
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20 , bottom: 20),
                              width: 300,
                              height: 58,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(31, 170, 170, 170),
                                borderRadius: BorderRadius.circular(
                                  50
                                ),
                              ),
                              child: TextFormField(
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                  hintTextDirection: TextDirection.rtl,
                                  hintText: "رقم الهاتف",
                                  hintStyle: GoogleFonts.tajawal(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(255, 131, 145, 161)
                                  ),
                                  suffixIconColor: Color.fromARGB(255, 131, 145, 161),
                                  suffixIcon: Icon(Icons.phone),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                    borderSide: BorderSide(
                                      color: const Color.fromARGB(255, 227, 226, 226),
                                      width: 1
                                      )
                                  )
                                ),
                              ),
                            ),
                            Container(
                              width: 300,
                              height: 58,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Home(),));
                                }, 
                                child: 
                                Text(
                                  "انشاء حساب جديد" , 
                                  style: GoogleFonts.tajawal(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                  ),
                                  style: TextButton.styleFrom(
                                    backgroundColor: Color.fromARGB(255, 0, 128, 176),
                                    elevation: 15,
                                    shadowColor: Colors.black,
                                  ),
                                ),
                            ),
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "أوافق على الشروط والأحكام",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700
                                      ),
                                    ),
                                  Checkbox(
                                    value: privecy, 
                                    activeColor: AppColors.blueColor,
                                    onChanged: (val) {
                                      setState(() {
                                        privecy = val!;
                                      });
                                    }),
                                ],
                              ),
                            )
                          ],
                        ),
                        
                      ]),
                    )
                  ],
                ),
              )
              )
          ],
        ),
      ),
    );
  }
}