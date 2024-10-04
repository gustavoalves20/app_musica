import 'package:flutter/material.dart';
import 'package:nusic/models/categorias.dart';
import 'package:nusic/models/imagens.dart';
import 'package:nusic/theme/text_field_theme.dart';

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

  int navBarSelected = 0;

  void _onNavBarTap(int index) {
    setState(() {
      navBarSelected = index;
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
            child: TextField(
              cursorColor: Colors.black,
              decoration: TextFieldTheme.textFieldDecoration,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: navBarSelected,
          onTap: _onNavBarTap,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xFFBDBCC5),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(label: 'Início', icon: Icon(Icons.home_rounded)),
            BottomNavigationBarItem(label: 'Categorias', icon: Icon(Icons.tune_rounded)),
            BottomNavigationBarItem(label: 'Biblioteca', icon: Icon(Icons.library_music_rounded)),
            BottomNavigationBarItem(label: 'Conta', icon: Icon(Icons.account_circle_rounded)),
          ],
        ),
      ),
    );
  }
}
