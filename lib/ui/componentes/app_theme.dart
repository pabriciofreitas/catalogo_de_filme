import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

mixin AppTheme {
  static const ColorScheme appColor = ColorScheme(
    //fundo
    background: Color(0xFF262626), //meu fundo
    //brilho geral
    brightness: Brightness.light,
    //cor de erro
    error: Color(0xFFFF5A5A),
    //em cima do backgroudnd
    onBackground: Color(0xFF6c6c6c), //letrra por cima do fundo fraca
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
}
