import 'package:flutter/material.dart';

class AppColors {
  // Palette de base
  static const Color background = Color(0xFFF8F8F8);
  static const Color primaryText = Color(0xFF2D2D2D);
  
  // Palette pastel générée pour les mois
  static final List<Color> pastelMonthColors = [
    const Color(0xFFB2EBF2), // Janvier (Cyan)
    const Color(0xFFF8BBD0), // Février (Rose)
    const Color(0xFFC8E6C9), // Mars (Vert)
    const Color(0xFFFFF9C4), // Avril (Jaune)
    const Color(0xFFD1C4E9), // Mai (Violet)
    const Color(0xFFCFD8DC), // Juin (Bleu Gris)
    const Color(0xFFFFCCBC), // Juillet (Corail)
    const Color(0xFFB3E5FC), // Août (Bleu clair)
    const Color(0xFFD7CCC8), // Septembre (Brun clair)
    const Color(0xFFFFE0B2), // Octobre (Orange)
    const Color(0xFFE1BEE7), // Novembre (Lavande)
    const Color(0xFFDCEDC8), // Décembre (Vert clair)
  ];

  static Color getColorForMonth(int month) {
    // month est 1-12
    if (month < 1 || month > 12) {
      return pastelMonthColors[0];
    }
    return pastelMonthColors[month - 1];
  }
}