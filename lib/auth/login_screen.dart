import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/app_navigation_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pieslēgties'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'E-pasts',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
              ElevatedButton(
                onPressed: () {},
                child: const Text('Pieslēgties'),
               style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(164, 240, 9, 9),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
               const SizedBox(height: 20),
              TextButton(
                onPressed: () => context.go('/register'),
                child: const Text('Izveidot kontu'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppNavigationBar(selectedIndex: 1),
    );
  }
}
