import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Konta reģistrācijas ekrāns ar saiti esošajiem lietotājiem.
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Veido ekrāna karkasu, virsrakstu un reģistrācijas formas saturu.
    return Scaffold(
      appBar: AppBar(title: const Text('Reģistrācija')),
      // Nodrošina, ka forma ietilpst ekrānā un ir ritināma mazākās ierīcēs.
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          // Izvieto formas laukus vertikāli un izstiepj tos pieejamajā platumā.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Lauks personas vārda ievadīšanai.
              TextField(
                decoration: InputDecoration(
                  labelText: 'Vārds',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Lauks personas uzvārda ievadīšanai.
              TextField(
                decoration: InputDecoration(
                  labelText: 'Uzvārds',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Tālruņa numurs saziņai ar konta lietotāju.
              TextField(
                decoration: InputDecoration(
                  labelText: 'Telefona numurs',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // E-pasta adrese konta identificēšanai un saziņai.
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-pasts',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Parole tiek aizsegta, lai ievadītais teksts nebūtu redzams.
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Parole',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Paroles apstiprināšanas lauks tās atkārtotai ievadīšanai.
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Apstiprināt paroli',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Reģistrācijas pogas darbība vēl nav pieslēgta.
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(164, 240, 9, 9),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const SizedBox(
                  height: 50,
                  child: Center(child: Text('Reģistrēties')),
                ),
              ),
              // Atver pieteikšanās ekrānu, izmantojot /login maršrutu.
              TextButton(
                onPressed: () => context.go('/login'),
                child: const Text('Jau ir konts? Pieslēgties'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
