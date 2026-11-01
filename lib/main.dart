
import 'package:flutter/material.dart';
import 'widgets/report_category_widget.dart';
import 'widgets/home/important_notice_widget.dart';
import 'widgets/home/nearby_alerts_section.dart';
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
      // Nākamais KOmponents
      Column(
  children: [
    Padding(
      padding: EdgeInsets.only(
        top: 25,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tuvākie brīdinājumi',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          
          TextButton(
          onPressed: () {
            print('Skatīt visus brīdinājumus');
          },
          child: Text(
            'Skatīt visus',
            style: TextStyle(
              color: const Color.fromARGB(205, 9, 117, 240),
              decoration: TextDecoration.underline,
              decorationColor: Color.fromARGB(205, 9, 117, 240),
              fontSize: 14,
            ),
            
          ),
          ),

        ],
      ),
    ),

    NearbyAlertsSection(),
  ],
),
      NearbyAlertsSection(),
      NearbyAlertsSection(),
    ], // beidzās
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
