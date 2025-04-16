import 'package:flutter/material.dart';
import 'package:photographie/gallery_data.dart';

class DetailScreen extends StatefulWidget {
  final GalleryItem galleryItem;

  const DetailScreen({super.key, required this.galleryItem});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int? _maxLines = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 16,
            children: [
              Hero(
                tag: widget.galleryItem.imagePath,
                child: Image.asset(widget.galleryItem.imagePath),
              ),
              Text(
                widget.galleryItem.imageTitle,
                style: TextStyle(fontSize: 20),
              ),
              Text(widget.galleryItem.imageDate,
                  style: TextStyle(fontStyle: FontStyle.italic)),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.galleryItem.imageDescription,
                      maxLines: _maxLines,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (_maxLines == null) {
                          _maxLines = 3;
                        } else {
                          _maxLines = null;
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_downward),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
