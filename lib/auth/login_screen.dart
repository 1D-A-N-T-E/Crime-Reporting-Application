import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Pieteikšanās ekrāns ar saiti uz konta reģistrāciju.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ekrāna virsraksts.
      appBar: AppBar(
        title: const Text('Pieslēgties'),
      ),
      // Ļauj ritināt formu un pasargā to no sistēmas saskarnes elementiem.
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          // Sakārto ievades laukus un pogas vertikālā formā.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Lauks lietotāja e-pasta adreses ievadīšanai.
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-pasts',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Aizsedz paroli, kamēr lietotājs to ievada.
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Parole',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Poga pieteikšanās darbībai; tās loģika vēl nav pieslēgta.
              ElevatedButton(
                onPressed: () {},
               style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(164, 240, 9, 9),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text('Pieslēgties'),

              ),
               const SizedBox(height: 20),
              // Atver reģistrācijas ekrānu, izmantojot /register maršrutu.
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text('Izveidot kontu'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
