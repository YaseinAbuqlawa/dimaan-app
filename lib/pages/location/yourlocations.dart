import 'package:dimaan/pages/location/widgets.dart';
import 'package:flutter/material.dart';

class Yourlocations extends StatefulWidget {
  const Yourlocations({super.key});

  @override
  State<Yourlocations> createState() => _YourlocationsState();
}

class _YourlocationsState extends State<Yourlocations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              topBarAdd("العناوين", context),
              location("عنوان المنزل", "هنا تظهر تفاصيل العنوان", "assets/homeicon.png"),
              location("عنوان العمل", "هنا تظهر تفاصيل العنوان", "assets/workicon.png"),
              location("عنوان الشركة", "هنا تظهر تفاصيل العنوان", "assets/locationicon.png"),
            ],
          ),
        ),
      ),
    );
  }
}

