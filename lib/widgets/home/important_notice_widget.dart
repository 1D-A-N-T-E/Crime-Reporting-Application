
import 'package:flutter/material.dart';

/// Izceļ svarīgu vai steidzamu paziņojumu sākumlapā.
class ImportantNoticeWidget extends StatelessWidget {
  const ImportantNoticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Sarkanā krāsa palīdz paziņojumam izcelties pārējā saturā.
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: 120,

      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Row(
        children: [

          // Ikona norāda, ka paziņojumam jāpievērš uzmanība.
          Expanded(
            flex: 1,
            child: Icon(
              Icons.warning,
              color: Colors.white,
              size: 40,
            ),
          ),

          // Paziņojuma virsraksts un paskaidrojošais teksts.
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text(
                  "Īpaši svarīgi!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Noticis ārkārtas gadījums",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),

                Text(
                  "Nepieciešama tūlītēja uzmanība",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),

              ],
            ),
          ),

          // Bultiņa norāda uz iespēju atvērt plašāku informāciju.
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ),

        ],
      ),
    );
  }
}
