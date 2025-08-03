import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/health_details_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final healthModeldata = HealthDetailsData();

    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: healthModeldata.healthDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
        mainAxisExtent: 120,
        ), 
        itemBuilder: (context, index){
          return CustomCard(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(healthModeldata.healthDetails[index].icon,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
                ),
                SizedBox(height: 8),
                Text(
                  healthModeldata.healthDetails[index].title,
                  style: TextStyle(fontSize: 12,
                  color: greyColor),
                  textAlign: TextAlign.center,
                ),
                Text(
                  healthModeldata.healthDetails[index].value,
                  style: TextStyle(fontSize: 14,
                  color: greyColor,
                   fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
                    ));
        },
        );
  }
}