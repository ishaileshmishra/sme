import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sme/models/drawer_model.dart';

class GalleryPage extends StatefulWidget {
  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
            itemCount: wallItemsSea.length,
            physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.all(3),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                clipBehavior: Clip.hardEdge,
                child: Image.network(wallItemsSea[index].imglink, height: 200, width: 200, fit: BoxFit.cover,),
              );
            }),
      ),
    );
  }
}

