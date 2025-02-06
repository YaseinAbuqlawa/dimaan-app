import 'dart:async';

import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Addlocation extends StatefulWidget {
  const Addlocation({super.key});

  @override
  State<Addlocation> createState() => _AddlocationState();
}

class _AddlocationState extends State<Addlocation> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .5,
            child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(16))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                text("قم بإضافة العنوان", AppColors.blackColor, 14, FontWeight.w500),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    text("حدد النوع", Colors.black, 12, FontWeight.w700),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      width: 4,
                      height: 4,
                      color: AppColors.blueColor,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    locationType("assets/locationicon.png", "أخرى"),
                    locationType("assets/workicon.png", "العمل"),
                    locationType("assets/homeicon.png", "المنزل"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      text("الموقع", Colors.black, 12, FontWeight.w700),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        width: 4,
                        height: 4,
                        color: AppColors.blueColor,
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: text("هنا تظهر تفاصيل الموقع الذي تشير له علامة الإشارة التي تظهر على الخريطة", AppColors.blackColor, 15, FontWeight.w400)),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.greyColor2
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: Icon(Icons.location_on , color: AppColors.greyTextColor,),
                        hintText: "أدخل تفاصيل أخرى للعنوان",
                        hintStyle: GoogleFonts.tajawal(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: AppColors.blueColor
                        ),
                        child: text("حفظ العنوان", AppColors.whiteColor, 16, FontWeight.w700),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20 , ),
                        child: text("عودة", AppColors.blackColor, 16, FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget locationType (String imagepath, String TEXT){
  return Container(
    margin: EdgeInsets.only(top: 20),
    padding: EdgeInsets.symmetric(horizontal: 40 , vertical: 20),
    decoration: BoxDecoration(
      color: AppColors.greyColor2,
      borderRadius: BorderRadius.circular(8)
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        imageWithColor(imagepath, 32, 32, AppColors.blueColor),
        const SizedBox(height: 15),
        text(TEXT, AppColors.blueColor, 14, FontWeight.w500)
      ],
    ),
  );
}