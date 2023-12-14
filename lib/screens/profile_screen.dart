import 'package:travel_book/layout/layout.dart';
import 'package:travel_book/utils/app_styles.dart';
import 'package:travel_book/widgets/column_layout.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(20), vertical: Layout.getWidth(20)),
        children: [
          SizedBox(height:Layout.getHeight(40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 86,
                width: 86,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Layout.getHeight(10)),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/img_1.png")
                  )
                ),
              ),
              SizedBox(width:Layout.getWidth(10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets", style: Styles.headLineStyle1,),
                  SizedBox(height:Layout.getHeight(2)),
                  Text("New-York", style: TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500, color:Colors.grey.shade500
                  )),
                  SizedBox(height:Layout.getHeight(8)),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(3), vertical: Layout.getWidth(3)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Layout.getHeight(100)),
                      color: const Color.fromARGB(255, 239, 244, 243)
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                              color: Color(0xff526799)
                          ),
                          child: const Icon(FluentSystemIcons.ic_fluent_shield_filled, color: Colors.white, size: 15,),
                        ),
                        SizedBox(width:Layout.getWidth(5)),
                        const Text("Premium status", style:TextStyle(
                          color:Color(0xff526799), fontWeight: FontWeight.w600,
                        )
                          ,),


                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: (){
                      print("Tapped");
                    },
                      child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),))
                ],
              )
            ],
          ),
          SizedBox(height:Layout.getHeight(8)),
          Divider(color:Colors.grey.shade300),
          SizedBox(height:Layout.getHeight(8)),
          Stack(
            children: [
              Container(
                height: Layout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color:Styles.primaryColor, 
                    borderRadius: BorderRadius.circular(Layout.getHeight(18))
                ),
              ),
              Positioned(
                  right: -45,
                  top:-40,
                  child:  Container(
                    padding: EdgeInsets.all(Layout.getHeight(30)),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 18, color: const Color(0xff264cd2)),
                        color:Colors.transparent
                    ),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal:Layout.getHeight(10), vertical: Layout.getWidth(20) ),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white ,
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled, color: Styles.primaryColor, size: 27 ,),
                    ),
                    SizedBox(width:Layout.getWidth(12)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You've got a new award", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You've 107 flights in a year", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white.withOpacity(0.9), fontSize: 16),)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height:Layout.getHeight(25)),
          Text("Accumulated miles", style:Styles.headLineStyle2),
          SizedBox(height:Layout.getHeight(15)),
          Column(
            children: [
              Text("182363", style:TextStyle(
                fontSize: 45, color: Styles.textColor, fontWeight: FontWeight.w600
              )),
              SizedBox(height:Layout.getHeight(20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Miles accrued", style:Styles.headLineStyle4.copyWith(fontSize: 16)),
                  Text("22 Oct 2022", style:Styles.headLineStyle4.copyWith(fontSize: 16)),
                ],
              ),
              SizedBox(height:Layout.getHeight(15)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "893", secondText: "Miles", alignment: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "Rano Air", secondText: "Received from", alignment: CrossAxisAlignment.end)
                ],
              ),
              SizedBox(height:Layout.getHeight(15)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "384", secondText: "Miles", alignment: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "Azman Airline", secondText: "Received from", alignment: CrossAxisAlignment.end)
                ],
              ),
              SizedBox(height:Layout.getHeight(15)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ColumnLayout(firstText: "9273", secondText: "Miles", alignment: CrossAxisAlignment.start),
                  ColumnLayout(firstText: "Kabo Airline", secondText: "Received from", alignment: CrossAxisAlignment.end)
                ],
              ),
              SizedBox(height:Layout.getHeight(25)),
              Center(
                child: Text("Thank you for choosing us", style:TextStyle(
                     color: Styles.primaryColor, fontWeight: FontWeight.w500
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
