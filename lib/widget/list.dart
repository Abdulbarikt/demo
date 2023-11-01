
import 'package:flutter/material.dart';

class ListImageWidget extends StatelessWidget {
  const ListImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
                image: AssetImage("assets/bg.avif"),
                fit: BoxFit.cover)),
        width: 100,
        height: 100,
      ),
    );
  }
}
