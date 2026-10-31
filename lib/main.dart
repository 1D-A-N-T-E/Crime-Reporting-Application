
import 'package:flutter/material.dart';
import 'widgets/report_category_widget.dart';
import 'widgets/home/important_notice_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("SafeZone"),
        ),

        body: Container(
  width: double.infinity,
  height: double.infinity,
  margin: const EdgeInsets.all(6),
  padding: const EdgeInsets.all(15),
  decoration: BoxDecoration(
    color: Colors.grey[300],
  ),

  child: Column(
    children:  [
      ImportantNoticeWidget(),
      ReportCategoryWidget(),
      
    
    ],
  ),
),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Sākums',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: 'Mape',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Paziņojumi',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_sharp),
              label: 'Profils',
            ),
          ],
        ),
      ),
    );
  }
}
