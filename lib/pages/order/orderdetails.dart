import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Orderdetails extends StatefulWidget {
  const Orderdetails({super.key});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0 , right: 10),
                        child: Text(
                          "تفاصيل الطلب",
                          style: GoogleFonts.tajawal(
                            fontSize: 19.2,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color.fromARGB(65, 158, 158, 158)
                        )
                        ),
                        child: IconButton(
                          onPressed: (){}, 
                          icon: Icon(Icons.keyboard_arrow_right , size: 35,)
                          ),
                      ),
                    ],
                  ),
                  textBetweenLines("معلومات التوصيل", context),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 248, 249),
                      border: Border.all(
                        color: const Color.fromARGB(64, 158, 158, 158)
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
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
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 10
                          ),
                          color: const Color.fromARGB(71, 158, 158, 158),
                          height: 1,
                          width: double.infinity,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: Text(
                                "عنوان المنزل يظهر هنا",
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.4,
                                  fontWeight: FontWeight.w500
                                ),
                                ),
                            ),
                              Icon(Icons.location_on , color: AppColors.blueColor, size: 15,)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Text(
                                  "12:00 - 20.09.2024",
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.4,
                                    fontWeight: FontWeight.w500
                                  ),
                                  ),
                              ),
                                Icon(MdiIcons.clipboardTextClockOutline , color: AppColors.blueColor, size: 15,)
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 3),
                              child: Text(
                                "150 ريال سعودي",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.tajawal(
                                  fontSize: 14.4,
                                  fontWeight: FontWeight.w500
                                ),
                                ),
                            ),
                              Icon(FontAwesome.dollar , color: AppColors.blueColor, size: 15,)
                          ],
                        ),
                      ],
                    ),
                  ),
                  textBetweenLines("تفاصيل المنتجات", context),
                  Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: const Color.fromARGB(64, 158, 158, 158)
                    ),
                    borderRadius: BorderRadius.circular(8)
                  ),
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
                                Text(
                                  "",
                                  textDirection: TextDirection.rtl,
                                  style: GoogleFonts.tajawal(
                                    fontSize: 14.4,
                                    color: AppColors.blueColor,
                                    fontWeight: FontWeight.w700,
                                  ),
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
                                Text(
                                      "مرات الطلب 1",
                                      style: GoogleFonts.tajawal(
                                        color: AppColors.blueColor,
                                        fontSize: 14.4,
                                        fontWeight: FontWeight.w700
                                      ),
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
                    ),
                  
                  
                  Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 247, 248, 249),
                      border: Border.all(
                        color: const Color.fromARGB(64, 158, 158, 158)
                      ),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1300 ر.س",
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.tajawal(
                                fontSize: 16.8,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                              ),
                            Text(
                              "مشتريات",
                              style: GoogleFonts.tajawal(
                                fontSize: 16.8,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "مجاني",
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.blueColor
                                ),
                                ),
                              Text(
                                "أجور التوصيل",
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                                ),
                                ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "15 ر.س",
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.tajawal(
                                fontSize: 16.8,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                              ),
                            Text(
                              "ضريبة VAT",
                              textDirection: TextDirection.rtl,
                              style: GoogleFonts.tajawal(
                                fontSize: 16.8,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                              ),
                              ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "100 - ر.س",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green[700]
                                ),
                                ),
                              Text(
                                "رصيد المحفظة",
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green[700]
                                ),
                                ),
                            ],
                          ),
                        ),
                        DottedLine(
                          dashColor: Colors.black45,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "1315 ر.س",
                                textDirection: TextDirection.rtl,
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                                ),
                                ),
                              Text(
                                "المجموع الكلي",
                                style: GoogleFonts.tajawal(
                                  fontSize: 16.8,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black
                                ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),


            Column(
              children: [
                Container(
                 margin: EdgeInsets.only(bottom: 15 , top: 15),
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: Color.fromARGB(255, 0, 128, 176),
                   ),
                   borderRadius: BorderRadius.circular(50)
                 ),
                   width: double.infinity,
                   height: 58,
                   child: TextButton(
                    onPressed: (){}, 
                    child: 
                    Text(
                      "تتبع الطلب" , 
                      style: GoogleFonts.tajawal(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
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
                 width: double.infinity,
                  height: 58,
                  child: TextButton(
                    onPressed: (){
                      showDialog(
                        context: context, 
                        builder: (context) {
                          return AlertDialog(
                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.white,
                            title: Center(
                              child: Text(
                                "أضف تقييم للمندوب", 
                                style: GoogleFonts.tajawal(
                                  fontSize: 21.6,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ),
                            content: 
                            Container(
                              height: 250,
                              width: MediaQuery.of(context).size.width * .99,
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset("assets/deliveryimg.png" , width: 50,)
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      "مندوب التوصيل",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 9.6,
                                        fontWeight: FontWeight.w400
                                      ),
                                      ),
                                  ),
                                    Text(
                                    "عبدالرحمن مهند",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 16.8,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star , color: Colors.grey,),
                                        Icon(Icons.star , color: Colors.grey,),
                                        Icon(Icons.star , color: Colors.grey,),
                                        Icon(Icons.star , color: Colors.grey,),
                                        Icon(Icons.star , color: Colors.grey,),
                                      ],
                                    ),
                                  ),
                                  TextFormField(
                                    minLines: 3,
                                    maxLines: 3,
                                    decoration: InputDecoration(
                                      hintTextDirection: TextDirection.rtl,
                                      hintText: "اعلمنا كيف سارت الخدمة (اختياري)",
                                      hintStyle: GoogleFonts.tajawal(
                                        color: Colors.grey,
                                        fontSize: 14.4,
                                        fontWeight: FontWeight.w500
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(
                                          color: const Color.fromARGB(50, 158, 158, 158)
                                        )
                                      )
                                    ),
                                  ),
                                  
                                ],
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.start,
                            actions: [
                              SizedBox(
                                   width: 140,
                                    height: 58,
                                    child: TextButton(
                                      onPressed: (){}, 
                                      child: 
                                      Text(
                                        "تأكيد التقييم" , 
                                        style: GoogleFonts.tajawal(
                                          fontSize: 19.2,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white,
                                        ),
                                        ),
                                        style: TextButton.styleFrom(
                                          backgroundColor: Color.fromARGB(255, 0, 128, 176)
                                        ),
                                      ),
                                  ),
                                  SizedBox(
                                    height: 58,
                                    child: TextButton(
                                      onPressed: (){}, 
                                      child: 
                                      Text(
                                        "الغاء" , 
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
                    child: 
                    Text(
                      "تقييم الطلب" , 
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
            ],
          ),
        )
        ),
    );
  }
}