import 'package:fitness_tracker/constants/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/painting.dart';

class PieChartSampleData{
final pieChartSectionData = [

PieChartSectionData(
color: primaryColor,
value: 25,
showTitle: false,
radius: 25,

  ),

   PieChartSectionData(
    color: Color.fromARGB(255, 39, 238, 145),
    value: 15,
    showTitle: false,
    radius: 16,
  ),

   PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 30,
    showTitle: false,
    radius: 13,
  ),
  PieChartSectionData(
    color: Color.fromARGB(255, 39, 115, 238),
    value: 20,
    showTitle: false,
    radius: 22,
  ),

];

} 