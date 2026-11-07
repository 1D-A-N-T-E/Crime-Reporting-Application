import 'package:flutter/material.dart';

/// Parāda tuvākā ziņojuma kartīti ar atrašanās vietas informāciju.
class NearbyAlertsSection extends StatelessWidget {
  const NearbyAlertsSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Atstarpe atdala šo sadaļu no satura virs tās.
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 25) ,
        child: Column(
      children: [
        // Kartītē ir ietverta informācija par ziņojumu un tā attālumu.
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: const Color.fromARGB(204, 0, 0, 0),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // Ikona vizuāli apzīmē ziņojuma veidu.
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),

              // Atdala ikonu no ziņojuma teksta.
              SizedBox(width: 15),

              // Ziņojuma veids, adrese un publicēšanas laiks.
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Zādzība',
                        style: TextStyle(
                            color: Colors.white, fontSize: 20)),
                    Text('Elizabetes iela 12',
                        style: TextStyle(color: Colors.white)),
                    Text('pirms 12 min',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              // Norāde un aptuvenais attālums līdz ziņojuma vietai.
Expanded(
  child: Align(
    alignment: Alignment.center,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 25,
        ),
        SizedBox(height: 8),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 1,
          ),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '≈',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 3),
              Text(
                '400 km',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
)
             
            ],
          ),
        ),
      ],
    ),
    );
    

  }
}