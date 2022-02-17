import 'package:exp3/developer_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:exp3/developer_series.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<DeveloperSeries> data = [
    DeveloperSeries(
        year: "2017",
        developers: 4000,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
    DeveloperSeries(
        year: "2018",
        developers: 5000,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
    DeveloperSeries(
        year: "2019",
        developers: 40000,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
    DeveloperSeries(
        year: "2020",
        developers: 35000,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
    DeveloperSeries(
        year: "2021",
        developers: 45000,
        barColor: charts.ColorUtil.fromDartColor(Colors.green)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DeveloperChart(
          data: data,
        ),
      ),
    );
  }
}
