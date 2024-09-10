import 'package:flutter/material.dart';
import 'package:for_saknon/src/config/theme/app_colors.dart';

class Tile extends StatelessWidget {
  final VoidCallback callback;
  final String labelEn;
  final String labelAr;
  final Color color;
  final String image;

  const Tile({
    super.key,
    required this.callback,
    required this.labelEn,
    required this.labelAr,
    required this.color,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: callback,
      child: Container(
        width: size.width,
        height: size.height * 0.25,
        color: Colors.transparent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.2,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: color.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8.0),
              ),
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    labelEn.toUpperCase(),
                    style: const TextStyle(
                      color: AppColors.text,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    labelAr.toUpperCase(),
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
              left: 12.0,
              width: size.width * 0.5,
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
