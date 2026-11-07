import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'auth/login_screen.dart';
import 'auth/register_screen.dart';
import 'widgets/app_navigation_bar.dart';
import 'widgets/home/important_notice_widget.dart';
import 'widgets/home/nearby_alerts_section.dart';
import 'widgets/report_category_widget.dart';
import 'features/splash/splash_screen.dart';

/// Palaiž SafeZone lietotni.
void main() {
  runApp(const MyApp());
}

/// Nosaka lietotnes maršrutus un katram no tiem atbilstošo ekrānu.
final GoRouter _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),
     GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
  ],
);

/// Lietotnes saknes komponents, kas pieslēdz GoRouter.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Maršrutēšana tiek nodota MaterialApp, izmantojot GoRouter konfigurāciju.
    return MaterialApp.router(
      title: 'SafeZone',
      routerConfig: _router,
    );
  }
}

/// Sākuma ekrāns ar svarīgo paziņojumu un tuvākajiem brīdinājumiem.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Lietotnes nosaukums ekrāna augšdaļā.
      appBar: AppBar(
        title: const Text('SafeZone'),
      ),
      // Aizsargā saturu no sistēmas joslām un ļauj to ritināt.
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Izceļ lietotājam svarīgu ārkārtas paziņojumu.
              const ImportantNoticeWidget(),
              // Parāda pieejamās ziņojumu kategorijas.
              const ReportCategoryWidget(),
              // Sadaļas virsraksts tuvāko brīdinājumu sarakstam.
              const Padding(
                padding: EdgeInsets.only(top: 25, bottom: 10),
                child: Text(
                  'Tuvākie brīdinājumi',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Attēlo tuvākā brīdinājuma informāciju.
              const NearbyAlertsSection(),
            ],
          ),
        ),
      ),
      // Norāda, ka apakšējā navigācijā izvēlēta sākumlapa.
      bottomNavigationBar: const AppNavigationBar(selectedIndex: 0),
    );
  }
}
