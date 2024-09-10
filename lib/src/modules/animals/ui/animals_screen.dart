import 'package:flutter/material.dart';
import 'package:for_saknon/src/config/theme/app_colors.dart';
import 'package:for_saknon/src/modules/animals/models/animal.dart';
import 'package:for_saknon/src/modules/animals/ui/animal_tile.dart';

class AnimalsScreen extends StatelessWidget {
  const AnimalsScreen({super.key});

  static const String route = "/animals";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: AppColors.animals.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: Animal.animals.length,
          itemBuilder: (_, index) {
            final animal = Animal.animals[index];
            return AnimalTile(
              animal: animal,
            );
          },
        ),
      ),
    );
  }
}
