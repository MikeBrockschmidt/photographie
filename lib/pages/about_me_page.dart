import 'dart:async';
import 'package:flutter/material.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  bool _showFirstImage = true;
  late Timer _timer;

  final String image1 = 'assets/images/photographie/me-at-goodwood.jpg';
  final String image2 = 'assets/images/photographie/me-768x768.jpg';

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _showFirstImage = !_showFirstImage;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        CircleAvatar(
          radius: 100,
          backgroundImage: AssetImage(_showFirstImage ? image1 : image2),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                InfoRow(label: "Name:", value: "Mike Brockschmidt"),
                InfoRow(label: "Wohnort:", value: "Osnabrück"),
                InfoRow(
                    label: "Über mich:",
                    value:
                        "visueller Mensch\nmit dem Auge für Atmosphäre\nund Situationen"),
                InfoRow(
                    label: "Ausbildung:",
                    value: "Studium Kommunikationsdesign"),
                Text(
                  "Veröffentlichung:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(
                    "– Kompilation (Nominiert für den Deutschen Fotobuchpreis)",
                    style: TextStyle(fontSize: 16)),
                Text("– Ladies of Goodwood", style: TextStyle(fontSize: 16)),
                Text("– 15 Jahreskalender", style: TextStyle(fontSize: 16)),
                SizedBox(height: 12),
                InfoRow(
                    label: "Familienstand:", value: "verheiratet\nzwei Kinder"),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: RichText(
        text: TextSpan(
          style:
              const TextStyle(fontSize: 16, height: 1.5, color: Colors.black),
          children: [
            TextSpan(
                text: "$label ",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: value),
          ],
        ),
      ),
    );
  }
}
