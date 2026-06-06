# 🎬 Netflix Clone - Landing Page

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue?logo=dart)
![Platform](https://img.shields.io/badge/platform-Android%20%7C%20iOS-green)
![License](https://img.shields.io/badge/license-MIT-orange)

**Réplica de la Landing Page de Netflix desarrollada en Flutter**

[Características](#-características) • [Tecnologías](#-tecnologías) • [Instalación](#-instalación) • [Estructura](#-estructura-del-proyecto) • [Capturas](#-capturas-de-pantalla)

</div>

---

## 📋 Descripción del Proyecto

Este proyecto es una **réplica funcional de la Landing Page de Netflix** desarrollada con Flutter. Fue creado como parte del laboratorio de la asignatura de Programación Móvil en **Tecsup**, demostrando el dominio de los conceptos fundamentales de Flutter y las mejores prácticas de desarrollo móvil.

La aplicación reproduce fielmente el diseño y la experiencia de usuario de la página oficial de Netflix Perú, incluyendo:
- Hero section con imagen de fondo
- Sección de tendencias con películas populares
- Características de la plataforma
- Preguntas frecuentes interactivas
- Modal de detalles de películas
- Diseño responsive y adaptable

---

## ✨ Características

### 🎨 **Diseño y UI/UX**
- ✅ **Diseño idéntico a Netflix**: Réplica exacta de la landing page oficial
- ✅ **Tema oscuro profesional**: Paleta de colores oficial de Netflix
- ✅ **Tipografías personalizadas**: Uso de Google Fonts (Montserrat, Bebas Neue, Roboto)
- ✅ **Responsive**: Se adapta a diferentes tamaños de pantalla (móvil y tablet)
- ✅ **Animaciones suaves**: Efectos hover, transiciones y scale animations

### 🔧 **Funcionalidades**
- ✅ **Búsqueda funcional**: Filtrado de películas en tiempo real
- ✅ **Modal de detalles**: Información detallada de cada película
- ✅ **Navegación fluida**: Transiciones entre pantallas
- ✅ **Formulario de email**: Captura de leads funcional
- ✅ **FAQ interactivo**: Acordeón de preguntas frecuentes

### 📦 **Técnicas Implementadas**
- ✅ **ListViews horizontales**: Para mostrar tendencias
- ✅ **Cards personalizadas**: Con sombras y bordes redondeados
- ✅ **Listas y Mapas**: Estructura de datos eficiente
- ✅ **Imágenes locales y remotas**: Manejo híbrido de assets
- ✅ **Error handling**: Manejo elegante de errores de carga
- ✅ **Loading indicators**: Spinners durante la carga de imágenes

---

## 🛠️ Tecnologías y Herramientas

| Tecnología | Versión | Propósito |
|------------|---------|-----------|
| **Flutter** | 3.0+ | Framework de desarrollo |
| **Dart** | 3.0+ | Lenguaje de programación |
| **Google Fonts** | 6.1.0 | Tipografías personalizadas |
| **Material Design** | 3.0 | Componentes de UI |

### 📚 Paquetes Utilizados
```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_fonts: ^6.1.0


📁 Estructura del Proyecto


lib/
├── main.dart                    # Punto de entrada de la aplicación
├── core/                        # Configuraciones globales
│   ├── app_colors.dart          # Paleta de colores de Netflix
│   └── app_theme.dart           # Tema global y tipografías
├── screens/                     # Pantallas principales
│   └── landing_page.dart        # Página de aterrizaje completa
└── widgets/                     # Componentes reutilizables
    ├── common/
    │   ├── custom_button.dart   # Botón personalizado de Netflix
    │   └── movie_detail_modal.dart  # Modal de detalles de película
    └── landing/
        ├── hero_section.dart    # Banner principal con formulario
        ├── features_section.dart    # Sección de tendencias y características
        ├── faq_section.dart     # Preguntas frecuentes
        └── footer_section.dart  # Pie de página con links

assets/
└── images/                      # Recursos locales
    ├── netflix_background.jpg   # Imagen de fondo del hero
    └── [posters de películas]


🚀 Instalación y Configuración
Prerrequisitos
Flutter SDK 3.0 o superior
Dart 3.0 o superior
Android Studio / VS Code
Git
Pasos de Instalación
Clonar el repositorio
git clone https://github.com/Mayela3018/Netflix-proyecto.git
cd Netflix-proyecto

Instalar dependencias
flutter pub get

Configurar assets
Asegúrate de que las imágenes estén en assets/images/
Verifica que el pubspec.yaml tenga configurado:
flutter:
  assets:
    - assets/images/

Ejecutar la aplicación
flutter run


🎯 Características Destacadas
1. Arquitectura Limpia
El proyecto sigue una estructura modular que facilita el mantenimiento y la escalabilidad. Cada componente tiene una responsabilidad única.
2. Manejo de Errores
Implementación robusta de errorBuilder y loadingBuilder en todas las imágenes, garantizando una experiencia de usuario fluida incluso con problemas de conexión.
3. Performance Optimizada
Uso de const constructors, widgets stateless cuando es posible, y optimización de rebuilds para máximo rendimiento.
4. Código Documentado
Comentarios explicativos en secciones clave del código para facilitar la comprensión y el mantenimiento.
📱 Plataformas Soportadas
✅ Android (API 21+)
✅ iOS (iOS 12+)
✅ Web (Chrome, Firefox, Safari)
✅ Desktop (Windows, macOS, Linux) - No probado
🔮 Mejoras Futuras
Agregar autenticación de usuarios
Integrar API real de TMDB
Implementar reproducción de videos
Agregar modo claro/oscuro toggle
Soporte para múltiples idiomas
Tests unitarios y de widgets
👩‍💻 Autor
Mayela
🎓 Estudiante de Tecsup
📱 Desarrollo de Aplicaciones Móviles

Este proyecto es parte de un trabajo académico y está desarrollado con fines educativos.
El diseño y la marca Netflix son propiedad de Netflix, Inc.


