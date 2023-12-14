import 'package:travel_book/utils/app_styles.dart';
import 'package:travel_book/widgets/app_text_widget.dart';
import 'package:travel_book/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import '../layout/layout.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding:  EdgeInsets.symmetric(horizontal: Layout.getWidth(16), vertical: Layout.getHeight(16)),
        children:  [
          SizedBox(height: Layout.getHeight(40),),
          Text("What are\n your looking for", style: Styles.headLineStyle1.copyWith(fontSize: Layout.getWidth(35)),),
          SizedBox(height: Layout.getHeight(20),),
          const TicketTabs(tabOne: "Airline tickets", tabTwo: "Hotels"),
          SizedBox(height: Layout.getHeight(25),),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: Layout.getHeight(15),),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: Layout.getHeight(20),),
          Container(
          padding: EdgeInsets.symmetric(vertical:Layout.getWidth(18), horizontal: Layout.getHeight(15) ),
          decoration: BoxDecoration(
          color:Color(0xd91130ce),
          borderRadius: BorderRadius.circular(Layout.getWidth(10))
          ),
          child: Center(child: Text("Find Tickets", style: Styles.textStyle.copyWith(color:Colors.white)))
          ),
          SizedBox(height: Layout.getHeight(40),),
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
          ),
          SizedBox(height: Layout.getHeight(15),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: size.width*.42,
                height: Layout.getHeight(425),
                padding: EdgeInsets.symmetric(vertical: Layout.getWidth(15), horizontal: Layout.getHeight(15)),
                decoration:BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Layout.getWidth(12)),
                  boxShadow: [BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1,
                    spreadRadius: 1
                  )]
                ),

                  child:Column(
                    children:[
                          Container(
                            height: Layout.getHeight(190),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(12),
                             image: DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage("assets/images/sit.jpg"),

                             )
                           )
                          ),
                      SizedBox(height: Layout.getHeight(5),),
                      Text("20% discounts tickets fro customers from Malaysia and Nigeria", style: Styles.headLineStyle2,)
    ]
                  ),
              ),
              Column(

                children: [
                 Stack(
                   children: [
                     Container(
                       width: size.width*.44,
                       height: Layout.getHeight(200),
                       decoration: BoxDecoration(
                           color: Color(0xff3ab8b8),
                           borderRadius: BorderRadius.circular(Layout.getHeight(18))
                       ),
                       padding: EdgeInsets.symmetric(vertical: Layout.getHeight(15), horizontal:Layout.getWidth(15) ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,

                         children: [
                           Text("Discount\nfor survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white)),
                           SizedBox(height: Layout.getHeight(10),),
                           Text("Take the survey about our services and enjoy the discount", style: Styles.headLineStyle2.copyWith(fontSize:
                           18, fontWeight: FontWeight.w500, color: Colors.white)),
                         ],
                       ),
                     ),
                    Positioned(
                      right: -45,
                        top:-40,
                        child:  Container(
                      padding: EdgeInsets.all(Layout.getHeight(30)),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xff189999)),
                          color:Colors.transparent
                      ),
                    ))
                   ],
                 ),
                  SizedBox(height: Layout.getHeight(15),),
                  Container(
                    width: size.width*.44,
                    height: Layout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: Layout.getHeight(15), horizontal: Layout.getWidth(15)),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Layout.getHeight(18)),
                      color: const Color(0xffec6545),
                    ),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Thank you!", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white), textAlign: TextAlign.center,),
                        SizedBox(height: Layout.getHeight(10),),
                        Text("We really appreciate your patronages", style: Styles.headLineStyle2.copyWith(fontSize:
                        18, fontWeight: FontWeight.w500, color: Colors.white)),
                    ],
                    ),
                  )
                ],
              )
            ],
          )


        ],
      ),
    );
  }
}
