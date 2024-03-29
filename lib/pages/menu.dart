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
    final size = MediaQuery.of(context).size;
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
                      shadows: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 20.0,
                          spreadRadius: 20.0,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 0), //Desplazamiento de la sombra
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
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
            ],
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 106, 20, 14),
        body: Stack(
          children: [
            Container(
              width: size.width / 2,
              height: size.height * 0.05,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 171, 12, 12),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.elliptical(100, 60)),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: size.height * 0.1, left: 10, right: 10),
              child: Container(
                height: size.height / 2,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(50, 50),
                  ),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 40),
                            child: Icon(
                              Icons.circle,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                          bottom: 5.0,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 59, 59, 59),
                          ),
                          child: ListView(
                            children: const [
                              Text('Imagen del pokemon'),
                              Text('Informacion del pokemon')
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 35.0, bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.red,
                            size: 20,
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 30.0),
                            child: Icon(
                              Icons.format_list_numbered_rtl_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
