import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/theme_a.dart';
import '../themes/theme_b.dart';
import '../themes/theme_c.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _currentTheme = themeA; // Default theme
  ThemeData get currentTheme => _currentTheme;

  String _fontFamily = 'Roboto'; // Default font family
  String get fontFamily => _fontFamily;

  Color _currentColor = Colors.blue;
  Color get currentColor => _currentColor;

  void setTheme(ThemeData theme) {
    _currentTheme = theme;
    notifyListeners();
  }

  void setColor(Color color) {
    _currentColor = color;
    notifyListeners();
  }

  void setFont(String fontFamily) {
    _fontFamily = fontFamily;

    // Terapkan font baru ke textTheme
    _currentTheme = _currentTheme.copyWith(
      textTheme: GoogleFonts.getTextTheme(fontFamily),
    );
    notifyListeners();
  }
}
