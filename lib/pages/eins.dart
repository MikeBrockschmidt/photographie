import 'package:flutter/material.dart';
import 'package:photographie/gallery_data.dart';

class EinsPage extends StatefulWidget {
  const EinsPage({super.key});

  @override
  State<EinsPage> createState() => _EinsPageState();
}

class _EinsPageState extends State<EinsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: galleryData.length,
        itemBuilder: (context, index) {
          final item = galleryData[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: item.imagePath,
                child: Image.asset(
                  item.imagePath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                item.imageTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.imageDate,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}
