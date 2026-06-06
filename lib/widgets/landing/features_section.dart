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
          // ============ TENDENCIAS ============
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
                      _buildTrendCard(context, '1', 'Swapped', 'https://dnm.nflximg.net/api/v6/mAcAr9TxZIVbINe88xb3Teg5_OA/AAAABWy559RcK_PTwyt5V8CttlzLTkTy3cL6qH5QWCn32JVSv22ynH2OghNn5Aw58WtPgfqC7fvyrW8QZIBTL5_FaH18kTXhejs95BYx.jpg?r=0c6'),
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

          // ============ ACCIÓN Y AVENTURA ============
          Padding(
            padding: const EdgeInsets.all(20),
            child: _buildCategorySection(
              'Acción y Aventura',
              [
                {'title': 'Extraction 2', 'image': 'https://image.tmdb.org/t/p/w500/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg'},
                {'title': 'The Gray Man', 'image': 'https://image.tmdb.org/t/p/w500/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg'},
                {'title': 'Red Notice', 'image': 'https://image.tmdb.org/t/p/w500/lAXONuqg41NwUMuzMiFvicDET9Y.jpg'},
                {'title': '6 Underground', 'image': 'https://image.tmdb.org/t/p/w500/lnWkyG3LLgbbrIEeyl5mK5VRFe4.jpg'},
                {'title': 'Old Guard', 'image': 'https://image.tmdb.org/t/p/w500/cjr4NWURcVN3gW5FlHeabgBHLrY.jpg'},
              ],
            ),
          ),

          const Divider(color: AppColors.borderGrey, height: 1),

          // ============ COMEDIAS ============
          Padding(
            padding: const EdgeInsets.all(20),
            child: _buildCategorySection(
              'Comedias',
              [
                {'title': 'Murder Mystery 2', 'image': 'https://image.tmdb.org/t/p/w500/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg'},
{'title': 'Glass Onion', 'image': 'https://image.tmdb.org/t/p/w500/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg'},
{'title': 'You People', 'image': 'https://image.tmdb.org/t/p/w500/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg'},
{'title': 'Luther', 'image': 'https://image.tmdb.org/t/p/w500/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg'},
{'title': 'Knives Out', 'image': 'https://image.tmdb.org/t/p/w500/pThyQovXQrw2m0s9x82twj48Jq4.jpg'},
              ],
            ),
          ),

          const Divider(color: AppColors.borderGrey, height: 1),

          // ============ DOCUMENTALES ============
          Padding(
            padding: const EdgeInsets.all(20),
            child: _buildCategorySection(
              'Documentales',
              [
                {'title': 'Our Planet', 'image': 'https://image.tmdb.org/t/p/w500/pThyQovXQrw2m0s9x82twj48Jq4.jpg'},
{'title': 'The Social Dilemma', 'image': 'https://image.tmdb.org/t/p/w500/pThyQovXQrw2m0s9x82twj48Jq4.jpg'},
{'title': 'Tiger King', 'image': 'https://image.tmdb.org/t/p/w500/pThyQovXQrw2m0s9x82twj48Jq4.jpg'},
{'title': 'Chef\'s Table', 'image': 'https://image.tmdb.org/t/p/w500/rQGBjWNveVeF8f2PGRtS85w9o9r.jpg'},


              ]
            ),
          ),

          const Divider(color: AppColors.borderGrey, height: 1),

        

          const Divider(color: AppColors.borderGrey, height: 1),

          // ============ MÁS MOTIVOS PARA UNIRTE ============
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

  // ==========================================
  // MÉTODOS AUXILIARES (FUERA DEL BUILD)
  // ==========================================

  // Método para construir secciones de categorías
  Widget _buildCategorySection(String title, List<Map<String, String>> movies) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textWhite,
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.chevron_right, color: AppColors.textGrey, size: 20),
            ],
          ),
        ),
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return _buildSmallCard(movies[index]['title']!, movies[index]['image']!);
            },
          ),
        ),
      ],
    );
  }

  // Card pequeña para categorías
  Widget _buildSmallCard(String title, String imageUrl) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                width: 150,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: AppColors.cardBackground,
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
                    child: const Icon(Icons.movie, color: AppColors.textGrey),
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.textWhite,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  // Card de tendencia (con modal)
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

  // Feature card (TV, Descargas)
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

  // Métodos auxiliares para datos del modal
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