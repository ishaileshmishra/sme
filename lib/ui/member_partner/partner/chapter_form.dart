import 'package:flutter/material.dart';

class ChapterFormPage extends StatefulWidget {
  @override
  _ChapterFormPageState createState() => _ChapterFormPageState();
}

class _ChapterFormPageState extends State<ChapterFormPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text('Download membership form'),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[

            TextField(
                textDirection: TextDirection.ltr,
                maxLines: 1, decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    )))




          ],
        ),
      ),
    );

  }
}
