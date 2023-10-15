import 'package:flutter/material.dart';
import 'package:mycart/Constant/Colorconstants.dart';
import 'package:mycart/Constant/Styles.dart';
import 'package:mycart/Constant/Textconstants.dart';
import 'package:mycart/widget/Hometile.dart';
import 'package:mycart/widget/Maincontainer.dart';
import 'package:mycart/widget/todocontainer.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            // toolbarHeight: 200,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TextConstants.home1,
                  style: poppins24.copyWith(color: Colorconstants.black),
                ),
                Text(
                  TextConstants.home2,
                  style: poppins16.copyWith(
                      color: Colorconstants.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Icon(
                  Icons.notifications_active,
                ),
              )
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MainContainer(
                    text1: TextConstants.home3,
                    text2: TextConstants.home4,
                    color: Colorconstants.blue,
                    name: 'assets/images/Group.png',
                  ),
                  _gap(),
                  Text(
                    TextConstants.home5,
                    style: poppins24.copyWith(color: Colorconstants.black),
                  ),
                  _gap(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          20,
                          (index) => Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: TodoContainer(
                                    text1: TextConstants.home6,
                                    text2: TextConstants.home7,
                                    text3: TextConstants.home9),
                              )),
                    ),
                  ),
                  _gap(),
                  Text(
                    TextConstants.home10,
                    style: poppins24.copyWith(color: Colorconstants.black),
                  ),
                  _gap(),
                  Container(
                    color: Colorconstants.white,
                    child: ListView.builder(
physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      shrinkWrap: true,
                      primary: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom:10.0),
                          child: Hometile(
                              text1: TextConstants.home11,
                              text2: TextConstants.home12,
                              text3: TextConstants.home13),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  Widget _gap() {
    return const SizedBox(
      height: 15,
    );
  }
}
