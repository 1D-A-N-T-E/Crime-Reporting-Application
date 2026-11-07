import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Kopīga apakšējā navigācijas josla lietotnes ekrāniem.
class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({required this.selectedIndex, super.key});

  /// Indekss, kas norāda pašlaik izvēlēto navigācijas vienumu.
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    // Attēlo izvēlēto sadaļu un apstrādā pieskārienus navigācijas vienumiem.
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(179, 81, 79, 79),

      onTap: (index) {
        // Katru atbalstīto vienumu sasaista ar atbilstošo lietotnes maršrutu.
        switch (index) {
          case 0:
            context.go('/');
            break;
          case 1:
            context.go('/login');
            break;
          case 2:
            context.go('/splash');
            break;
          case 3:
            context.go('/register');
            break;
        }
      },
      // Ikonas un nosaukumi, kas redzami navigācijas joslā.
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
