import 'package:fitness_tracker/data/health_details_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final healthModeldata = HealthDetailsData();

    return GridView.builder(
      itemCount: healthModeldata.healthDetails.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisExtent: 12,
        ), 
        itemBuilder: (context, index){
          return CustomCard(child: Column(
              children: [
                Image.asset(healthModeldata.healthDetails[index].icon,
                width: 30,
                height: 30,
                fit: BoxFit.cover,
                ),
              ],
          
                    ));
        },
        
        );
  }
}