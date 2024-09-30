import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
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
    Categorias(nome: 'Categorias'),
    Categorias(nome: 'Álbuns'),
  ];

  int _selectedIndex = 0;
  int _gnavIndex = 0;

  void _gnavTapped(int index) {
    setState(() {
      _gnavIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var altura = MediaQuery.of(context).size.height;
    var largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
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
                            fontSize: 18,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color:
                                isSelected ? Colors.black : Color(0xFFBDBCC5),
                          ),
                        ),
                        if (isSelected)
                          Container(
                            height: 2,
                            width: largura * 0.1,
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
      bottomNavigationBar: Material(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            selectedIndex: _gnavIndex,
            onTabChange: _gnavTapped,
            tabActiveBorder: Border.all(color: Colors.black),
            padding: EdgeInsets.all(15),
            gap: 5,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search_outlined,
                text: 'Buscar',
              ),
              GButton(
                icon: Icons.playlist_play_outlined,
                text: 'Playlist',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Conta',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
