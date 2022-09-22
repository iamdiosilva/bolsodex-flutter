import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/texture.png'),
              fit: BoxFit.cover,
              opacity: 0.3,
            ),
          ),
          child: const Center(
            child: SizedBox(
              height: 80,
              child: RiveAnimation.asset(
                'assets/animations/bolsodex_splash.riv',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
