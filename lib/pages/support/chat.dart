import 'package:dimaan/models/colors.dart';
import 'package:dimaan/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImageBig(),
            Column(
              children: [
                topbarchat(),
                textBetweenLines("اليوم", context),
                sendMSG("السلام عليكم", "10:30", "assets/seencheck.png" , context),
                recieveMSG("وعليكم السلام ورحمة الله وبركاته أهلاً وسهلاً", "11:00" , context)
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 10),
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: AppColors.blueColor,
                  ),
                  child: Icon(Icons.mic , color: AppColors.whiteColor, size: 30,),
                ),
                Flexible(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: AppColors.greyColor2
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.attach_file),
                          hintText: "أدخل نص الرسالة ...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}

Widget sendMSG (TEXT , time , imagepath, context){
  return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .5,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor2,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8) , topLeft: Radius.circular(8),bottomLeft: Radius.circular(8))
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        text(TEXT, AppColors.blackColor, 12, FontWeight.w400),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: image(imagepath, 16, 16, 0),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: text(time, Colors.black, 10, FontWeight.w400),
              )
            ],
          ),
        );
}

Widget recieveMSG (TEXT , time , context){
  return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container( 
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .5,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.greyColor2,
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(8) , topRight: Radius.circular(8),bottomLeft: Radius.circular(8))
                    ),
                    child: text(TEXT, AppColors.blackColor, 12, FontWeight.w400),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: text(time, Colors.black, 10, FontWeight.w400),
              )
            ],
          ),
        );
}

Widget topbarchat (){
  return Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(24)),
            color: AppColors.whiteColor,
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: AppColors.greyColor2,
                offset: Offset(0, 15)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(30, 0, 129, 176)
                ),
                child: image("assets/callicon.png", 16, 16, 0),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "عبدالرحمن مهند",
                          style: GoogleFonts.tajawal(
                            fontSize: 19.2,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                          ),
                          ),
                        Row(
                          children: [
                            text("متصل الآن", AppColors.greenColor, 8, FontWeight.w400),
                            Container(
                              margin: EdgeInsets.only(left: 4),
                              width: 4,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: AppColors.greenColor
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/deliveryimg.png", width: 50,),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.arrow_forward_ios)
                    )
                ],
              ),
            ],
          )
        );
}