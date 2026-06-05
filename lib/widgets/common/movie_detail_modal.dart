import 'package:flutter/material.dart';
import '../../core/app_colors.dart';

class MovieDetailModal extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String year;
  final String ageRating;
  final String type;
  final String genre;

  const MovieDetailModal({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.year = '2024',
    this.ageRating = '16+',
    this.type = 'Película',
    this.genre = 'Thrillers',
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 800),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 20,
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // ✅ IMAGEN DE FONDO DEL MODAL
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        color: AppColors.background,
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 300,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Center(
                              child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes != null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                                color: AppColors.netflixRed,
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) {
                            return Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.movie, size: 80, color: AppColors.textGrey),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'Imagen no disponible',
                                    style: TextStyle(color: AppColors.textGrey),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // Gradiente sobre la imagen
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.3),
                            AppColors.cardBackground,
                          ],
                          stops: const [0.0, 0.6, 1.0],
                        ),
                      ),
                    ),
                  ],
                ),
                
                // Contenido
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Título
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textWhite,
                          height: 1.0,
                        ),
                      ),
                      const SizedBox(height: 16),
                      
                      // Tags
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: [
                          _buildTag(year),
                          _buildTag(ageRating),
                          _buildTag(type),
                          _buildTag(genre),
                        ],
                      ),
                      const SizedBox(height: 20),
                      
                      // Descripción
                      Text(
                        description,
                        style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.textWhite,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 32),
                      
                      // Botón
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('▶️ Reproduciendo...'),
                                backgroundColor: AppColors.netflixRed,
                              ),
                            );
                          },
                          icon: const Icon(Icons.play_arrow, size: 28),
                          label: const Text(
                            'Comienza ya',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.netflixRed,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            
            // Botón de cerrar
            Positioned(
              top: 16,
              right: 16,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: AppColors.textWhite,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}