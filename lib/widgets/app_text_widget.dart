import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../layout/layout.dart';
import '../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(vertical:Layout.getWidth(12), horizontal: Layout.getHeight(12) ),
      decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.circular(Layout.getWidth(10))
      ),
      child: Row(
        children: [
           Icon(icon, color:Color(0xFFbfc2df)),
          SizedBox(width: Layout.getWidth(10),),
          Text(text, style: Styles.textStyle)
        ],
      ),
    );
  }
}
