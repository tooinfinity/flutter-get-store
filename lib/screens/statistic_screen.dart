import 'package:flutter/material.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key key}) : super(key: key);

  @override
  _StatisticScreenState createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Statistic'))),
    );
  }
}
