import 'package:flutter/material.dart';

class PokemonInfoComponent extends StatelessWidget {
  final String name;
  final String pokemonId;
  final List<String> types;
  const PokemonInfoComponent({Key? key, required this.name, required this.pokemonId, required this.types})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '#$pokemonId',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        buildTypes(),
      ],
    );
  }

  buildTypes() {
    return Row(
      children: types
          .map(
            (e) => Padding(
              padding: const EdgeInsets.only(right: 4),
              child: Image.asset(
                'assets/images/elements/$e.png'.toLowerCase(),
                width: 82,
              ),
            ),
          )
          .toList(),
    );
  }
}
