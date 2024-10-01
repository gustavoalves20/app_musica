import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nusic/models/categorias.dart';
import 'package:nusic/models/imagens.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Imagens> imagensLista = [
    Imagens(nomeImagem: 'assets/godzilla.jfif', nome: 'Eminem'),
    Imagens(nomeImagem: 'assets/godzilla.jfif', nome: 'Eminem'),
    Imagens(nomeImagem: 'assets/godzilla.jfif', nome: 'Eminem'),
    Imagens(nomeImagem: 'assets/godzilla.jfif', nome: 'Eminem'),
    Imagens(nomeImagem: 'assets/godzilla.jfif', nome: 'Eminem'),
  ];

  List<Categorias> categorias = [
    Categorias(nome: 'Geral'),
    Categorias(nome: 'Músicas'),
    Categorias(nome: 'Álbuns'),
  ];

  int _selectedIndex = 0;
  int _gnavselected = 0;

  void _ongnavtapped(int index) {
    setState(() {
      _gnavselected = index;
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
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
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
      bottomNavigationBar: Material(
        elevation: 15,
        child: Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 2),
          child: GNav(
            gap: 5,
            color: Color(0xFFBDBCC5),
            tabActiveBorder: Border.all(color: Colors.black),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            padding: EdgeInsets.all(15),
            selectedIndex: _gnavselected,
            onTabChange: _ongnavtapped,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'Início',
              ),
              GButton(
                icon: Icons.search_outlined,
                text: 'Buscar',
              ),
              GButton(
                icon: Icons.playlist_play_outlined,
                text: 'Playlists',
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
