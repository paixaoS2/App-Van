import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapinha'),
      ),
      body: const Center(
        child: Text(
          'O mapa vai aparecer aqui ó\n falta só a chave da api do google maps',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
