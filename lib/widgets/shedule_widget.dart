import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/sheduled_date.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SheduleWidget extends StatelessWidget {
  const SheduleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sheduledData = SheduledDate();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text(
          "Sheduled",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: secondaryColor,
          ),
        ),
        SizedBox(height: 30,),
// show the Sheduled data

for(var index = 0 ; index < sheduledData.sheduledTasks.length ; index ++)
Padding(
  padding: EdgeInsets.symmetric(vertical: 5),
  child: CustomCard(
    color: lineColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sheduledData.sheduledTasks[index].title,
              style:TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
             Text(
              sheduledData.sheduledTasks[index].date,
              style:TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: greyColor,
              ),
            ),
          ],
        ),
        Icon(
          Icons.alarm,
          color: greyColor,
        ),
      ],
    ),
    
  ),
  ),

      ],
    );
  }
}