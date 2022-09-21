import 'package:flutter/material.dart';

import '../../models/pokemon.dart';
import 'components/pokemon_image_component.dart';
import 'components/pokemon_info_component.dart';

class CustomListTile extends StatefulWidget {
  final Pokemon pokemon;
  const CustomListTile({Key? key, required this.pokemon}) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/images/texture.png'),
              fit: BoxFit.cover,
              opacity: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: PokemonInfoComponent(
                  name: widget.pokemon.name,
                  pokemonId: widget.pokemon.pokemonId,
                  types: widget.pokemon.types,
                ),
              ),
              PokemonImageComponent(imagePath: widget.pokemon.imagePath),
            ],
          ),
        ),
      ),
    );
  }
}
