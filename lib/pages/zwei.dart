import 'package:flutter/material.dart';
import 'package:photographie/gallery_data.dart';

class ZweiPage extends StatefulWidget {
  const ZweiPage({super.key});

  @override
  State<ZweiPage> createState() => _ZweiPageState();
}

class _ZweiPageState extends State<ZweiPage> {
  late GalleryItem selectedItem;

  @override
  void initState() {
    super.initState();
    selectedItem = galleryData[0];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Hero(
              tag: selectedItem.imagePath,
              child: Image.asset(
                selectedItem.imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            selectedItem.imageTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            selectedItem.imageDate,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                itemCount: galleryData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                ),
                itemBuilder: (context, index) {
                  final item = galleryData[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedItem = item;
                      });
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        item.imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
