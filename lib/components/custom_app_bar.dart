import 'package:flutter/material.dart';
import 'package:nusic/shared/custom_color.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      backgroundColor: CustomColor.background,
      iconTheme: IconThemeData(color: CustomColor.textWhite),
      elevation: 0,
      leading: leading,
      actions: actions,
      title: Text(
        title,
        style: TextStyle(
          color: CustomColor.textWhite,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
