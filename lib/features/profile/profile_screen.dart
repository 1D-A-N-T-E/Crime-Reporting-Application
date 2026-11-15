import 'package:flutter/material.dart';
import '../../widgets/app_navigation_bar.dart';
class ProfileScreen extends StatelessWidget {
      const ProfileScreen ({super.key});

Widget buildProfileCard(IconData icon, String title) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: const Color.fromARGB(96, 50, 47, 47),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Icon(icon, color: Colors.white),
        ),
        Expanded(
          flex: 7,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 16,
        ),
      ],
    ),
  );
}
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101F2B),
      body: Container(
      padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Color(0xFF101F2B)
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Profils', 
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                    ),),
                  Icon(Icons.settings, color: Colors.white,), 
                ],
              ),
            ),
             SizedBox(height: 100),

             // Bildes kontainers
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
        
                children: [
                  Container(
                   height: 160,
                  width: 160,
               decoration: BoxDecoration(
                color: const Color.fromARGB(255, 75, 76, 77),
                shape: BoxShape.circle,
              ),
                child: const Center(
                  child: Text('JL', 
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
                ), 
                  ),
                 
                ],
              ),
            ),
             SizedBox(height: 10),
             Text('Jānis berziņs',  
              style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
             SizedBox(height: 10),
             Text('@janis123' , style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
        // JAuns kontainers skaitļiem
            SizedBox(height: 100),
            Container(
              padding: EdgeInsets.symmetric(horizontal:30),
              child: Row(
                children: [
                                     Expanded(
                    flex: 1,
                    child: Column(
                     
                    children: [
                      
                      Text('40', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                       ),
                    ),
                    SizedBox(height: 5),
                      Text('Ziņojumi', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
                    ], 
                    ), 
                    ),
                        Container(
      height: 65,
      width: 1,
      color: Colors.white24,
    ),
                    Expanded(
                    flex: 1,
                    child: Column(
                     
                    children: [
                      
                      Text('25', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                       ),
                    ),
                    SizedBox(height: 5),
                      Text('Apstiprināti', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
                    ], 
                    ), 
                    ),
                     Container(
      height: 65,
      width: 1,
      color: Colors.white24,
    ),
                                      Expanded(
                    flex: 1,
                    child: Column(
                     
                    children: [
                      
                      Text('35', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                       ),
                    ),
                    SizedBox(height: 5),
                      Text('Noliegti', style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                  ),
                    ),
                    ], 
                    ), 
                    ),
                ],
              ),
            ),
            SizedBox(height: 50),
            // Informacija
 buildProfileCard(Icons.star, 'Mans reitings'),
 buildProfileCard(Icons.notifications, 'Mani brīdinājumi'),
 buildProfileCard(Icons.settings, 'Iestatījumi'),
 buildProfileCard(Icons.question_mark, 'Palīdzība'),
 buildProfileCard(Icons.info, 'Par lietotni'),
          ], // jaliek kontainerus
        ),
    ),
    bottomNavigationBar: const AppNavigationBar(
    selectedIndex: 4,
    ),
    ); 
  }
}

/**
 * 
 * 
 * 
 * 
*/