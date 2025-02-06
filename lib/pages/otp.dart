import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(
                      top: 90,
                      bottom: 81
                    ),
                    child: Image.asset(
                      "assets/OTP.png",
                      width: 197,
                      height: 206,
                      ),
                  ),
                  Text(
                    "رمز التأكيد",
                    style: GoogleFonts.tajawal(
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5 , bottom: 15),
                    child: Text(
                      "تم إرسال الرمز على الرقم",
                      style: GoogleFonts.tajawal(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Container(
                    height: 34,
                    width: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(45, 0, 128, 176)
                    ),
                    child: Center(
                      child: Text(
                        "+971 56 3605 802",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.tajawal(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: AppColors.blueColor
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      otpField(),
                      otpField(),
                      otpField(),
                      otpField(),
                    ],
                  ),
                  otpSent == false? TextButton(
                    onPressed: () {
                      setState(() {
                        otpSent = true;
                      });
                    },
                    style: TextButton.styleFrom(
                      overlayColor: Colors.transparent
                    ),
                    child: Text(
                    "اْرسل مجدداً",
                    style: GoogleFonts.tajawal(
                      fontWeight: FontWeight.w700,
                      color: Colors.green,
                      fontSize: 16,
                    ),
                  ),
                  ) : 
                  Column(
                    children: [
                      Image.asset(
                    "assets/timer.gif",
                    width: 26,
                    ),
                    SizedBox(height: 8,),
                    Text("29 ثانية")
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15 , top: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 0, 128, 176),
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                      width: 300,
                      height: 58,
                      child: TextButton(
                       onPressed: (){}, 
                       child: 
                       Text(
                         "تعديل الرقم" , 
                         style: GoogleFonts.tajawal(
                           fontSize: 20,
                           fontWeight: FontWeight.w500,
                           color: Color.fromARGB(255, 0, 128, 176),
                         ),
                         ),
                         style: TextButton.styleFrom(
                           backgroundColor: Colors.transparent,
                           overlayColor: AppColors.blueColor
                         ),
                       ),
                   ),
                   SizedBox(
                    width: 300,
                     height: 58,
                     child: TextButton(
                       onPressed: (){}, 
                       child: 
                       Text(
                         "تأكيد الرمز" , 
                         style: GoogleFonts.tajawal(
                           fontSize: 20,
                           fontWeight: FontWeight.w500,
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
            )
           ),
          backgroundImage()
        ],
      ),
    );
  }
}