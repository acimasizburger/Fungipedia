// burada temalandirma + renkler + ... yazicaz.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'constants.dart';

// theme_provider.dart
class ThemeProvider with ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  void toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}

const colors = {
  "primary": Color.fromARGB(255, 245, 110, 15), // Ana renk
  "onPrimary": Color.fromARGB(255, 251, 251, 251), // Ana renk yazı rengi
  "secondary": Color.fromARGB(255, 135, 135, 135), // İkincil renk
  "onSecondary": Color.fromARGB(255, 38, 38, 38), // İkincil renk yazı rengi
  "surface": Color.fromARGB(255, 251, 251, 251), // Arkaplan rengi
  "onSurface": Color.fromARGB(255, 38, 38, 38), // Arkaplan yazı rengi
  "success": Colors.green, // Başarılı işlem rengi
  "error": Colors.red, // Hata rengi
  "onError": Colors.white, // Hata yazı rengi

  // "yedek": Color.fromARGB(255, 27, 27, 30),
};

const darkColors = {
  "primary": Color.fromARGB(255, 245, 110, 15),
  "onPrimary": Color.fromARGB(255, 251, 251, 251),
  "secondary": Color.fromARGB(255, 38, 38, 38),
  "onSecondary": Color.fromARGB(255, 251, 251, 251),
  "surface": Color.fromARGB(255, 21, 20, 25),
  "onSurface": Color.fromARGB(255, 251, 251, 251),
  "success": Colors.green,
  "error": Colors.red,
  "onError": Colors.white,
};

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.lato(),
    bodyMedium: GoogleFonts.lato(),
    bodyLarge: GoogleFonts.lato(),
    labelSmall: GoogleFonts.lato(),
    labelMedium: GoogleFonts.lato(),
    labelLarge: GoogleFonts.lato(),
    titleSmall: GoogleFonts.montserrat(),
    titleMedium: GoogleFonts.montserrat(),
    titleLarge: GoogleFonts.montserrat(),
    headlineSmall: GoogleFonts.oswald(),
    headlineMedium: GoogleFonts.oswald(),
    headlineLarge: GoogleFonts.oswald(),
    displaySmall: GoogleFonts.oswald(),
    displayMedium: GoogleFonts.oswald(),
    displayLarge: GoogleFonts.oswald(),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    brightness: Brightness.dark,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
  ),
  textTheme: TextTheme(
    bodySmall: GoogleFonts.lato(),
    bodyMedium: GoogleFonts.lato(),
    bodyLarge: GoogleFonts.lato(),
    labelSmall: GoogleFonts.lato(),
    labelMedium: GoogleFonts.lato(),
    labelLarge: GoogleFonts.lato(),
    titleSmall: GoogleFonts.montserrat(),
    titleMedium: GoogleFonts.montserrat(),
    titleLarge: GoogleFonts.montserrat(),
    headlineSmall: GoogleFonts.oswald(),
    headlineMedium: GoogleFonts.oswald(),
    headlineLarge: GoogleFonts.oswald(),
    displaySmall: GoogleFonts.oswald(),
    displayMedium: GoogleFonts.oswald(),
    displayLarge: GoogleFonts.oswald(),
  ),
);

// final lightTheme = ThemeData(
//   brightness: Brightness.light,
//   primarySwatch: Colors.blue,
//   visualDensity: VisualDensity.adaptivePlatformDensity,
//   textTheme: GoogleFonts.latoTextTheme().copyWith(
//     titleSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     titleMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     titleLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodySmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodyMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     bodyLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineSmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     headlineLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displaySmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displayMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     displayLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//     labelLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: colors["onSurface"],
//       ),
//     ),
//   ),
// );

// final darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   primaryColor: Colors.blue,
//   textTheme: GoogleFonts.latoTextTheme().copyWith(
//     titleSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     titleMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     titleLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodySmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodyMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     bodyLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineSmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     headlineLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displaySmall: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displayMedium: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     displayLarge: GoogleFonts.bebasNeue(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelSmall: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelMedium: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//     labelLarge: GoogleFonts.raleway(
//       textStyle: TextStyle(
//         color: darkColors["onSurface"],
//       ),
//     ),
//   ),
// );
