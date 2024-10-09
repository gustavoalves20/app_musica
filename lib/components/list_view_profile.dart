import 'package:flutter/material.dart';
import 'package:nusic/models/listas/options_profile_list.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_style_theme.dart';

class ListViewProfile extends StatelessWidget {
  const ListViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(), 
      itemCount: OptionsProfileList.optionsProfile.length,
      itemBuilder: (context, index) {
        final items = OptionsProfileList.optionsProfile[index];
        return ListTile(
          onTap: () {},
          titleTextStyle: CustomTextStyleTheme.title,
          subtitleTextStyle: CustomTextStyleTheme.subtitle,
          iconColor: CustomColor.textWhite,
          leading: items.nomeIcon,
          title: Text(items.title),
          subtitle: Text(items.subTitle),
        );
      },
      separatorBuilder: (context, index) => Divider(height: 1, color: CustomColor.textGrey, thickness: 0.2, indent: 20, endIndent: 20),
    );
  }
}