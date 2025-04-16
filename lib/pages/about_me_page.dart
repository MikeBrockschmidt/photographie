import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        const CircleAvatar(
          radius: 100,
          backgroundImage:
              AssetImage('assets/images/photographie/me-at-goodwood.jpg'),
        ),
        const SizedBox(height: 16),
        const Text(
          "Mike Brockschmidt",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        const Text(
          "Kreativer Mensch",
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 24),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor "
              "invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam "
              "et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est "
              "Lorem ipsum dolor sit amet.\n\n"
              "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor "
              "invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam "
              "et justo duo dolores et ea rebum. Stet clita kasd gubergren.",
              style: TextStyle(fontSize: 16, height: 1.5),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}
