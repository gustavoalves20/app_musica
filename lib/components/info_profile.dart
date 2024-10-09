import 'package:flutter/material.dart';

import '../theme/custom_text_style_theme.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/eu.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Gustavo Alves', style: CustomTextStyleTheme.title),
              Text('gustavoalves@gmail.com', style: CustomTextStyleTheme.subtitle),
            ],
          ),
        ],
      ),
    );
  }
}
