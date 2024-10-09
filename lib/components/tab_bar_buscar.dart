import 'package:flutter/material.dart';
import 'package:nusic/controller/tab_bar_controller.dart';
import 'package:nusic/shared/custom_color.dart';
import 'package:nusic/theme/custom_text_style_theme.dart';
import 'package:provider/provider.dart';

class TabBarBuscar extends StatelessWidget {
  const TabBarBuscar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Consumer<TabBarController>(
        builder: (context, controller, _) {
          return Column(
            children: [
              TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: CustomColor.bgPrimary,
                labelColor: CustomColor.textWhite,
                labelStyle: CustomTextStyleTheme.subtitle,
                
                onTap: controller.updateIndex,
                tabs: const [
                  Tab(text: 'Todas'),
                  Tab(text: 'Playlists'),
                  Tab(text: 'Álbuns'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('Todas as músicas', style: CustomTextStyleTheme.title,)),
                    Center(child: Text('Playlists', style: CustomTextStyleTheme.title,)),
                    Center(child: Text('Álbuns', style: CustomTextStyleTheme.title,)),
                  ],
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}