import 'package:flutter/material.dart';
import 'package:nusic/components/custom_app_bar.dart';
import 'package:nusic/components/tab_bar_buscar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Músicas',
        centerTitle: true,
      ),
      body: TabBarBuscar(),
    );
  }
}