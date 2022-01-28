import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSectionData(double screenWidth) {
  double radius = screenWidth / 4.44;

  return [
    PieChartSectionData(
      value: 15,
      title: '2016:15%',
      radius: radius,
      color: Color(0xffed733f),
    ),
    PieChartSectionData(
      value: 21,
      title: '2017:21%',
      radius: radius,
      color: Color(0xff584f84),
    ),
    PieChartSectionData(
      value: 29,
      title: '2018:29%',
      radius: radius,
      color: Color(0xffd86f9b),
    ),
    PieChartSectionData(
      value: 35,
      title: '2019:35%',
      radius: radius,
      color: Color(0xffa2663e),
    ),
  ];
}
