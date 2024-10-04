import 'package:flutter/material.dart';
import 'package:nusic/models/categorias.dart';
import 'package:nusic/models/imagens.dart';
import 'package:nusic/theme/my_app_bar_theme.dart';
import 'package:nusic/theme/my_text_field_theme.dart';

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
      appBar: MyAppBarTheme.appBarDecoration,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: TextField(
              cursorColor: Colors.black,
              decoration: MyTextFieldTheme.textFieldDecoration,
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
