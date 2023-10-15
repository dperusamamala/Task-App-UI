import 'package:flutter/material.dart';
import 'package:mycart/Constant/Colorconstants.dart';
import 'package:mycart/Constant/Styles.dart';

class TodoContainer extends StatelessWidget {
  const TodoContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});
  final String text1;
  final String text2;
  final String text3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Colorconstants.grey),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text1,
              style: poppins16.copyWith(
                  fontSize: 14, color: Colorconstants.todotextcolor),
            ),
            _gap(),
            Text(
              text2,
              style:
                  poppins16.copyWith(fontSize: 16, color: Colorconstants.black),
            ),
            _gap(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 7,
                  backgroundColor: Color(0xff61DE70),
                ),
                _gapwidth(),
                Text(
                  text3,
                  style: poppins16.copyWith(
                      fontSize: 10, color: Colorconstants.todotextcolor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _gap() {
    return const SizedBox(
      height: 8,
    );
  }

  Widget _gapwidth() {
    return const SizedBox(
      width: 5,
    );
  }
}
