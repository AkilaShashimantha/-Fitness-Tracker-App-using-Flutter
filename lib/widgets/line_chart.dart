import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/line_chart_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

 @override
  Widget build(BuildContext context) {

    final data = LineData();

    return CustomCard(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Steps Overview",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: greyColor,
          ),
        ),
        SizedBox(height: 20,),
        AspectRatio(aspectRatio: 16/6,
        child: LineChart(
          LineChartData(
            lineTouchData: LineTouchData(
              handleBuiltInTouches: true,
            ),

            //Remove rightside titles
            titlesData: FlTitlesData(
              rightTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                ),
              ),

              //remove the top side titles
              topTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: false,
                )
              ),

              //Bottom side titles
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget:(double value,TitleMeta meta) {
                    return data.bottomTitle[value.toInt()] != null ? 
                      Text(
                        data.bottomTitle[value.toInt()]!,
                        style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      ) : 
                      SizedBox();
                  },
                )
              ),

              // left side titles

              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  reservedSize: 40,
                  getTitlesWidget: (double value, TitleMeta meta){
                    return data.leftTitle[value.toInt()] != null ? 
                   Text(
                        data.leftTitle[value.toInt()]!,
                        style: TextStyle(
                          fontSize: 12,
                          color: greyColor,
                        ),
                      ) : 
                    SizedBox();
                  }
                )
              )
              ),

            borderData: FlBorderData(
              show: false,
            ),
            lineBarsData:[ LineChartBarData(
              color: sectionColor,
              barWidth: 2.5,
              belowBarData: BarAreaData(
                gradient: LinearGradient(colors: [
                  sectionColor.withOpacity(0.5),
                  Colors.transparent,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                ),
                show: true,
              ),
              dotData: FlDotData(
                show: true,
              ),
              spots: data.spots
            ),
            

            ],
            minX: 0,
            maxX: 24,
            minY: 0,
            maxY: 50,


          ),
        ),
        )
      ],
    ));
  }
}