import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 240,
          height: 450,
          child: Stack(
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      color: AppColors.blueColor,
                    ),
                    Container(
                  height: 100,
                  width: 100,
                  color: AppColors.blueColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: AppColors.blueColor,
                ),
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          AppColors.greenColor,
                          AppColors.blueColor,
                        ])
                      ),
                ),
                  ],
                ),
              ),
              Center(child: image("assets/track.png", 100, 400, 0)),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  circleItem(Alignment.topLeft, "assets/track1.png", "متابعة الطلبات", "تم تقديم الطلب بنجاح"  , TextDirection.ltr , true , false),
                  circleItem(Alignment.topRight, "assets/track1.png", "متابعة الطلبات", "تم تقديم الطلب بنجاح" , TextDirection.rtl , false , false),
                  circleItem(Alignment.topLeft, "assets/track1.png", "متابعة الطلبات", "تم تقديم الطلب بنجاح"  , TextDirection.ltr , false , false),
                  circleItem(Alignment.topRight, "assets/track1.png", "متابعة الطلبات", "تم تقديم الطلب بنجاح" , TextDirection.rtl , false , false),
                  circleItem(Alignment.topRight, "assets/track1.png", "متابعة الطلبات", "تم تقديم الطلب بنجاح" , TextDirection.ltr , false , true),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget circleItem(AlignmentGeometry alignment ,String image , String bigText , String smallText , TextDirection direction , bool first , bool last ){
  return Directionality(
    textDirection: direction,
    child: Align(
           alignment: alignment,
           child: Padding(
             padding:  EdgeInsets.only(top:first ? 0 : 50 , right: direction == TextDirection.rtl ? 55 : 0 , left: direction == TextDirection.ltr ? 55 : 0) ,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Container(
                   padding:const EdgeInsets.all(10),
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                    border: Border.all(color: Colors.white , width: 5),
                     borderRadius: BorderRadius.circular(30),
                     color:last ? AppColors.greenColor : AppColors.blueColor
                     ),
                   child: imageWithColor(image, 24, 24, AppColors.whiteColor),
                 ),
                 const SizedBox(width: 20,),
                 Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     text(bigText , AppColors.blueColor, 14, FontWeight.w500),
                     text(smallText , AppColors.blueColor, 10, FontWeight.w400)
                   ],
                 )
               ],
             ),
           ),
         ),
  );
}