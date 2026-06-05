import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '¿Preguntas? Llama al 0 800 55821',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textLightGrey,
            ),
          ),
          const SizedBox(height: 20),
          
          // Links en grid
          Wrap(
            spacing: 20,
            runSpacing: 12,
            children: [
              _buildLink('Preguntas frecuentes'),
              _buildLink('Centro de ayuda'),
              _buildLink('Cuenta'),
              _buildLink('Prensa'),
              _buildLink('Relaciones con inversionistas'),
              _buildLink('Empleo'),
              _buildLink('Canjear tarjetas de regalo'),
              _buildLink('Comprar tarjetas de regalo'),
              _buildLink('Formas de ver'),
              _buildLink('Términos de uso'),
              _buildLink('Privacidad'),
              _buildLink('Preferencias de cookies'),
              _buildLink('Información corporativa'),
              _buildLink('Contáctanos'),
              _buildLink('Prueba de velocidad'),
              _buildLink('Avisos legales'),
              _buildLink('Solo en Netflix'),
            ],
          ),
          
          const SizedBox(height: 30),
          
          // Selector de idioma
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.textLightGrey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.language, color: AppColors.textLightGrey, size: 20),
                SizedBox(width: 8),
                Text(
                  'Español',
                  style: TextStyle(color: AppColors.textLightGrey),
                ),
                Icon(Icons.arrow_drop_down, color: AppColors.textLightGrey),
              ],
            ),
          ),
          
          const SizedBox(height: 20),
          
          const Text(
            'Esta página está protegida por Google reCAPTCHA para comprobar que no eres un robot.',
            style: TextStyle(
              fontSize: 11,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLink(String text) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.textLightGrey,
          fontSize: 13,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}