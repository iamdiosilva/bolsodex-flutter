import 'package:flutter/material.dart';

import '../../common/common_widgets/custom_list_tile.dart';
import '../../core/data/repositories/pokemons_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE0E0E0),
              Colors.white,
            ],
          ),
        ),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {},
              child: CustomListTile(
                pokemon: PokemonRepository.pokeList[index],
              ),
            );
          },
          itemCount: PokemonRepository.pokeList.length,
        ),
      ),
    );
  }
}
