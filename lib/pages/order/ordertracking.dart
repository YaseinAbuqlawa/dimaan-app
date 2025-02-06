import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Ordertracking extends StatefulWidget {
  const Ordertracking({super.key});

  @override
  State<Ordertracking> createState() => _OrdertrackingState();
}

class _OrdertrackingState extends State<Ordertracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  topBar("", "تتبع الطلب", context),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: image("assets/defaultprogress.png", 215, 450, 0),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 5 , right: 10 , left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(20, 0, 129, 176)
                        ),
                        child: text("10:30", AppColors.blueColor, 24, FontWeight.w700),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          text("وقت الوصول المتوقع", AppColors.blackColor, 16, FontWeight.w700),
                          text("باقي 10 دقائق", AppColors.blackColor, 12, FontWeight.w500),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor1,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.greyColor2)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: AppColors.greenColor,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image.asset("assets/phoneicn.png" , width: 15,),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 4
                                ),
                                color: Colors.white,
                                height: 16,
                                width: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image.asset("assets/messageicn.png" , width: 15,),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "مندوب التوصيل",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey
                                    ),
                                    ),
                                  Text(
                                    "عبدالرحمن مهند",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 19.2,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                    ),
                                    ),
                                ],
                              ),
                            ),
                            Image.asset("assets/deliveryimg.png", width: 50,),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SnakePainter extends CustomPainter {
  @override

  void paint(Canvas canvas, Size size) {
    double w = size.width;
    double h = size.height;
    var paint = Paint().. 
    color = AppColors.greyColor2..
    style = PaintingStyle.stroke..
    strokeWidth = 10;

    var path = Path()..
    quadraticBezierTo(w * .25 * .5, h * .125 * .5, w * .25, h * .125)..
    quadraticBezierTo(w * .5 * .5, h * .25 * .5, w * .5, h * .25)..
    quadraticBezierTo(w * .25 * .5, h * .375 * .5, w * .25, h * .375)..
    quadraticBezierTo(0 * .5, h * .5 * .5, 0, h * .5)..
    quadraticBezierTo(w * .25 * .5, h * .625 * .5, w * .25, h * .625)..
    quadraticBezierTo(w * .5 * .5, h * .75 * .5, w * .5, h * .75)..
    quadraticBezierTo(w * .25 * .5, h * .875 * .5, w * .25, h * .875)..
    quadraticBezierTo(0, h * .5, 0, h);
    canvas.drawPath(path, paint);
  }



  @override
  bool shouldRepaint(SnakePainter oldDelegate) => false;
}