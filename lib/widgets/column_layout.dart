import 'package:flutter/cupertino.dart';

import '../layout/layout.dart';
import '../utils/app_styles.dart';

class ColumnLayout extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const ColumnLayout({super.key, required this.firstText, required this.secondText, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText, style: Styles.headLineStyle3),
        SizedBox(height: Layout.getHeight(5)),
        Text(secondText, style: Styles.headLineStyle4),
      ],
    );
  }
}
