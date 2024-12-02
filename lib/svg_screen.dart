import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgScreen extends StatelessWidget {
  const SvgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          "assets/svgs/taxi_svg.svg",
          width: 500,
          height: 500,
          // color: Colors.cyan,
          colorFilter: const ColorFilter.mode(
            Colors.green,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
