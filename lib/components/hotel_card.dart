import 'package:travel_book/layout/layout.dart';
import 'package:travel_book/utils/app_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelCard({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top:5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
          color: Colors.grey.shade200,
        blurRadius: 2,
        spreadRadius: 1,
      )
          ]
      ),
      width: size.width*0.6,
      height: Layout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: Layout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}")
              )
            ),
          ),
          SizedBox(height: 10,),
          Text(hotel["place"], style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),),
          SizedBox(height: 5,),
          Text(hotel["destination"], style: Styles.headLineStyle3.copyWith(color: Colors.white),),
          SizedBox(height: 8,),
          Text('N${hotel["price"]}K/night', style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),)
        ],
      )

    );
  }
}
