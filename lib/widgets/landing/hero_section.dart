import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../common/custom_button.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 700,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            'https://media.licdn.com/dms/image/v2/D5612AQGy6sM0SJAdxg/article-cover_image-shrink_720_1280/article-cover_image-shrink_720_1280/0/1693150322893?e=2147483647&v=beta&t=2_aostRG53XjmjiS9FSI9Jcfn73tsoq3uFate9rV0XE',
          ),
          fit: BoxFit.cover,
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.6),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.8),
          ],
        ),
      ),
      child: Column(
        children: [
          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ✅ SOLO TEXTO NETFLIX (sin imagen)
                const Text(
                  'NETFLIX',
                  style: TextStyle(
                    color: AppColors.netflixRed,
                    fontSize: 50,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 4,
                  ),
                ),
                CustomButton(
                  text: 'Iniciar sesión',
                  onPressed: () {},
                  color: AppColors.netflixRed,
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 80),
          
          // Contenido central
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Películas y series ilimitadas\ny mucho más',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textWhite,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'A partir de S/ 28.90. Cancela cuando quieras.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textWhite,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  '¿Quieres ver Netflix ya? Ingresa tu email para crear una\ncuenta o reiniciar tu membresía de Netflix.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textLightGrey,
                  ),
                ),
                const SizedBox(height: 30),
                
                // Formulario de email
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextField(
                        controller: _emailController,
                        style: const TextStyle(color: AppColors.textWhite, fontSize: 16),
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: AppColors.textLightGrey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: CustomButton(
                        text: 'Comenzar',
                        icon: Icons.chevron_right,
                        onPressed: () {},
                        color: AppColors.netflixRed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}