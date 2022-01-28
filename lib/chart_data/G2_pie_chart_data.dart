import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

List<PieChartSectionData> getSectionData(double screenWidth) {
  double radius = screenWidth / 4.44;

  return [
    PieChartSectionData(
      value: 24,
      title: '2016:24%',
      radius: radius,
      color: Color(0xffed733f),
    ),
    PieChartSectionData(
      value: 25,
      title: '2017:25%',
      radius: radius,
      color: Color(0xff584f84),
    ),
    PieChartSectionData(
      value: 25,
      title: '2018:25%',
      radius: radius,
      color: Color(0xffd86f9b),
    ),
    PieChartSectionData(
      value: 26,
      title: '2019:26%',
      radius: radius,
      color: Color(0xffa2663e),
    ),
  ];
}
