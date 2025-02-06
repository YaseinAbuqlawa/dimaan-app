import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';

Widget carouselArrow (String imagepath ,IconData icon , void Function()? onPressed){
  return Stack(
    alignment: Alignment.center,
    children: [
      image(imagepath, 44, 240, 0),
      InkWell(
        onTap: onPressed, 
        splashColor: Colors.transparent,
        child: Icon(icon , size: 30  , color: AppColors.greyTextColor,)
        )
    ],
  );
}

Widget smallIconButton (Color color , IconData icon , Color iconColor){
  return Container(
           width: 25,
           height: 25,
           decoration: BoxDecoration(
             color: color,
             borderRadius: BorderRadius.circular(30)
           ),
           child: Icon(icon , color: iconColor, size: 18,),
         );
}

Widget columnDetails(imagepath , text1 , text2){
  return Column(
    children: [
      image(imagepath, 20, 20, 0),
      Padding(
        padding: const EdgeInsets.only(top: 5),
        child: text(text1, AppColors.blackColor, 12, FontWeight.w500),
      ),
      text(text2, AppColors.greyTextColor, 8, FontWeight.w400)
    ],
  );
}

Widget blueRow(String TEXT){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        text(TEXT, AppColors.blueColor, 12, FontWeight.w500),
        const SizedBox(width: 3),
        Icon(Icons.check_circle , color: AppColors.blueColor, size: 15,)
      ],
    ),
  );
}