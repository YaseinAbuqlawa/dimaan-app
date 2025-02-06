import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

int pageindex = 0;
int homePageIndex = 1;

bool otpSent = false;
int navBarIndex = 4;

int drawerPage = 2;

int authIntailPage = 0;

bool dropPRSD = false;
bool usewallet = false;

List<addressClass> address = [
  addressClass(fullAddress: "هنا تظهر تفاصيل العنوان", icon: "assets/homeicon.png", mainAddress: "عنوان المنزل" ,),
  addressClass(fullAddress: "هنا تظهر تفاصيل العنوان", icon: "assets/workicon.png", mainAddress: "عنوان العمل" ,),
  addressClass(fullAddress: "هنا تظهر تفاصيل العنوان", icon: "assets/locationicon.png", mainAddress: "عنوان آخر",),
];

class addressClass {
  String mainAddress;
  String fullAddress;
  String icon;
  bool? pressed;
  addressClass({required this.fullAddress , required this.icon , required this.mainAddress , this.pressed});
}