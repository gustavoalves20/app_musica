import 'package:flutter/material.dart';
import 'package:nusic/components/info_profile.dart';
import 'package:nusic/components/list_view_profile.dart';
import 'package:nusic/theme/custom_app_bar_theme.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarTheme.appBarDecoration(
        title: 'Perfil',
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoProfile(),
          Expanded(child: ListViewProfile()),
        ],
      ),
    );
  }
}
