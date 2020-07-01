import 'package:flutter/material.dart';

class ProviderScreen extends StatefulWidget {
  const ProviderScreen({Key key}) : super(key: key);

  @override
  _ProviderScreenState createState() => _ProviderScreenState();
}

class _ProviderScreenState extends State<ProviderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Provider'))),
    );
  }
}
