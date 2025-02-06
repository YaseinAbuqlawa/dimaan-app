import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:dimaan/pages/location/addlocation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget topBarAdd(String title , BuildContext context){
  return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Addlocation(),));
            },
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColors.blueColor
              ),
              child: Row(
                children: [
                  text("أضف عنوان", AppColors.whiteColor, 10, FontWeight.w400),
                  const SizedBox(height: 4),
                  Icon(Icons.add_circle , color: Colors.white, size: 15,)
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0 , right: 15),
                child: Text(
                  title,
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
        );
}

Widget location (bigtext , smalltext , String imagepath){
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: AppColors.greyColor2),
      color: AppColors.greyColor1,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            image("assets/editicon.png", 20, 20, 0),
            const SizedBox(width: 10),
            image("assets/deletelocationicon.png", 20, 20, 0),
          ],
        ),
        Row(
          children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  text(bigtext, Colors.black, 12, FontWeight.w700),
                  text(smalltext, AppColors.greyTextColor, 10, FontWeight.w400),
                ],
              ),
              const SizedBox(width: 10),
              image(imagepath, 40, 40,0)
          ],
        )
      ],
    ),
  );
}