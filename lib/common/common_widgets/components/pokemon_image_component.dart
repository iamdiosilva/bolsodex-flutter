import 'package:flutter/material.dart';

class PokemonImageComponent extends StatelessWidget {
  final String imagePath;
  const PokemonImageComponent({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const SizedBox(width: 80),
            Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(width: 100, height: 72),
                Positioned(
                  right: 0,
                  child: Image.asset(
                    'assets/images/pokeball_icon.png',
                    height: 100,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Positioned(
              top: -20,
              right: 0,
              child: Image.asset(
                imagePath,
                width: 100,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
