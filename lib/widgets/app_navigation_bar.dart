import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({required this.selectedIndex, super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(179, 81, 79, 79),

      onTap: (index) {
        switch (index) {
          case 0:
            context.go('/');
            break;
          case 1:
            context.go('/login');
            break;
          case 4:
            context.go('/register');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Sākums',
        ),
    /*    BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          label: 'Pieslēgties',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: 'Reģistrēties',
        ),*/
            BottomNavigationBarItem(
              icon: Icon(Icons.map,),
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
    );
  }
}
