import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.title});
  final String title;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 171, 12, 12),
          centerTitle: true,
          title: const Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.blue,
                      size: 50.0,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: 10.0,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.yellow,
                      size: 10.0,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.green,
                      size: 10.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  'Pokedex',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 106, 20, 14)),
        ),
      ),
    );
  }
}
