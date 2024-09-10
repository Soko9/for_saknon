import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:for_saknon/src/config/theme/app_colors.dart';
import 'package:for_saknon/src/modules/animals/models/animal.dart';

class AnimalTile extends StatelessWidget {
  final Animal animal;

  const AnimalTile({Key? key, 
    required this.animal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: InkWell(
        onTap: () {
          AssetsAudioPlayer.playAndForget(Audio(animal.voice));
        },
        child: Container(
          width: size.width,
          height: size.height * 0.2,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                width: size.width,
                height: size.height * 0.2,
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: animal.color,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      animal.nameEn.toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.text,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      animal.nameAr.toUpperCase(),
                      style: const TextStyle(
                        color: AppColors.text,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 8.0,
                width: size.width * 0.5,
                child: Image.asset(animal.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
