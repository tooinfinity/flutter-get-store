import 'package:flutter/material.dart';

class ClientScreen extends StatefulWidget {
  static const String routeName = '/client';

  @override
  _ClientScreenState createState() => _ClientScreenState();
}

class _ClientScreenState extends State<ClientScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Clients'))),
    );
  }
}
