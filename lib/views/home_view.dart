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
    Categorias(nome: 'Categorias'),
    Categorias(nome: 'Álbuns'),
  ];

  int _gnavselected = 0;

  void _ongnavtapped(int index) {
    setState(() {
      _gnavselected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Olá, Gustavo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/eu.jpg'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.brightness_4_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: const Color(0xFFBDBCC5)),
                borderRadius: BorderRadius.circular(10),

              ),
              child: TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'Procurar',
                  prefixIcon: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.search_outlined)),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 2, bottom: 2),
          child: GNav(
            gap: 5,
            color: const Color(0xFFBDBCC5),
            tabActiveBorder: Border.all(color: Colors.black),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            padding: const EdgeInsets.all(15),
            selectedIndex: _gnavselected,
            onTabChange: _ongnavtapped,
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Início',
              ),
              GButton(
                icon: Icons.apps_rounded,
                text: 'Categorias',
              ),
              GButton(
                icon: Icons.library_music_rounded,
                text: 'Biblioteca',
              ),
              GButton(
                icon: Icons.account_circle_rounded,
                text: 'Perfil',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
