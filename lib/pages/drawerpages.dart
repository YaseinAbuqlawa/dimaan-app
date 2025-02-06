import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/variables.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Drawerpages extends StatefulWidget {
  const Drawerpages({super.key});

  @override
  State<Drawerpages> createState() => _DrawerpagesState();
}

class _DrawerpagesState extends State<Drawerpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: drawerPage == 2? notifications(context) : drawerPage == 3? support(context) : drawerPage == 4? info(context) : drawerPage == 5? rate(context) : drawerPage == 6? wholesale(context) : drawerPage == 7? LicensePage() : drawerPage == 8? privacy(context) : refund(context)
      ),
    );
  }
}

Widget rate(BuildContext context){
  return SafeArea(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          topBar("assets/likeicon.png", "التقييمات", context),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: image("assets/rateimage.png", 202, 195, 0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.blueColor,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(Icons.add_circle , color: AppColors.whiteColor, size: 20,),
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "تقييم ",
                              style: GoogleFonts.tajawal(
                                fontSize: 16,
                                color: AppColors.blackColor,
                                fontWeight: FontWeight.w700
                              ),
                            ),
                            TextSpan(
                              text: "ديمان",
                              style: GoogleFonts.tajawal(
                                fontSize: 16,
                                color: AppColors.blueColor,
                                fontWeight: FontWeight.w700
                              ),
                            )
                          ]
                        )
                      ),
                      text("انضم لمجموعة كبيرة من العملاء السعيدين", AppColors.blackColor, 12, FontWeight.w400)
                    ],
                  ),
                  const SizedBox(width: 10),
                  image("assets/review.png", 40, 40, 8),
                ],
              )
            ],
          ),
          textBetweenLines("التقييمات", context),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              filterSmlBtn("5 نجوم", Icons.star),
              filterSmlBtn("4 نجوم", Icons.star),
              filterSmlBtn("3 نجوم", Icons.star),
              filterSmlBtn("2 نجوم", Icons.star),
              filterSmlBtn("1 نجوم", Icons.star),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.greyColor2),
                color: AppColors.greyColor1
              ),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return userRate(index, 5);
                },
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget userRate(int index, int count){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.greenColor
            ),
            child: text("12.06.2024", AppColors.whiteColor, 8, FontWeight.w700),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end  ,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star , color: Colors.yellow,size: 14,),
                      Icon(Icons.star , color: Colors.yellow,size: 14,),
                      Icon(Icons.star , color: Colors.yellow,size: 14,),
                      Icon(Icons.star , color: Colors.yellow,size: 14,),
                      Icon(Icons.star , color: Colors.yellow,size: 14,),
                    ],
                  ),
                const SizedBox(height: 5),
                text("محمد عبدالله", AppColors.blackColor, 14, FontWeight.w500)
                ],
              ),
              const SizedBox(width: 10),
              image("assets/deliveryimg.png", 48, 48, 8)
            ],
          )
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.greyColor2
        ),
        child: text(
        "هنا يظهر نص التققيم الذي قام بإضافته المستخدم ... هنا يظهر نص التققيم الذي قام بإضافته المستخدم ... هنا يظهر نص التققيم الذي قام بإضافته المستخدم ... ", 
          AppColors.blackColor, 
          12, 
          FontWeight.w400
        ),
      ),
      if(index != count - 1) thickLine()
    ],
  );
}

Widget refund (BuildContext context){
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          topBar("assets/refundicon.png", "سياسة الاسترجاع", context),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: image("assets/refundimage.png", 202, 195, 0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "سياسة الاسترجاع ",
                        style: GoogleFonts.tajawal(
                          fontSize: 18,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                      TextSpan(
                        text: "ديمان" ,
                        style: GoogleFonts.tajawal(
                          fontSize: 18,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(40)
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.greyColor2
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                text("عملائنا الكرام ", AppColors.greenColor, 14, FontWeight.w500),
                const SizedBox(height: 10),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: """لأن تجربة تسوقكم معنا تهمنا, بإستطاعة جميع العملاء إستبدال او إسترجاع مشترياتهم لأي سبب كان, على ان يتم رفع طلب الاسترجاع او الاستبدال عبر وسائل الاتصال المتاحة خلال ساعة زمنية واحدة من إستلام الطلب. 
ملاحظة: يمكن الغاء الطلب اذا كانت حالته """,
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: "(جديد)",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                      TextSpan(
                        text: " فقط ",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 10),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: """سيقوم مندوبنا بالتواصل معكم لإستلام الطلب, بعد فحص المنتج والتأكد من سلامته سنقوم بإرسال البديل في حالة الاستبدال او إسترجاع المبلغ خلال """,
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: "5-10 ",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                      TextSpan(
                        text: "ايام عمل في حال الاسترجاع.",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                    ]
                  )
                ),
                const SizedBox(height: 20),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: """لرفع طلب استبدال او إسترجاع تواصل معنا على: 
عبر الواتس اب  """,
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: "966555242474",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                      TextSpan(
                        text: """
عبر البريد الالكتروني """,
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400,
                        )
                      ),
                      TextSpan(
                        text: " info@dimaan.sa",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700,
                        )
                      ),
                    ]
                  )
                )
              ],
            )
          ),
          
        ],
      ),
    ),
  );
}

Widget privacy (BuildContext context){
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          topBar("assets/privacyicon.png", "سياسة الخصوصية", context),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: image("assets/privacyimage.png", 202, 195, 0),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "سياسة الخصوصية ",
                        style: GoogleFonts.tajawal(
                          fontSize: 18,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                      TextSpan(
                        text: "ديمان",
                        style: GoogleFonts.tajawal(
                          fontSize: 18,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ]
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(40)
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.greyColor2
            ),
            child: text(
            """هنا تفاصيل سياسة الخصوصية الخاصة بتطبيق ديمان لتوزيع وبيع المياه ... هنا تفاصيل سياسة الاسترداد الخاصة بتطبيق ديمان لتوزيع وبيع المياه ... هنا تفاصيل سياسة الاسترداد الخاصة بتطبيق ديمان لتوزيع وبيع المياه ... هنا تفاصيل سياسة الاسترداد الخاصة بتطبيق ديمان لتوزيع وبيع المياه ... هنا تفاصيل سياسة الاسترداد الخاصة بتطبيق ديمان لتوزيع وبيع المياه.""", 
              AppColors.blackColor, 
              17, 
              FontWeight.w400
            ),
          ),
          
        ],
      ),
    ),
  );
}

Widget wholesale (BuildContext context){
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          topBar("assets/salesicon.png", "مبيعات الجملة", context),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: image("assets/wholesale.png", 202, 195, 0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                text("طلبات الجملة", AppColors.blackColor, 16, FontWeight.w700),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(40)
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.greyColor2
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                text(
                """لطلبات الجملة يرجى التواصل مع إدارة المبيعات على الرقم ادناه :
إدارة المبيعات :""", 
                  AppColors.blackColor, 
                  14, 
                  FontWeight.w400
                ),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "1- رقم الجوال : ",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: "0555242474",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ]
                  )
                ),
                RichText(
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "2- الإيميل :",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400
                        )
                      ),
                      TextSpan(
                        text: " Sultan@dimaan.sa",
                        style: GoogleFonts.tajawal(
                          fontSize: 14,
                          color: AppColors.blueColor,
                          fontWeight: FontWeight.w700
                        )
                      ),
                    ]
                  )
                ),
              ],
            ),
          ),
          
        ],
      ),
    ),
  );
}

Widget info(BuildContext context){
  return SingleChildScrollView(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          topBar("assets/infoicon.png", "من نحن", context),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: 165,
            decoration: BoxDecoration(
              color: Color.fromARGB(20 , 189, 219, 241,),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                image("assets/dimaanlogo.png", 120, 66, 0),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 30,
                          color: const Color.fromARGB(80, 131, 145, 161)
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        image("assets/shield.png", 16, 16, 0),
                        text("ثقة 100%", AppColors.blackColor, 10, FontWeight.w900)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
              children: [
                TextSpan(
                  text: "تعرف على",
                  style: GoogleFonts.tajawal(
                    fontSize: 20,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w700
                  )
                ),
                TextSpan(
                  text: " ديمان",
                  style: GoogleFonts.tajawal(
                    fontSize: 20,
                    color: AppColors.blueColor,
                    fontWeight: FontWeight.w700
                  )
                ),
              ]
            )
           ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: text(
              "من مرتفعات الليث في مكة المكرمة، تأتي مياه ديمان المعدنية لتقدم لكم ليس فقط مياهًا معدنية، بل إرثًا من النقاء.. مستخلصة من أمطار مكة الصافية ومعبأة بأيدي ماهرة في مصنعنا الحديث، نوفر لكم مياهًا خالصة متوجة بالجودة الفائقة والطعم الرائع. ديمان.. حيث كل قطرة تروي ظمأ الروح وتجدد الحواس، نعتني بتفاصيل الجودة، نحافظ على نقاء المصدر، ونلتزم بأعلى معايير التعقيم والسلامة لضمان وصول مياهنا إليكم نقيّة صحيّة. ديمان.. اختيارك الأمثل والأفضل لعائلتك", 
              AppColors.blackColor, 
              15, 
              FontWeight.w400
              ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              infoContainer(const Color.fromARGB(30, 52, 153, 109), "assets/bestprice.png", "أفضل سعر"),
              infoContainer(const Color.fromARGB(30, 0, 129, 176), "assets/globalconnection.png", "شبكة توزيع")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              infoContainer(const Color.fromARGB(30, 0, 129, 176), "assets/handshake.png", "مصداقية واحترام"),
              infoContainer( const Color.fromARGB(30, 52, 153, 109), "assets/hillstation.png", "متميزين بعملنا")
            ],
          ),
        ],
      ),
    ),
  );
}

Widget infoContainer (backgroundColor , imagepath , TEXT){
  return Container(
    width: 160,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: AppColors.whiteColor,
      boxShadow: [
        BoxShadow(
          blurRadius: 20,
          color: const Color.fromARGB(50, 131, 145, 161)
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16)
          ),
          child: image(imagepath, 24, 24, 0),
        ),
        const SizedBox(height: 10),
        text(TEXT, AppColors.blackColor, 14, FontWeight.w700)
      ],
    ),
  );
}

Widget support (BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        topBar("assets/supporticon.png", "الدعم الفني", context),
        simplePage("كيف نقدر ان نساعدك؟", "قم بفتح تذكرة جديدة وتواصل مع الدعم الفني عن طريق الدردشة بأسرع وقت!", "فتح تذكرة", "assets/supportimage.png")
      ],
    ),
  );
}

Widget notifications (context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
      child: Column(
        children: [
          topBar("assets/notificationicon.png", "الإشعارات", context),
          notificationsContainer(4),
          textBetweenLines("سجل الإشعارات", context),
          notificationsContainer(10)
        ],
      ),
    ),
  );
}

Widget notificationRow(index , count){
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColors.greenColor
            ),
            child: text("منذ 10 ساعة", AppColors.whiteColor, 6, FontWeight.w700),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end  ,
                children: [
                  Row(
                    children: [
                      text("تحديث طلبك", AppColors.greyTextColor, 12, FontWeight.w500),
                      image("assets/orderupdatedicon.png", 14, 14, 0),
                    ],
                  ),
                text("تم وصول الطلب الى الموقع", AppColors.blackColor, 12, FontWeight.w400)
                ],
              ),
              const SizedBox(width: 10),
              image("assets/deliveryimg.png", 48, 48, 8)
            ],
          )
        ],
      ),
      if(index != count - 1) thickLine()
    ],
  );
}

Widget thickLine(){
  return Container(
         margin: EdgeInsets.symmetric(vertical: 10),
         height: 1,
         width: double.infinity,
         color: const Color.fromARGB(50, 158, 158, 158),
       );
}

Widget notificationsContainer(count){
  return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.greyColor2)
          ),
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: count,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return notificationRow(index , count);
                },
              ),
            ],
          ),
        );
}