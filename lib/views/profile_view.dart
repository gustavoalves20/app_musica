import 'package:flutter/material.dart';
import 'package:nusic/components/info_profile.dart';
import 'package:nusic/components/list_view_profile.dart';
import '../components/custom_app_bar.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Conta',
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InfoProfile(),
          Expanded(child: ListViewProfile()),
        ],
      ),
    );
  }
}
