import 'package:flutter/material.dart';
import 'package:nusic/models/musics.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Musics> infoMusicas = [
    Musics(imagemMusica: 'assets/eminem.png', nomeMusica: 'Mockingbird',nomeCantor: 'Eminem',duracaoMusica: const Duration(minutes: 4, seconds: 10)),
    Musics(imagemMusica: 'assets/eminem.png', nomeMusica: 'Godzilla', nomeCantor: 'Eminem', duracaoMusica: const Duration(minutes: 3, seconds: 30)),
    Musics(imagemMusica: 'assets/eminem.png', nomeMusica: 'Rap God', nomeCantor: 'Eminem', duracaoMusica: const Duration(minutes: 6, seconds: 30)),
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Músicas'),
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              cursorColor: const Color(0xFF757575),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Procurar música...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Color(0xFF1E90FF),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Rap', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                Text('Ver todos', style: TextStyle(color: Colors.grey[700]),)
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: infoMusicas.length,
              itemBuilder: (context, index) {
                final musicas = infoMusicas[index];
                return Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                  child: ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    leading: Image.asset(musicas.imagemMusica),
                    titleTextStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    title: Text(musicas.nomeMusica),
                    tileColor: Colors.grey.shade200,
                    subtitleTextStyle: TextStyle(color: Colors.grey[800]),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.person, size: 15),
                        Text(musicas.nomeCantor),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        const Icon(Icons.access_time, size: 15),
                        Text('${musicas.duracaoMusica.inMinutes}:30', style: TextStyle(color: Colors.grey[800]),),
                      ],
                    ),
                    trailing: const Icon(Icons.play_arrow),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_rounded),
            label: 'Playing',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_rounded),
            label: 'Playlists',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF1E90FF),
        unselectedItemColor: Colors.grey.shade600,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
