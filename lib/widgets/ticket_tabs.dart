import 'package:flutter/material.dart';
import '../layout/layout.dart';

class TicketTabs extends StatelessWidget {
  final String tabOne;
  final String tabTwo;
  const TicketTabs({super.key, required this.tabOne, required this.tabTwo});

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return   FittedBox(child:  Container(
      padding: const EdgeInsets.all(3.5),
      child: Row(
        children: [
          //Airline tickets
          Container(
            padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),
            width: size.width*.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(left: Radius.circular(Layout.getHeight(50))),
                color: Colors.white
            ),
            child: Center(child: Text(tabOne)),
          ),
          // Hotels
          Container(
            padding: EdgeInsets.symmetric(vertical: Layout.getHeight(7)),
            width: size.width*.44,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(right: Radius.circular(Layout.getHeight(50))),
                color: Colors.transparent
            ),
            child: Center(child: Text(tabTwo)),
          ),


        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Layout.getHeight(50)),
          color: const Color(0xFFF4F6FD)
      ),
    ),);
  }
}
