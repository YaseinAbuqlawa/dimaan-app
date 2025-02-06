import 'package:carousel_slider/carousel_slider.dart';
import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dimaan/pages/products/widgets.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  CarouselSliderController controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.greyColor1,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.greyColor2)
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.greenColor,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_drop_down , color: AppColors.whiteColor, size: 18,),
                        text(
                          "المنزل", 
                          Colors.white, 
                          12, 
                          FontWeight.w500
                        ),
                        const SizedBox(width: 2,),
                        Icon(Icons.home_filled , color: AppColors.whiteColor, size: 18,)
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      text("شارع الملك فهد - بناء 12", AppColors.greyTextColor, 12, FontWeight.w400),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Icon(Icons.location_on,color: AppColors.greyTextColor, size: 18,),
                      )
                    ],
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  carouselController: controller,
                  items: [
                    image("assets/productimage.png", 260, 190, 0),
                    image("assets/productimage.png", 260, 190, 0),
                    image("assets/productimage.png", 260, 190, 0),
                  ], 
                  options: CarouselOptions(),
                  ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: carouselArrow("assets/leftshape.png", Icons.arrow_left , (){controller.previousPage();})
                ),
                  Align(
                  alignment: Alignment.centerRight,
                  child: carouselArrow("assets/rightshape.png", Icons.arrow_right , (){controller.nextPage();})
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      smallIconButton(AppColors.blackColor, Icons.more_horiz, AppColors.whiteColor),
                      const SizedBox(width: 10,),
                      smallIconButton(AppColors.blueColor, Icons.share, AppColors.whiteColor),
                      const SizedBox(width: 10,),
                      smallIconButton(const Color(0xf8391A1), MdiIcons.cardsHeart, AppColors.greyTextColor),
                    ],
                  ),
                  
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          text("قوارير آبار مكة النقية", AppColors.blackColor, 16, FontWeight.w500),
                          text("رقم الموديل: 30600", AppColors.greyTextColor, 12, FontWeight.w400),
                        ],
                      ),
                      const SizedBox(width: 10),
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
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.greyColor2,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.greyColor2)
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      columnDetails("assets/buyicon.png", "100", "تم الشراء"),
                      Container(
                        width: .1,
                        height: 43,
                        color: AppColors.greyTextColor,
                      ),
                      columnDetails("assets/volumeicon.png", "330 مل", "السعة"),
                      Container(
                        width: .1,
                        height: 43,
                        color: AppColors.greyTextColor,
                      ),
                      columnDetails("assets/bottelsicon.png", "40 عبوة", "الكمية"),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: DottedLine(
                      dashColor: AppColors.greyTextColor,
                    ),
                  ),
                  text("""نقاء يلامس روحك..
يجسد الصفاء في كل قطرة، بتخزين مبتكر وآمن، مع تعقيم يلبي المعايير العالمية، لضمان مياه تلامس الروح بجودتها العالية.""", 
                      AppColors.blackColor, 
                      12, 
                      FontWeight.w400
                    ),
                  blueRow("مصدر طبيعي وأمان عالي:"),
                  text("""مصدرنا هي آبار  مكة المكرمة وأنقاها.
تخزين متقدم: خزانات الفولاذ المقاوم للصدأ لتحافظ على جودة ونقاء المياه.""", 
                      AppColors.blackColor, 
                      12, 
                      FontWeight.w400
                    ),
                    blueRow("عملية تعقيم مستمرة:"),
                    text("""نضمن السلامة والنظافة من خلال تقنيات تعقيم حديثة، تتوافق مع المعايير العالمية.
جودة مضمونة: في مصانعنا المجهزة بأحدث التقنيات، نعمل بدقة لضمان جودة المياه,. نقوم بإجراء فحوصات دورية بمختبرات داخلية وخارجية معتمدة لتقديم أفضل ما لدينا.""", 
                      AppColors.blackColor, 
                      12, 
                      FontWeight.w400
                    ),
                    blueRow("جودة مضمونة:"),
                    text("""في مصانعنا المجهزة بأحدث التقنيات، نعمل بدقة لضمان جودة المياه,. نقوم بإجراء فحوصات دورية بمختبرات داخلية وخارجية معتمدة لتقديم أفضل ما لدينا.""", 
                      AppColors.blackColor, 
                      12, 
                      FontWeight.w400
                    ),
                ],
              ),
            )
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: AppColors.greyColor2,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.add),
                        text("2 كرتونة", AppColors.blackColor, 12, FontWeight.w700),
                        Icon(Icons.remove),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        text("السعر الكلي", AppColors.greyTextColor, 8, FontWeight.w400),
                        text("100 (200) ر.س", AppColors.blackColor, 14, FontWeight.w700)
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                bottomButton(AppColors.blueColor, AppColors.whiteColor, "assets/shoppingcart.png","اذهب الى السلة"),
                bottomButton(AppColors.blackColor, AppColors.whiteColor, "assets/applepayicon.png"," ادفع عن طريق"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

