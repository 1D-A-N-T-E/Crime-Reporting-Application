
import 'package:flutter/material.dart';

/// Attēlo kategorijas, kurās lietotājs var iesniegt ziņojumu.
class ReportCategoryWidget extends StatelessWidget {
  const ReportCategoryWidget({super.key});

  /// Izveido vienu kategorijas elementu ar ikonu, nosaukumu un krāsu.
  Widget buildManaKastite(
      IconData icon, String teksts, Color color) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: 75,
      height: 90,
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          Text(
            teksts,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ievieto kategoriju elementus kopīgā, horizontālā panelī.
    return Container(
      width: double.infinity,
      height: 130,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(233, 27, 25, 25),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Kategorija ziņojumiem par zādzību.
          buildManaKastite(
            Icons.person,
            "Zādzība",
            Colors.red,
          ),
          // Kategorija ziņojumiem par šaušanu.
          buildManaKastite(
            Icons.gps_fixed,
            "Šaušana",
            const Color.fromARGB(255, 223, 208, 3),
          ),
          // Kategorija ziņojumiem par ugunsgrēku.
          buildManaKastite(
            Icons.local_fire_department,
            "Degšana",
            const Color.fromARGB(255, 241, 145, 42),
          ),
          // Kategorija ziņojumiem, kas neatbilst pārējiem veidiem.
          buildManaKastite(
            Icons.more_horiz,
            "Cits",
            Colors.grey,
          ),
        ],
      ),
    );
  }
}
