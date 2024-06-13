import 'package:flutter/material.dart';
import 'package:pepper_pal/utils/pages/login_page.dart';
import 'package:pepper_pal/utils/pages/startup_page.dart';
import 'package:pepper_pal/utils/theme/color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pepper Pal',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      themeMode: ThemeMode.light,
      // builder: EasyLoadin.init(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => const LoginPage(),
        '/start': (context) => const StartupPage()
      },
      initialRoute: '/start',
    );
  }
}
