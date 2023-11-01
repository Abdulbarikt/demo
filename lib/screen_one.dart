import 'dart:ui';
import 'package:demo/widget/list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Apply the backdrop filter to the Container
          BackdropFilter(
            filter: ImageFilter.blur(
                sigmaX: 20, sigmaY: 40), // Adjust blur values as needed
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/bg.avif",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("data"),
              Center(
                child: Text(
                  "Bijgjm",
                  style: GoogleFonts.creepster(fontSize: 45),
                ),
              ),
              // Wrap the ListView.builder with a SizedBox to specify a height
              SizedBox(
                height: 100, // Set the desired height
                child: ListView.builder(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return ListImageWidget();
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
