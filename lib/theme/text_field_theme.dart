import 'package:flutter/material.dart';

class TextFieldTheme {
  static InputDecoration get textFieldDecoration {
    return InputDecoration(
      contentPadding: const EdgeInsets.all(10),
      hintText: 'Buscar músicas',
      prefixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search_outlined),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.black),
      ),
    );
  }
}
