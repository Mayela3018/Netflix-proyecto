import 'package:flutter/material.dart';
import '../widgets/landing/hero_section.dart';
import '../widgets/landing/features_section.dart';
import '../widgets/landing/faq_section.dart';
import '../widgets/landing/footer_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            FeaturesSection(),
            FaqSection(),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}