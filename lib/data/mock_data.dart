class MockData {
  // Película destacada (Banner principal)
  static final Map<String, dynamic> featuredMovie = {
    'title': 'Stranger Things',
    'image': 'https://image.tmdb.org/t/p/w500/49WJfeN0moxb9IPfGn8AIqMGskD.jpg',
    'description': 'Cuando un niño desaparece, un pueblo destapa un misterio con experimentos secretos.',
  };

  // Categorías con sus películas (LISTAS Y MAPAS)
  static final Map<String, List<Map<String, dynamic>>> categories = {
    'Tendencias ahora': [
      {
        'title': 'Wednesday',
        'image': 'https://image.tmdb.org/t/p/w500/9PFonBhy4cQy7Jz20NpMygczOkv.jpg',
      },
      {
        'title': 'Glass Onion',
        'image': 'https://image.tmdb.org/t/p/w500/vDGr1YdrlfbU9wxTOdpf3zChmv9.jpg',
      },
      {
        'title': 'Enola Holmes 2',
        'image': 'https://image.tmdb.org/t/p/w500/tegBpjM5ODoYoM1NvPUx9EivCcD.jpg',
      },
      {
        'title': 'All Quiet',
        'image': 'https://image.tmdb.org/t/p/w500/2IRjbi9cADuDMKmqDMgH1gkNwqS.jpg',
      },
      {
        'title': 'The Crown',
        'image': 'https://image.tmdb.org/t/p/w500/1M876KPjulVwppEpldhdc8V4o68.jpg',
      },
    ],
    'Acción y Aventura': [
      {
        'title': 'Extraction 2',
        'image': 'https://image.tmdb.org/t/p/w500/7gKI9hpEMcZUQpNgKrkDzJpbnNS.jpg',
      },
      {
        'title': 'The Gray Man',
        'image': 'https://image.tmdb.org/t/p/w500/8cXbitsS6dWQ5gfMTZdorpAAzEH.jpg',
      },
      {
        'title': 'Red Notice',
        'image': 'https://image.tmdb.org/t/p/w500/lAXONuqg41NwUMuzMiFvicDET9Y.jpg',
      },
      {
        'title': '6 Underground',
        'image': 'https://image.tmdb.org/t/p/w500/lnWkyG3LLgbbrIEeyl5mK5VRFe4.jpg',
      },
      {
        'title': 'Old Guard',
        'image': 'https://image.tmdb.org/t/p/w500/cjr4NWURcVN3gW5FlHeabgBHLrY.jpg',
      },
    ],
    'Comedias': [
      {
        'title': 'Murder Mystery 2',
        'image': 'https://image.tmdb.org/t/p/w500/s1VzVhXlqseZdLcTcXbGpVrVcXx.jpg',
      },
      {
        'title': 'You People',
        'image': 'https://image.tmdb.org/t/p/w500/9s911RiXc8QY1yZxXxXxXxXxXxX.jpg',
      },
      {
        'title': 'Luther',
        'image': 'https://image.tmdb.org/t/p/w500/1E5baAaEse26fej7uHcjOgEERB2.jpg',
      },
      {
        'title': 'Knives Out',
        'image': 'https://image.tmdb.org/t/p/w500/pThyQovXQrw2m0s9x82twj48Jq4.jpg',
      },
    ],
  };
}