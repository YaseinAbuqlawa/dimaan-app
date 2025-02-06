import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/carticon.png" , width: 24, height: 24,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0 , right: 15),
                      child: Text(
                        "السلة",
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
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                        padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(50, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (context, index) {
                          return Column(
                            children: [
                              cartItem(context),
                              index == 1? Container() : thickLine()
                            ],
                          );
                        },
                       )
                      ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
                          margin: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(50, 158, 158, 158)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "توصيل مجاني",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 7),
                                    child: RichText(
                                      text: TextSpan(
                                        style: GoogleFonts.tajawal(fontSize: 10 , fontWeight: FontWeight.w500 , color: Colors.black),
                                        children: [
                                          TextSpan(text: "أضف"),
                                          TextSpan(text: " 10 كراتين " , style: GoogleFonts.tajawal(fontWeight: FontWeight.w700 , fontSize: 10 , color: AppColors.blueColor)),
                                          TextSpan(text: "للحصول على توصيل مجاني")
                                        ]
                                      )
                                      ),
                                  ),
                                  Stack(
                                    alignment: Alignment.centerRight,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.none,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: const Color.fromARGB(255, 189, 219, 241)
                                        ),
                                        width: 270,
                                        height: 2,
                                      ),
                                      Container(
                                      clipBehavior: Clip.none,
                                      width: 233,
                                      height: 3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: AppColors.blueColor,
                                      ),
                                    ),
                                    ],
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/caricon.png" , width: 28, height: 20),
                              )
                            ],
                          ),
                        ),
                        textBetweenLines("العنوان والدفع" , context),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              dropPRSD = !dropPRSD;
                            });
                          },
                          style: TextButton.styleFrom(
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 248, 249),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Column(
                              children: [
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(dropPRSD == true? Icons.arrow_drop_up : Icons.arrow_drop_down , color: Colors.grey , size: 35,),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "عنوان المنزل",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700
                                                    ),
                                                  ),
                                                  Text(
                                                    "هنا تظهر تفاصيل العنوان",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 10,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset("assets/homeicon.png" , width: 24, height: 20,),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      dropPRSD == false? Container() : Column(
                                        children: [
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: address.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              addressClass adrs = address[index];
                                              return Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    adrs.mainAddress,
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700
                                                    ),
                                                  ),
                                                  Text(
                                                    adrs.fullAddress,
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 10,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset(adrs.icon , width: 24, height: 20,),
                                              )
                                            ],
                                          );
                                            },
                                          ),
                                          thickLine(),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                padding: EdgeInsets.all(.5),
                                                decoration: BoxDecoration(
                                                  color: AppColors.blueColor,
                                                  borderRadius: BorderRadius.circular(30)
                                                ),
                                                child: Icon(Icons.add , color: Colors.white, size: 12,),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                child: Text(
                                                  "أضف عنوان جديد",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.blueColor
                                                  ),
                                                  ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                              ],
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              paymthdBTN("STC" , Color.fromARGB(255, 247, 248, 249), Colors.black),
                              paymthdBTN("كاش" , Color.fromARGB(255, 247, 248, 249), Colors.black),
                              paymthdBTN("مدى" , Color.fromARGB(255, 247, 248, 249), Colors.black),
                              paymthdBTN("بطاقة بنكية", AppColors.blueColor, Colors.white)
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              dropPRSD = !dropPRSD;
                            });
                          },
                          style: TextButton.styleFrom(
                          ),
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 247, 248, 249),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Column(
                              children: [
                                        Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(dropPRSD == true? Icons.arrow_drop_up : Icons.arrow_drop_down , color: Colors.grey , size: 35,),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "قصي عبد الصمد",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700
                                                    ),
                                                  ),
                                                  Text(
                                                    "6489 **** **** ****",
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 11,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w600
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(2),
                                                child: Image.asset("assets/mastercardicon.png" , width: 40, height: 40,),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      dropPRSD == false? Container() : Column(
                                        children: [
                                          ListView.builder(
                                            shrinkWrap: true,
                                            itemCount: address.length,
                                            itemBuilder: (BuildContext context, int index) {
                                              addressClass adrs = address[index];
                                              return Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.end,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    adrs.mainAddress,
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 12,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w700
                                                    ),
                                                  ),
                                                  Text(
                                                    adrs.fullAddress,
                                                    style: GoogleFonts.tajawal(
                                                      fontSize: 10,
                                                      color: Colors.black,
                                                      fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset(adrs.icon , width: 24, height: 20,),
                                              )
                                            ],
                                          );
                                            },
                                          ),
                                          thickLine(),
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                width: 16,
                                                height: 16,
                                                padding: EdgeInsets.all(.5),
                                                decoration: BoxDecoration(
                                                  color: AppColors.blueColor,
                                                  borderRadius: BorderRadius.circular(30)
                                                ),
                                                child: Icon(Icons.add , color: Colors.white, size: 12,),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 5),
                                                child: Text(
                                                  "أضف عنوان جديد",
                                                  style: GoogleFonts.tajawal(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.blueColor
                                                  ),
                                                  ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                              ],
                            )
                          ),
                        ),
                        textBetweenLines("موعد التوصيل", context),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              timeBTN("05:00 م" ,"08:00 م", Color.fromARGB(255, 247, 248, 249), Colors.black),
                              timeBTN("02:00 ظ"  , "05:00 م", Color.fromARGB(255, 247, 248, 249), Colors.black),
                              timeBTN("10:00 ص", "02:00 ظ", AppColors.blueColor, Colors.white)
                            ],
                          ),
                        ),
                        textBetweenLines("تكرار الطلب", context),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              paymthdBTN("كل شهر" , Color.fromARGB(255, 247, 248, 249), Colors.black),
                              paymthdBTN("كل أسبوع" , AppColors.blueColor, Colors.white),
                              paymthdBTN("كل يوم" , Color.fromARGB(255, 247, 248, 249), Colors.black),
                              paymthdBTN("مرة واحدة", Color.fromARGB(255, 247, 248, 249), Colors.black)
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "يمكنك إيقاف هذا الاشتراك بأي وقت عن طريق ",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500
                                    )
                                  ),
                                  TextSpan(
                                    text: "الحساب الشخصي",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700
                                    )
                                  ),
                                ]
                              )
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 2),
                              child: Icon(Icons.info , color: Colors.black, size: 18,),
                            )
                          ],
                        ),
                        textBetweenLines("الفاتورة", context),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.green
                              )
                            ),
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                width: 60,
                                height: 30,
                                child: FlutterSwitch(
                                  inactiveColor: Color.fromARGB(30, 52, 153, 110),
                                  activeColor: Color.fromARGB(30, 131, 145, 161,),
                                  inactiveToggleColor: Colors.green,
                                  activeToggleColor: Colors.grey,
                                  activeIcon: Icon(Icons.close , color: Colors.white,),
                                  inactiveIcon: Icon(Icons.check , color: Colors.white,),
                                  onToggle: (val){
                                    setState(() {
                                      usewallet = val;
                                    });
                                  },
                                  value: usewallet,
                                  ),
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "رصيد المحفظة",
                                        style: GoogleFonts.tajawal(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      RichText(
                                        textDirection: TextDirection.rtl,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "لديك ",
                                              style: GoogleFonts.tajawal(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                            TextSpan(
                                              text: "100 ",
                                              style: GoogleFonts.tajawal(
                                                fontSize: 10,
                                                color: AppColors.blueColor,
                                                fontWeight: FontWeight.w500
                                              ),
                                            ),
                                            TextSpan(
                                              text: "ر.س. اضغط على الزر لاستخدام الرصيد ",
                                              style: GoogleFonts.tajawal(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400
                                              ),
                                            ),
                                          ]
                                        )
                                        )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Image.asset("assets/walletcarticon.png" , width: 40, height: 40,),
                                  ),
                                ],
                              )
                            ],
                          )
                        ),
                        Container(
                        margin: EdgeInsets.only(top: 20 , bottom: 20),
                        padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 247, 248, 249),
                            border: Border.all(
                              color: const Color.fromARGB(40, 158, 158, 158)
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
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "ماهي",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500
                                      )
                                    ),
                                    TextSpan(
                                      text: " سياسة الاسترجاع ",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 12,
                                        color: AppColors.blueColor,
                                        fontWeight: FontWeight.w700
                                      )
                                    ),
                                    TextSpan(
                                      text: "في حال حصول أمر ما؟",
                                      style: GoogleFonts.tajawal(
                                        fontSize: 12,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500
                                      )
                                    ),
                                  ]
                                )
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 2),
                                child: Icon(Icons.info , color: Colors.black, size: 18,),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar:
      SafeArea(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, -10),
                blurRadius: 15
              )
            ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 48,
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  overlayColor: const Color.fromARGB(19, 158, 158, 158),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                  ),
                  ),
                  onPressed: (){}, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/applepayicon.png" , width: 42,height: 16,),
                      Text(
                        " ادفع عن طريق",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  )
                  )
                ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 15,
                      offset: Offset(0, 10),
                      color: Colors.grey
                    )
                  ]
                ),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: (){}, 
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        backgroundColor: AppColors.blueColor
                      ),
                      child: Text(
                        "اكمال الطلب",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                        )
                      ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8 , horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "السعر الكلي",
                            style: GoogleFonts.tajawal(
                              fontSize: 10,
                              fontWeight: FontWeight.w400
                            ),
                          ),
                          Text(
                            "1315 ر.س",
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.tajawal(
                              fontSize: 16,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
                ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget paymthdBTN (String text ,Color backgroundColor ,Color textColor){
  return Expanded(
    child: Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.tajawal(
                  fontSize: 10,
                  color: textColor,
                  fontWeight: FontWeight.w700
                ),
                ),
            ),
          ),
  );
}

Widget timeBTN (String text1 , String text2 ,Color backgroundColor ,Color textColor){  
  return Expanded(
    child: Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                textDirection: TextDirection.rtl,
                text: TextSpan(
                  children: [
                    TextSpan(
                    text: text1,
                    style: GoogleFonts.tajawal(
                      fontSize: 11,
                      color: textColor,
                      fontWeight: FontWeight.w700
                      ),
                    ),
                    TextSpan(
                    text: " - ",
                    style: GoogleFonts.tajawal(
                      fontSize: 11,
                      color: textColor,
                      fontWeight: FontWeight.w700
                      ),
                    ),
                    TextSpan(
                    text: text2,
                    style: GoogleFonts.tajawal(
                      fontSize: 11,
                      color: textColor,
                      fontWeight: FontWeight.w700
                      ),
                    ),
                  ]
                )
                )
            ),
          ),
  );
}