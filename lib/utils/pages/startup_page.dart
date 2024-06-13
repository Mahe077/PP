import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';
import 'package:pepper_pal/utils/theme/app_colors.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  void _logButtonClick() {
    logger.d("Button clicked");
    Navigator.popAndPushNamed(context, '/login'); //TODO:Add other navigation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().greenBackgroundDark,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            "assets/images/splash_images.jpeg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(0.6),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 450,
              padding: const EdgeInsets.fromLTRB(30, 170, 30, 10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/startup_container_background.png'),
                      fit: BoxFit.fill)),
              child: Column(
                children: [
                  const Text(
                    "We help you to find best solutions for your problems",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Let's Start Exploring...",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _logButtonClick,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors().greenColor,
                        foregroundColor: Colors.white,
                        elevation: 4,
                        fixedSize: const Size(200, 40)),
                    child: const Text("Get Started"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
