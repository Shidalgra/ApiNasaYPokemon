// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:multi_charts/multi_charts.dart';

class RadarChart5 extends StatefulWidget {
  const RadarChart5({
    Key? key,
    this.width,
    this.height,
    required this.firstData,
    required this.secondData,
    required this.thirdData,
    required this.forthData,
    required this.fifthData,
    required this.maxPointValue,
    required this.myColor,
    required this.firstDataLabel,
    required this.secondDataLabel,
    required this.thirdDataLabel,
    required this.forthDataLabel,
    required this.fifthDataLabel,
  }) : super(key: key);
  final double? width;
  final double? height;
  final double firstData;
  final double secondData;
  final double thirdData;
  final double forthData;
  final double fifthData;
  final double maxPointValue;
  final Color myColor;
  final String firstDataLabel;
  final String secondDataLabel;
  final String thirdDataLabel;
  final String forthDataLabel;
  final String fifthDataLabel;
  @override
  _RadarChart5State createState() => _RadarChart5State();
}

class _RadarChart5State extends State<RadarChart5> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Column(children: [
          Align(
            alignment: Alignment.center,
            //Radar Chart
            child: RadarChart(
              values: [
                widget.firstData,
                widget.secondData,
                widget.thirdData,
                widget.forthData,
                widget.fifthData
              ],
              labels: [
                widget.firstDataLabel,
                widget.secondDataLabel,
                widget.thirdDataLabel,
                widget.forthDataLabel,
                widget.fifthDataLabel,
              ],
              maxValue: widget.maxPointValue,
              fillColor: widget.myColor,
              chartRadiusFactor: 0.7,
            ),
          ),
        ]),
      ),
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!
