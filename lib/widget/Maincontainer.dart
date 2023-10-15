import 'package:flutter/material.dart';
import 'package:mycart/Constant/Colorconstants.dart';
import 'package:mycart/Constant/Styles.dart';

class MainContainer extends StatelessWidget {
  const MainContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.color, required this.name});
  final String text1;
  final String text2;
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color.withOpacity(0.7),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: poppins16.copyWith(
                      color: Colorconstants.white.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    text2,
                    style: poppins24.copyWith(
                      color: Colorconstants.white.withOpacity(0.7),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(
        
            height: 144,
            width: 120,
            child: Image.asset(name),
           ),
          ],
        ),
      ),
    );
  }
}
