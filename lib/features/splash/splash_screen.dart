import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Sākuma sveiciena ekrāns ar saitēm uz reģistrāciju un pieteikšanos.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Aizpilda ekrānu ar fona attēlu un centrē sveiciena saturu.
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/images/background1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.center,
        // Vertikāli izvieto logo, īsu ievadu un konta darbību pogas.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lietotnes logo virs sveiciena teksta.
            Image.asset(
              'lib/assets/images/safezone_logo1.png',
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 10),
            // Lietotnes nosaukums un īsais apraksts.
            const Text(
              'SafeZone',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          const SizedBox(height: 20),
            // Lietotnes pamatdarbību raksturojošs sauklis.
            const Text(
              'Ziņo. Brīdina. Palīdz.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // Papildu sveiciena teksts zem lietotnes apraksta.
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: const Text(
                'Kopā padarīsim mūsu apkārtni\n                    drošāku!',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            const SizedBox(height: 100),

            // Atver reģistrācijas ekrānu, lai sāktu konta izveidi.
            ElevatedButton(
              onPressed: () {
                context.go('/register');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(239, 240, 9, 9),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const SizedBox(
                height: 50,
                child: Center(child: Text('Sākt')),
              ),
            ),
            const SizedBox(height: 20),

            // Atver pieteikšanās ekrānu lietotājiem ar esošu kontu.
            ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(49, 91, 82, 82),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const SizedBox(
                height: 50,
                child: Center(child: Text('Pieslēgties')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
