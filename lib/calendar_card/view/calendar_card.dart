import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CalendarCard extends StatelessWidget {
  CalendarCard({super.key});

  final List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  final List<PieData> pieData = [
    PieData('Jan', 35, 'Jan'),
    PieData('Feb', 28, 'Feb'),
    PieData('Mar', 34, 'Mar'),
    PieData('Apr', 32, 'Apr'),
    PieData('May', 40, 'May'),
  ];

  final List<PieChartSectionData> pie = [
    PieChartSectionData(
      value: 240,
      title: 'Jan',
      showTitle: true,
      borderSide: BorderSide.none,
    ),
    PieChartSectionData(
      value: 240,
      title: 'Jan',
      showTitle: true,
      borderSide: BorderSide.none,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text('data'),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 32,
                  vertical: MediaQuery.sizeOf(context).height / 64,
                ),
                child: PieChart(
                  PieChartData(
                    sections: pie,
                    centerSpaceRadius: double.infinity,
                  ),
                  swapAnimationDuration: const Duration(milliseconds: 150),
                  swapAnimationCurve: Curves.linear,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class PieData {
  PieData(this.xData, this.yData, this.text);
  final String xData;
  final num yData;
  String text;
}
