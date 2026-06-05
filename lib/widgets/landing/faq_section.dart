import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../common/custom_button.dart';

class FaqSection extends StatefulWidget {
  const FaqSection({super.key});

  @override
  State<FaqSection> createState() => _FaqSectionState();
}

class _FaqSectionState extends State<FaqSection> {
  final List<Map<String, String>> _faqs = [
    {'question': '¿Qué es Netflix?', 'answer': 'Netflix es un servicio de streaming que ofrece una gran variedad de películas, series y documentales.'},
    {'question': '¿Cuánto cuesta Netflix?', 'answer': 'Los planes de Netflix van desde S/ 28.90 hasta S/ 55.90 al mes.'},
    {'question': '¿Dónde puedo ver Netflix?', 'answer': 'Puedes ver Netflix en smart TV, computadoras, tablets, celulares y más.'},
    {'question': '¿Cómo cancelo?', 'answer': 'Puedes cancelar tu membresía en cualquier momento desde tu cuenta.'},
    {'question': '¿Qué puedo ver en Netflix?', 'answer': 'Miles de películas, series, documentales y programas originales.'},
    {'question': '¿Es bueno Netflix para los niños?', 'answer': 'Sí, Netflix ofrece perfiles infantiles con contenido apropiado.'},
  ];

  int? _expandedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Preguntas frecuentes',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w700,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 20),
          ..._faqs.asMap().entries.map((entry) {
            int index = entry.key;
            String question = entry.value['question']!;
            String answer = entry.value['answer']!;
            bool isExpanded = _expandedIndex == index;

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      question,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textWhite,
                      ),
                    ),
                    trailing: Icon(
                      isExpanded ? Icons.remove : Icons.add,
                      color: AppColors.textWhite,
                      size: 28,
                    ),
                    onTap: () {
                      setState(() {
                        _expandedIndex = isExpanded ? null : index;
                      });
                    },
                  ),
                  if (isExpanded)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text(
                        answer,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textLightGrey,
                        ),
                      ),
                    ),
                ],
              ),
            );
          }).toList(),
          
          const SizedBox(height: 40),
          
          const Text(
            '¿Quieres ver Netflix ya? Ingresa tu email para crear una cuenta o reiniciar tu membresía de Netflix.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.textWhite,
            ),
          ),
          const SizedBox(height: 20),
          
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  style: const TextStyle(color: AppColors.textWhite),
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: AppColors.textLightGrey),
                    filled: true,
                    fillColor: Colors.white,
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
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}