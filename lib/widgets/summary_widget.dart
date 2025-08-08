import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/pie_chart.dart';
import 'package:fitness_tracker/widgets/shedule_widget.dart';
import 'package:fitness_tracker/widgets/summary_details.dart';
import 'package:flutter/material.dart';

class Summary extends StatefulWidget {
  const Summary({super.key});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: !isDesktop ? cardBackgroundColor : null,
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Pie Chart Section
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: cardBackgroundColor,
                  ),
                  height: 200,
                  child: PieChartCard(),
                ),
              ),
              SizedBox(height: 20),
              
              // Summary Title
              Text(
                "Summary", 
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: greyColor,
                ),
              ),
              SizedBox(height: 16),
              
              // Summary Details Section
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: cardBackgroundColor,
                  ),
                  padding: EdgeInsets.all(8),
                  child: SummeryDetailes(),
                ),
              ),
              SizedBox(height: 20),
              
              // Schedule Section
              Card(
                child: Container(
                  decoration: BoxDecoration(
                    color: cardBackgroundColor,
                  ),
                  padding: EdgeInsets.all(8),
                  child: SheduleWidget(),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}