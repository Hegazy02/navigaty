import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:navigaty/core/helpers/extentions.dart';
import 'package:navigaty/core/routing/routes.dart';
import 'package:navigaty/core/theme/colors.dart';
import 'package:navigaty/core/theme/styles.dart';
import 'package:navigaty/core/widgets/custom_button.dart';
import 'package:navigaty/main.dart';

class DetailsCard extends StatelessWidget {
  final String? boatName;
  final String? boatOwnerName;
  final String? strength;
  final String? craft;
  final String? liecensId;
  final String? boatId;
  final String image;
  const DetailsCard(
      {super.key,
      this.boatName,
      this.boatOwnerName,
      this.strength,
      this.craft,
      this.liecensId,
      this.boatId,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$boatName",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "اسم المركب",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$boatOwnerName",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "اسم صاحب المركب",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$strength",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "القوة",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "$craft",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "الحرفة",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "$liecensId",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "رقم الرخصة",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "$boatId",
                      style: Styles.style13BlackBoldCairo,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "رقم المركب",
                      style: Styles.style13WhiteBoldCairo,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
                child: CustomButton(
                  text: "تتبع",
                  onPressed: () {
                    context.pushNamed(Routes.webApp);
                  },
                ),
              ),
            ],
          ),
          Container(
            height: 100.h,
            width: 100.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}
