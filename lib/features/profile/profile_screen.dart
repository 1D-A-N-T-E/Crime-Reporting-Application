import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
      const ProfileScreen ({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Text('Profils', 
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                    ),),
                  Icon(Icons.settings, color: Colors.white,), 
                ],
              ),
            )
          ],
        ),
    );
  }
}