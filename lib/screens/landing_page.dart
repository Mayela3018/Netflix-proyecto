import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/landing/hero_section.dart';
import '../widgets/landing/features_section.dart';
import '../widgets/landing/faq_section.dart';
import '../widgets/landing/footer_section.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ✅ DRAWER (MENÚ LATERAL)
      drawer: _buildDrawer(context),
      body: CustomScrollView(
        slivers: [
          // App Bar transparente
          SliverAppBar(
            floating: true,
            pinned: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu, color: AppColors.textWhite, size: 30),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ),
          ),
          
          SliverToBoxAdapter(child: const HeroSection()),
          SliverToBoxAdapter(child: const FeaturesSection()),
          SliverToBoxAdapter(child: const FaqSection()),
          SliverToBoxAdapter(child: const FooterSection()),
        ],
      ),
    );
  }

  // ==========================================
  // DRAWER / MENÚ LATERAL
  // ==========================================
  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.background,
      child: SafeArea(
        child: Column(
          children: [
            // Header del Drawer
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: AppColors.netflixRed,
                    child: Icon(Icons.person, size: 40, color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Usuario',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textWhite,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'usuario@email.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColors.textGrey,
                    ),
                  ),
                ],
              ),
            ),
            
            const Divider(color: AppColors.borderGrey),
            
            // Menú de opciones
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem(Icons.home, 'Inicio', () {
                    Navigator.pop(context);
                  }),
                  _buildDrawerItem(Icons.movie, 'Películas', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Películas');
                  }),
                  _buildDrawerItem(Icons.tv, 'Series', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Series');
                  }),
                  _buildDrawerItem(Icons.list, 'Mi Lista', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Mi Lista');
                  }),
                  _buildDrawerItem(Icons.download, 'Descargas', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Descargas');
                  }),
                  const Divider(color: AppColors.borderGrey),
                  _buildDrawerItem(Icons.settings, 'Configuración', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Configuración');
                  }),
                  _buildDrawerItem(Icons.help, 'Ayuda', () {
                    Navigator.pop(context);
                    _showComingSoon(context, 'Ayuda');
                  }),
                  _buildDrawerItem(Icons.info, 'Acerca de', () {
                    Navigator.pop(context);
                    _showAboutDialog(context);
                  }),
                ],
              ),
            ),
            
            // Footer del Drawer
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: AppColors.borderGrey)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(icon: const Icon(Icons.facebook, color: AppColors.textGrey), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.chat, color: AppColors.textGrey), onPressed: () {}),
                  IconButton(icon: const Icon(Icons.share, color: AppColors.textGrey), onPressed: () {}),
                  IconButton(
                    icon: const Icon(Icons.logout, color: AppColors.netflixRed),
                    onPressed: () {
                      Navigator.pop(context);
                      _showLogoutDialog(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.textWhite, size: 24),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.textWhite,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.chevron_right, color: AppColors.textGrey),
      onTap: onTap,
    );
  }

  void _showComingSoon(BuildContext context, String section) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(' $section - Próximamente'),
        backgroundColor: AppColors.netflixRed,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        title: const Text('Netflix Clone', style: TextStyle(color: AppColors.textWhite)),
        content: const Text(
          'Proyecto desarrollado en Flutter para el laboratorio de Tecsup.\n\nVersión 1.0.0',
          style: TextStyle(color: AppColors.textLightGrey),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cerrar', style: TextStyle(color: AppColors.netflixRed)),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.cardBackground,
        title: const Text('Cerrar Sesión', style: TextStyle(color: AppColors.textWhite)),
        content: const Text('¿Estás seguro que deseas cerrar sesión?', style: TextStyle(color: AppColors.textLightGrey)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(color: AppColors.textGrey)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Sesión cerrada'),
                  backgroundColor: AppColors.netflixRed,
                ),
              );
            },
            child: const Text('Cerrar', style: TextStyle(color: AppColors.netflixRed)),
          ),
        ],
      ),
    );
  }
}