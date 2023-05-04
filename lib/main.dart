import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swiggy_dash/controller/b_nav.dart';
import 'package:swiggy_dash/view/bottom_nav.dart';
import 'package:swiggy_dash/view/splash/spash.dart';
import 'utils/colors.dart';
import 'view/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BNav()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          textTheme: const TextTheme(
              displayLarge:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              displayMedium:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              displaySmall:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              bodyLarge:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              bodyMedium:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              titleMedium:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87),
              titleSmall:
                  TextStyle(fontFamily: "Proxima Nova Font", color: xBlack87)),
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
