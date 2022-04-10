import 'package:flutter/material.dart';
import 'package:ibilling/Widgets/size_config.dart';

class MyBottom extends StatelessWidget {
  const MyBottom({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(top: getHeight(32), left: getWidth(16), bottom: getHeight(20),),
        height: getHeight(33),
        width: getWidth(90),
        decoration: BoxDecoration(
        
        ),
      ),
    );
  }
}