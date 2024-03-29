import 'package:flutter/material.dart';
import 'package:pokedex/pages/menu.dart';

void main() {
  runApp(const PokedexMain());
}

class PokedexMain extends StatelessWidget {
  const PokedexMain({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POKEDEX',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Menu(title: 'POKEDEX'),
    );
  }
}
