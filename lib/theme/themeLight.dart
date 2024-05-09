import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  canvasColor: Colors
      .transparent, 
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      foregroundColor:
          const MaterialStatePropertyAll(Color.fromARGB(255, 255, 255, 255)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor:
          const MaterialStatePropertyAll(Color.fromARGB(255, 0, 170, 255)),
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      )),
    ),
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    centerTitle: true,
    foregroundColor: Colors.white,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Color.fromARGB(255, 0, 0, 0),
    backgroundColor: Color.fromARGB(255, 106, 141, 255),
  ),
  cardTheme: CardTheme(
    color: Colors.blueGrey,
    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
  ),
  textTheme: TextTheme(
        


  )
);

class GradientBackground extends StatelessWidget {
  final Widget child;

  GradientBackground({required this.child});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 186, 228, 250), // Светло-синий
                Color.fromARGB(255, 39, 132, 212), // Темно-синий
              ],
              stops: [0.0, 1.0], // Остановки градиента
              tileMode: TileMode.clamp,
            ),
          ),
        ),
        child,
      ],
    );
  }
}
