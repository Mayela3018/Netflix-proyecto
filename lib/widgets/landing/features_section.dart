import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../common/movie_detail_modal.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: Column(
        children: [
          // Tendencias
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tendencias',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textWhite,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      _buildTrendCard(context, '1', 'Swapped', 'https://image.tmdb.org/t/p/w500/6XN1vxHc7k5VmFzZi3Yn7VqKJqE.jpg'),
                      _buildTrendCard(context, '2', 'Michael Jackson', 'https://image.tmdb.org/t/p/w500/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg'),
                      _buildTrendCard(context, '3', 'Berlín', 'https://image.tmdb.org/t/p/w500/1M876KPjulVwppEpldhdc8V4o68.jpg'),
                      _buildTrendCard(context, '4', 'Violencia en la oficina', 'https://image.tmdb.org/t/p/w500/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg'),
                      _buildTrendCard(context, '5', 'Un amor que no se agota', 'https://image.tmdb.org/t/p/w500/9PFonBhy4cQy7Jz20NpMygczOkv.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          const Divider(color: AppColors.borderGrey, height: 1),
          
          // Más motivos
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Más motivos para unirte',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textWhite,
                  ),
                ),
                const SizedBox(height: 20),
                _buildFeatureCard(
                  'Disfruta en tu TV',
                  'Ve en smart TV, PlayStation, Xbox, Chromecast, Apple TV, reproductores de Blu-ray y más.',
                  Icons.tv,
                  Colors.purple,
                ),
                const SizedBox(height: 16),
                _buildFeatureCard(
                  'Descarga tus series para verlas offline',
                  'Guarda tu contenido favorito y siempre tendrás algo para ver.',
                  Icons.download,
                  Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTrendCard(BuildContext context, String number, String title, String imageUrl) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) => MovieDetailModal(
            title: title,
            description: _getDescription(title),
            imageUrl: imageUrl,
            year: _getYear(title),
            ageRating: '16+',
            type: 'Película',
            genre: _getGenre(title),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 12),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                height: 300,
                width: 200,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: AppColors.cardBackground,
                    height: 300,
                    width: 200,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                        color: AppColors.netflixRed,
                        strokeWidth: 2,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: AppColors.cardBackground,
                    height: 300,
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.movie, size: 60, color: AppColors.textGrey),
                        const SizedBox(height: 8),
                        const Text(
                          'No disponible',
                          style: TextStyle(color: AppColors.textGrey, fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black.withOpacity(0.9)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      number,
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w900,
                        color: AppColors.textWhite,
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textWhite,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description, IconData icon, Color iconColor) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textWhite,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textLightGrey,
                  ),
                ),
              ],
            ),
          ),
          Icon(icon, size: 60, color: iconColor),
        ],
      ),
    );
  }

  String _getDescription(String title) {
    switch (title) {
      case 'Swapped':
        return 'Dos niños son intercambiados en el hospital al nacer. Años después, descubren la verdad y deben enfrentar las consecuencias de haber crecido en familias equivocadas. Una historia conmovedora sobre identidad y familia.';
      case 'Michael Jackson':
        return 'Documental exclusivo sobre la vida y carrera del Rey del Pop, con imágenes inéditas y entrevistas exclusivas con sus seres queridos. Descubre al hombre detrás del mito.';
      case 'Berlín':
        return 'El carismático Berlín y su banda planean y ejecutan atracos espectaculares en París. Spin-off de La Casa de Papel que muestra las aventuras del personaje antes de los eventos de la serie original.';
      case 'Violencia en la oficina':
        return 'Una empleada frustrada decide tomar justicia por su cuenta cuando su jefe la despide injustamente. Una comedia negra sobre venganza corporativa que te hará reír y reflexionar.';
      case 'Un amor que no se agota':
        return 'Una historia de amor épica que atraviesa décadas. Dos almas gemelas se encuentran y separan repetidamente, pero el destino siempre los vuelve a unir. Una película que te robará el corazón.';
      default:
        return 'Una increíble historia que te mantendrá al borde de tu asiento. No te la puedes perder.';
    }
  }

  String _getYear(String title) {
    switch (title) {
      case 'Swapped': return '2024';
      case 'Michael Jackson': return '2024';
      case 'Berlín': return '2023';
      case 'Violencia en la oficina': return '2024';
      case 'Un amor que no se agota': return '2023';
      default: return '2024';
    }
  }

  String _getGenre(String title) {
    switch (title) {
      case 'Swapped': return 'Drama';
      case 'Michael Jackson': return 'Documental';
      case 'Berlín': return 'Acción';
      case 'Violencia en la oficina': return 'Comedia';
      case 'Un amor que no se agota': return 'Romance';
      default: return 'Thriller';
    }
  }
}