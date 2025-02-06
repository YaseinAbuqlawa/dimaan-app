import 'package:dimaan/pages/payment/widgets.dart';
import 'package:flutter/material.dart';

class Paymentmethods extends StatefulWidget {
  const Paymentmethods({super.key});

  @override
  State<Paymentmethods> createState() => _PaymentmethodsState();
}

class _PaymentmethodsState extends State<Paymentmethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              topBarAdd("وسائل الدفع", context),
              paymentMethod("قصي عبد الصمد", "6489 **** **** ****", "assets/mastercardicon.png" , true),
              paymentMethod("بطاقة العمل", "6489 **** **** ****", "assets/visaicon.png" , false),
              paymentMethod("بطاقة الشركة", "6489 **** **** ****", "assets/visaicon.png" , false),
            ],
          ),
        ),
      ),
    );
  }
}