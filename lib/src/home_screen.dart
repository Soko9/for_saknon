import 'package:flutter/material.dart';
import 'package:for_saknon/src/config/theme/app_colors.dart';
import 'package:for_saknon/src/config/utils/app_assets.dart';
import 'package:for_saknon/src/modules/animals/ui/animals_screen.dart';
import 'package:for_saknon/src/tile.dart';

class HomeScreen extends StatelessWidget {

  static const String route = "/";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Tile(
              callback: () {
                Navigator.of(context).pushNamed(AnimalsScreen.route);
              },
              labelEn: "animals",
              labelAr: "حيوانات",
              color: AppColors.animals,
              image: AppAssets.animals,
            ),
          ],
        ),
      ),
    );
  }
}
