import 'package:travel_book/components/ticket_view.dart';
import 'package:travel_book/utils/app_styles.dart';
import 'package:travel_book/utils/data_list.dart';
import 'package:travel_book/components/hotel_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

import '../layout/layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body:ListView(
        children: [
          Container(
            padding:  EdgeInsets.symmetric(horizontal: Layout.getWidth(16), vertical: Layout.getHeight(16)),
            child:Column(
              children: [
                SizedBox(height: Layout.getHeight(40),),
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Good morning", style: Styles.headLineStyle3,),
                  const SizedBox(height: 5,),
                  Text("Book Tickets",style: Styles.headLineStyle1,)
                    ]),
                  Container(
                 height: 50,
                 width: 50,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   image: const DecorationImage(
                     fit: BoxFit.fitHeight,
                     image:AssetImage("assets/images/img_1.png")
                 )
               ),
               )
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.all( 12,),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color:Color(0xFFBFC205)),
                      Text("Search", style:Styles.headLineStyle4)
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("Clicked");
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color:Styles.primaryColor ),),)
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView()
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    print("Clicked");
                  },
                  child: Text("View all", style: Styles.textStyle.copyWith(color:Styles.primaryColor ),),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
          children:
            hotelList.map((hotel) =>  HotelCard(hotel:hotel)).toList()
            )
          )
        ],
      ),
    );
  }
}
