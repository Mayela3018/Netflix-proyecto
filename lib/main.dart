import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_theme.dart';
import 'screens/landing_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const NetflixLandingApp());
}

class NetflixLandingApp extends StatelessWidget {
  const NetflixLandingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix - Landing Page',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const LandingPage(),
    );
  }
}