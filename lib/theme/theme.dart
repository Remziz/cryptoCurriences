import 'package:flutter/material.dart';

final darkTheme = ThemeData(
    primarySwatch: Colors.yellow,
    scaffoldBackgroundColor: Colors.black87,
    dividerColor: Colors.white24,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black87,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        )),
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white70,
    ),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      ),
      labelSmall: TextStyle(
        color: Colors.white.withOpacity(0.6),
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ));
