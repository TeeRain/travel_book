import 'package:barcode_widget/barcode_widget.dart';
import 'package:travel_book/components/ticket_view.dart';
import 'package:travel_book/layout/layout.dart';
import 'package:travel_book/utils/app_styles.dart';
import 'package:travel_book/widgets/column_layout.dart';
import 'package:travel_book/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(vertical:Layout.getWidth(20), horizontal: Layout.getHeight(20) ),
            children: [
              SizedBox(height: Layout.getHeight(40)),
              Text("Tickets", style: Styles.headLineStyle1),
              SizedBox(height: Layout.getHeight(20)),
              const TicketTabs(tabOne: "Upcoming", tabTwo: "Previous"),
              SizedBox(height: Layout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left:  Layout.getHeight(15) ),
                child: const TicketView(isColor: true,),
              ),
              // SizedBox(height: 1,),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: const BoxDecoration(
                    color:Colors.white,
                    borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight:Radius.circular(21))
                ),
                child:Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       ColumnLayout(firstText: "FlutterDB", secondText: "Passenger",alignment: CrossAxisAlignment.start, ),
                        ColumnLayout(firstText: "5336 4563351", secondText: "Passport", alignment: CrossAxisAlignment.end,),

                      ],
                    ),
                    SizedBox(height: Layout.getHeight(20)),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColumnLayout(firstText: "353435 535263535", secondText: "Number of E-ticket",alignment: CrossAxisAlignment.start, ),
                        ColumnLayout(firstText: "8273625", secondText: "Booking code", alignment: CrossAxisAlignment.end,),

                      ],
                    ),
                    const SizedBox(height: 1),
                    SizedBox(height: Layout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",scale: 11,),
                                Text(" *** 2462", style:Styles.headLineStyle3)
                              ],
                            ),
                            SizedBox(height: Layout.getHeight(5)),
                            Text("Payment Method", style:Styles.headLineStyle4)
                          ],
                        ),
                        const ColumnLayout(firstText: "N24k", secondText: "Price", alignment: CrossAxisAlignment.end,),
                      ],
                    ),
                    const SizedBox(height: 1),
                    SizedBox(height: Layout.getHeight(20)),
                    ClipRRect(
                      borderRadius:BorderRadius.circular(Layout.getHeight(15)),
                      child:BarcodeWidget(data: 'https://github.com/absheikh', barcode: Barcode.code128(), drawText: false, color: Styles.textColor, width: double.infinity, height: 70,)
                    ),
                    SizedBox(height: Layout.getHeight(15)),

                  ],
                )
              ),
              SizedBox(height: Layout.getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(horizontal: Layout.getHeight(15)),
                  child: const TicketView())

              // Barcode

            ],
          ),
          Positioned(
            left: Layout.getHeight(25),
            top: Layout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width:2 )
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: Layout.getHeight(25),
            top: Layout.getHeight(295),
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width:2 )
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          )
        ],
      )
    );
  }
}
