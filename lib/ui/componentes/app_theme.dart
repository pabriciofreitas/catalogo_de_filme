import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTheme {
  /*
Theme.of(context).textTheme.headline4?.copyWith(
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
  */
  static const ColorScheme appColor = ColorScheme(
    //fundo
    background: Color(0xFF262626), //meu fundo
    //brilho geral
    brightness: Brightness.light,
    //cor de erro
    error: Color(0xFFFF5A5A),
    //em cima do backgroudnd
    onBackground: Color(0xFF707070), //letrra por cima do fundo fraca
    //por cima do error
    onError: Color(0xFFFFFFFF),
    //por cima da primaria
    onPrimary: Color(0xFFFFFFFF),
    //por cima da segundaria
    onSecondary: Color(0xFFFFFFFF),
    //por cima da superfice
    onSurface: Color(0xFF3a3a3a), //cor app bar
    //principal
    primary: Color(0xFFFFFFFF), //cor de texto branco
    //variante da principal
    primaryVariant: Color(0xFF63B476),
    //secundaria
    secondary: Color(0xFFe3a22f), //cor do botãp
    //variante da secundaria
    secondaryVariant: Color(0xFFe3a22f),
    //superfice
    surface: Color(0xFF3a3a3a), //cor appbar
  );

  static const _light = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        fontSize: 96, fontWeight: _light, letterSpacing: -1.5),
    headline2: GoogleFonts.roboto(
        fontSize: 60, fontWeight: _light, letterSpacing: -0.5),
    headline3: GoogleFonts.roboto(fontSize: 48, fontWeight: _regular),
    headline4: GoogleFonts.roboto(
        fontSize: 34, fontWeight: _regular, letterSpacing: 0.25),
    headline5: GoogleFonts.roboto(fontSize: 24, fontWeight: _regular),
    headline6: GoogleFonts.roboto(
        fontSize: 20, fontWeight: _medium, letterSpacing: 0.15),
    subtitle1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: _regular, letterSpacing: 0.15),
    subtitle2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: _medium, letterSpacing: 0.1),
    bodyText1: GoogleFonts.roboto(
        fontSize: 16, fontWeight: _regular, letterSpacing: 0.5),
    bodyText2: GoogleFonts.roboto(
        fontSize: 14, fontWeight: _regular, letterSpacing: 0.25),
    button: GoogleFonts.roboto(
        fontSize: 14, fontWeight: _medium, letterSpacing: 1.25),
    caption: GoogleFonts.roboto(
        fontSize: 12, fontWeight: _regular, letterSpacing: 0.4),
    overline: GoogleFonts.roboto(
        fontSize: 10, fontWeight: _regular, letterSpacing: 1.5),
  );

  static const _lightFillColor = Color(0xFF303030);
  static const _darkFillColor = Color(0xFFFCFCFC);

  static final Color _lightFocusColor = _lightFillColor.withOpacity(0.12);
  static final Color _darkFocusColor = _darkFillColor.withOpacity(0.12);

  static ThemeData lightThemeData = themeData(appColor, _lightFocusColor);
  static ThemeData darkThemeData = themeData(appColor, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      canvasColor: colorScheme.background,
      backgroundColor: colorScheme.background,
      colorScheme: colorScheme,
      disabledColor: colorScheme.onBackground.withAlpha(40),
      dividerColor: colorScheme.onBackground.withAlpha(40),
      elevatedButtonTheme: elevatedButtonThemeData(colorScheme),
      errorColor: colorScheme.error,
      focusColor: focusColor,
      fontFamily: 'Poppins',
      highlightColor: Colors.transparent,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      inputDecorationTheme: inputDecorationTheme(colorScheme),
      primaryColor: colorScheme.primary,
      primaryColorLight: colorScheme.primaryVariant,
      scaffoldBackgroundColor: colorScheme.background,
      textTheme: _textTheme,
    );
  }

  static ElevatedButtonThemeData elevatedButtonThemeData(
      ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        onPrimary: colorScheme.onPrimary,
        onSurface: colorScheme.onSurface,
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        primary: colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        textStyle: _textTheme.subtitle1?.copyWith(color: colorScheme.onPrimary),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme(ColorScheme colorScheme) {
    return InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: colorScheme.onBackground.withAlpha(80),
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: colorScheme.error,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: colorScheme.onBackground.withAlpha(200),
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: colorScheme.onBackground.withAlpha(40),
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: colorScheme.error,
        ),
      ),
      labelStyle: _textTheme.bodyText1,
      hintStyle: _textTheme.subtitle1?.copyWith(
        color: colorScheme.onBackground.withAlpha(40),
      ),
    );
  }
}
