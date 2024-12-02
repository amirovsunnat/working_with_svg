import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:working_with_svg/svg_screen.dart';

enum BoxFit1 {
  fitWidth,
  fitHeight,
  cover,
  fill,
  contain,
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            // FadeInImage.assetNetwork(
            //     placeholder: "assets/images/placeholder_of_bird.jpg",
            //     image:
            //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDo890dsxpB5UCLQFdVBWmK4qVxTrsrLEEUg&s"),
            Container(
              width: double.infinity,
              height: 200,
              child: Image.network(
                  fit: BoxFit.fitHeight,
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDo890dsxpB5UCLQFdVBWmK4qVxTrsrLEEUg&s"),
            ),
            // Lottie.asset("assets/animations/animation.json"),
            const SizedBox(height: 50),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SvgScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.navigate_next,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
