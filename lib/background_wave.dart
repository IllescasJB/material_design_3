import 'dart:ui';

import 'package:flutter/material.dart';

import 'background_wave_clipper.dart';

class BackgroundWave extends StatelessWidget {
  final double height;

  const BackgroundWave({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3.5,
            sigmaY: 3.5,
          ),
          child: ClipPath(
            clipper: BackgroundWaveClipper(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFFFACCCC).withOpacity(0.75),
                    const Color(0xFFF6EFE9).withOpacity(0.75),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
