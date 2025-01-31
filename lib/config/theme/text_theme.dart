import "package:flutter/material.dart";
import "package:moniepoint_test/config/theme/app_colors.dart";


const _fontColor = AppColors.pBl100;

TextTheme appTextTheme = const TextTheme(
  // Large display titles
  displayLarge:
      TextStyle(fontSize: 96.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Section headers
  displayMedium:
      TextStyle(fontSize: 27.0, fontWeight: FontWeight.w700, color: _fontColor),
  // Subsection headers
  displaySmall:
      TextStyle(fontSize: 48.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Titles for individual components
  headlineMedium:
      TextStyle(fontSize: 32.0, fontWeight: FontWeight.w700, color: _fontColor),
  // Smaller titles
  headlineSmall:
      TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: _fontColor),
  // Used for most headings
  titleLarge:
      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: _fontColor),
  // High-emphasis text
  titleMedium:
      TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Secondary text, lower emphasis
  titleSmall:
      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: _fontColor),
  // Large body text
  bodyLarge:
      TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: _fontColor),
  // Default body text
  bodyMedium:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Text in buttons
  labelLarge:
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: _fontColor),
  // Captions for images, text fields, etc.
  bodySmall:
      TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: _fontColor),
  // Overline text, small labels
  labelSmall:
      TextStyle(fontSize: 11.0, fontWeight: FontWeight.w500, color: _fontColor),
);
