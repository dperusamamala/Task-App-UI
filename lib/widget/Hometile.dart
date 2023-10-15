import 'package:flutter/material.dart';
import 'package:mycart/Constant/Colorconstants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Constant/Styles.dart';

class Hometile extends StatelessWidget {
  const Hometile(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 330,
          height: 103,
          decoration: ShapeDecoration(
            color: Colorconstants.white.withOpacity(0.8700000047683716),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 5,
                offset: Offset(4, 4),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text1,
                        style: poppins16.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colorconstants.todotextcolor),
                      ),
                      Text(
                        text2,
                        style: poppins16.copyWith(
                            fontSize: 20,
                            color: Colorconstants.black,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        text3,
                        style: poppins16.copyWith(
                            fontSize: 12, color: Colorconstants.todotextcolor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 60,
                  // color: Colorconstants.blue,
                  child: CircularPercentIndicator(
                    radius: 25.0,
                    animation: true,
                    animationDuration: 1200,
                    lineWidth: 5.0,
                    percent: 0.7,
                    center: const Text(
                      "70%",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 10.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: Colorconstants.grey,
                    progressColor: Colorconstants.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
