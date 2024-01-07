import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/core/theme/styles.dart';

import '../../../../../core/widgets/custom_appbar.dart';

class AboutViewBody extends StatelessWidget {
  const AboutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: "حول",
          isBackButtonExists: true,
        ),
        Spacer(),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: MyColors.primaryColor,
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Text("مشروع التخرج", style: Styles.style16WhiteBoldCairo),
              Text("صالح رشاد صالح", style: Styles.style16WhiteBoldCairo),
              Text("يوسف محمد علي", style: Styles.style16WhiteBoldCairo),
              Text("منة الله هشام كمال", style: Styles.style16WhiteBoldCairo),
              SizedBox(
                height: 10.h,
              ),
              Text("الخاص بكلية", style: Styles.style16WhiteBoldCairo),
              Text("الأستزراع المائي والمصايد البحرية",
                  style: Styles.style16WhiteBoldCairo),
              Text("2024 - 2023", style: Styles.style16WhiteBoldCairo),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 100.h,
                      child: Image.asset(
                        "assets/images/uniLogo1.png",
                        fit: BoxFit.fill,
                      )),
                  Container(
                      height: 100.h,
                      child: Image.asset(
                        "assets/images/uniLogo2.png",
                        fit: BoxFit.fill,
                      )),
                ],
              )
            ],
          ),
        ),
        Spacer(flex: 2,),

      ],
    );
  }
}
