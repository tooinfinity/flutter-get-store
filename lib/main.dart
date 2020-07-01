import 'package:flutter/material.dart';
import 'package:store/screens/client_screen.dart';
import 'package:store/screens/provider_screen.dart';
import 'package:store/screens/sale_screen.dart';
import 'package:store/screens/setting_screen.dart';
import 'package:store/screens/statistic_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return ClientScreen();
      case 1:
        return ProviderScreen();
      case 2:
        return SaleScreen();
      case 3:
        return StatisticScreen();
      case 4:
        return SettingScreen();
        break;
      default:
        return ClientScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData.dark(),
      home: Scaffold(
        body: callPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          selectedFontSize: 15,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Client'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping),
              title: Text('Provider'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text('Sale'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart),
              title: Text('Statistic'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
      ),
    );
  }
}
