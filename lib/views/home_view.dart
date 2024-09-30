import 'package:flutter/material.dart';
import 'package:nusic/models/categorias.dart';
import 'package:nusic/models/musics.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Musics> infoMusicas = [
    Musics(
        imagemMusica: 'assets/eminem.png',
        nomeMusica: 'Mockingbird',
        nomeCantor: 'Eminem',
        duracaoMusica: const Duration(minutes: 4, seconds: 10)),
    Musics(
        imagemMusica: 'assets/eminem.png',
        nomeMusica: 'Godzilla',
        nomeCantor: 'Eminem',
        duracaoMusica: const Duration(minutes: 3, seconds: 30)),
    Musics(
        imagemMusica: 'assets/eminem.png',
        nomeMusica: 'Rap God',
        nomeCantor: 'Eminem',
        duracaoMusica: const Duration(minutes: 6, seconds: 30)),
  ];

  List<Categorias> categorias = [
    Categorias(nome: 'Geral'),
    Categorias(nome: 'Músicas'),
    Categorias(nome: 'Álbuns'),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Olá, Gustavo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/eu.jpg'),
          ),
        ),
        actions: [
          Icon(Icons.favorite_outline),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.notifications_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            height: altura * 0.1,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: categorias.length,
              itemBuilder: (context, index) {
                final categoria = categorias[index];
                bool isSelected = index == _selectedIndex;
                return GestureDetector(
                  onTap: () => _onItemTapped(index),
                  child: Container(
                    margin: EdgeInsets.only(right: 15),
                    child: Column(
                      children: [
                        Text(
                          categoria.nome,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected ? Colors.black : Color(0xFFBDBCC5),
                          ),
                        ),
                        if (isSelected)
                          Container(
                            height: 2,
                            width: 40,
                            color: Colors.blue,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
