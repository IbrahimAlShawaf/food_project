import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_text.dart';

class ScreenWidget extends StatelessWidget {
  final int index;
  const ScreenWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(80),
              ),
            ),
            child: Image.asset(
              'assets/images/$index.png',
              width: 250,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text(titles[0]),
                      TextWidget(
                          text: titles[index],
                          color: AppColors.mainColor,
                          size: 24,
                          fontWeight: FontWeight.bold,
                          textalign: TextAlign.center),
                      Text(
                        about[index],
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
