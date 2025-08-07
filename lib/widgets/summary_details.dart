import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class  SummeryDetailes extends StatelessWidget {
  const  SummeryDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: lineColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails("Cal", "305"),
          buildDetails("Steps", "10232"),
          buildDetails("Distance", "7km"),
          buildDetails("Sleep", "7h"),

        ],
      )
      );
  }

Widget buildDetails (String key, String value){
return Column(
  mainAxisAlignment: MainAxisAlignment.center,
children: [
  Text(
    key, style: TextStyle(
      fontSize: 11,
      color: secondaryColor,
    ),
  ),
  SizedBox(height: 2,),
   Text(
    value, style: TextStyle(
      fontSize: 10,
      color: greyColor,
    ),
  )
],
);
}

}