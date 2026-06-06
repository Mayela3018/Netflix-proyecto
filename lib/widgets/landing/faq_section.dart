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
    {'question': '¿Qué es Netflix?', 'answer': 'Netflix es un servicio de streaming que ofrece una gran variedad de películas, series y documentales en miles de dispositivos conectados a internet.'},
    {'question': '¿Cuánto cuesta Netflix?', 'answer': 'Disfruta de Netflix en tu smartphone, tablet, Smart TV, laptop o dispositivo de streaming por una tarifa plana mensual. Planes desde S/ 28.90 hasta S/ 55.90 al mes. Sin costos adicionales ni contratos.'},
    {'question': '¿Dónde puedo ver Netflix?', 'answer': 'Disfruta donde quieras, cuando quieras. Inicia sesión en tu cuenta de Netflix para ver contenido de inmediato a través de netflix.com desde tu computadora o cualquier dispositivo conectado a internet que cuente con la app de Netflix.'},
    {'question': '¿Cómo cancelo?', 'answer': 'Netflix es flexible. Sin contratos molestos ni compromisos. Puedes cancelar tu cuenta en línea en dos sencillos pasos. No hay cargos por cancelación: puedes iniciar o cancelar tu cuenta en cualquier momento.'},
    {'question': '¿Qué puedo ver en Netflix?', 'answer': 'Netflix tiene un amplio catálogo de largometrajes, documentales, series, anime, originales galardonados de Netflix y más. Ve todo lo que quieras, en cualquier momento.'},
    {'question': '¿Es bueno Netflix para los niños?', 'answer': 'La experiencia de Netflix para niños está incluida en la membresía para que los padres tengan el control mientras los pequeños disfrutan de series y películas para toda la familia en un espacio propio.'},
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
              child: Material(
                color: AppColors.cardBackground,
                borderRadius: BorderRadius.circular(4),
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
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Text(
                          answer,
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColors.textLightGrey,
                            height: 1.5,
                          ),
                        ),
                      ),
                  ],
                ),
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
              height: 1.4,
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