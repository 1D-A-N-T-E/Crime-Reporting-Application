import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'auth/login_screen.dart';
import 'auth/register_screen.dart';
import 'widgets/app_navigation_bar.dart';
import 'widgets/home/important_notice_widget.dart';
import 'widgets/home/nearby_alerts_section.dart';
import 'widgets/report_category_widget.dart';

void main() {
  runApp(const MyApp());
}

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
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'SafeZone',
      routerConfig: _router,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SafeZone'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ImportantNoticeWidget(),
              const ReportCategoryWidget(),
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
              const NearbyAlertsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const AppNavigationBar(selectedIndex: 0),
    );
  }
}
