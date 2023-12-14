import 'package:travel_book/layout/layout.dart';
import 'package:travel_book/utils/app_styles.dart';
import 'package:travel_book/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final bool? isColor;
  const TicketView({Key? key, this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = Layout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: Layout.getHeight(GetPlatform.isAndroid==true?167:169),
      child: Container(
        margin:  EdgeInsets.only(right: Layout.getHeight(16)),
        child: Column(
          children: [
            // Showing Blue part
            Container(
              decoration: BoxDecoration(
                color: isColor==null? const Color(0xFF526799): Colors.white,
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight:Radius.circular(21))
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC", style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,),

                      const Spacer(), //same with Expanded(child: child)
                      const ThickContainer(isColor:true),
                      Expanded(child: Stack(
                        children:[ SizedBox(
                          height: 24,
                          child: LayoutBuilder(

                            builder: (BuildContext context , BoxConstraints constraints ) {
                              return   Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                width: 3, height: 1, child: DecoratedBox(decoration:BoxDecoration(color: isColor==null? Colors.white: Colors.grey.shade300) ,

                              ),
                              )),
                              );
                            },

                          ),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child:Icon(Icons.local_airport_rounded, color:isColor==null? Colors.white: Color(0xff8accf7)),)),
                        ],

                      )),
                      const ThickContainer(isColor:true),
                      const Spacer(),
                      Text("LDN", style: isColor==null? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,)

                    ],
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text('New-York', style:isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      SizedBox(
                        width: 100, child: Text('London', textAlign: TextAlign.end, style: isColor==null? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,),
                      ),
                    ],
                  )
                ],
              ),
            ),

            // Shwoing Orange part
            Container(
              color: isColor==null? Styles.orangeColor:Colors.white,
              child:
              Row(
                children:  [
                  SizedBox(
                    height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints){
                      return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                      width: 5, height: 1,
                      child: DecoratedBox(
                      decoration: BoxDecoration(
                      color: isColor==null?Colors.white:Colors.grey.shade300
                      ),
                      ),
                      )),
                      );
                      },
                    ),
                  )),

                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color:Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),),
            Container(
              decoration: BoxDecoration(
                  color: isColor==null?Styles.orangeColor:Colors.white,
                  borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(isColor==null?21:0), bottomRight:Radius.circular(isColor==null?21:0))
              ),
              padding: const EdgeInsets.only(top: 10, bottom: 16, left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1 MAY", style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          SizedBox(height: 5,),
                          Text("Date", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("08:00 AM", style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          SizedBox(height: 5,),
                          Text("Departure time", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("23", style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3,),
                          SizedBox(height: 5,),
                          Text("Number", style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,)
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
