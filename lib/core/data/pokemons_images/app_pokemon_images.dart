const String gifImage = 'assets/images/pokemons/gif/';
const String pngImage = 'assets/images/pokemons/png/';

class AppPokemonsImages {
  static String getPokemonGif(String pokemonId) {
    return '$gifImage$pokemonId.gif';
  }

  static String getPokemonPng(String pokemonId) {
    return '$pngImage$pokemonId.png';
  }
}
